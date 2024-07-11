document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('filter-form');
    const productsContainer = document.getElementById('products-container');
    const paginationContainer = document.getElementById('pagination');

    form.addEventListener('submit', function (e) {
        e.preventDefault();
        fetchProducts();
    });

    function updateSlider(sliderId, displayId) {
        var slider = document.getElementById(sliderId);
        var display = document.getElementById(displayId);
        display.value = slider.value;
        slider.style.setProperty('--fill-percent', `${(slider.value - slider.min) / (slider.max - slider.min) * 100}%`);
        fetchProducts();
    }

    function fetchProducts(page = 1) {
        const formData = new FormData(form);
        formData.append('page', page);

        const params = new URLSearchParams(formData);

        fetch(`../backend/get_products.php?${params.toString()}`)
            .then(response => response.json())
            .then(data => {
                displayProducts(data.products);
                displayPagination(data.total_pages, page);
            });
    }

    function displayProducts(products) {
        productsContainer.innerHTML = '';
        if (products.length > 0) {
            const productsGrid = document.createElement('div');
            productsGrid.className = 'products-grid';

            products.forEach(product => {
                const productCard = document.createElement('div');
                productCard.className = 'product-card';
                if (product.stock_status === 'out of stock' && product.sale_status === 'not on sale') {
                    productCard.classList.add('disabled');
                }

                productCard.innerHTML = `
                    <img src="${product.image_link}" alt="${
          product.product_name
        }">
                    <h2>${product.product_name}</h2>
                    <p>${product.description}</p>
                    <p>₹ ${product.price}</p>
                    <p>${
                      product.stock_status === "in stock"
                        ? `<span class="add-to-cart">Add to Cart <i class="fas fa-plus"></i></span>`
                        : `<span class="add-to-cart disabled">Out of Stock</span>`
                    }</p>
                `;

                // Add event listener to Add to Cart button
                const addToCartBtn = productCard.querySelector('.add-to-cart');
                if (addToCartBtn) {
                    addToCartBtn.addEventListener('click', function () {
                        addToCart(product.product_name); // Call function to add to cart
                    });
                }

                productsGrid.appendChild(productCard);
            });

            productsContainer.appendChild(productsGrid);

            // Append pagination after products
            productsContainer.appendChild(paginationContainer);
        } else {
            productsContainer.innerHTML = 'No products found.';
        }
    }

    function displayPagination(totalPages, currentPage) {
        paginationContainer.innerHTML = '';
        if (totalPages > 1) {
            for (let i = 1; i <= totalPages; i++) {
                const pageLink = document.createElement('a');
                pageLink.href = '#';
                pageLink.innerText = i;
                if (i === currentPage) {
                    pageLink.classList.add('active');
                }

                pageLink.addEventListener('click', function (e) {
                    e.preventDefault();
                    fetchProducts(i);
                });

                paginationContainer.appendChild(pageLink);
            }
        }
    }

    // Function to add item to cart and display toast notification
    function addToCart(productName) {
        // Replace with your actual cart logic or API call
        showToast(`${productName} added to cart.`);
    }

    // Function to display toast notification
    function showToast(message) {
        const toast = document.createElement('div');
        toast.className = 'toast';
        toast.textContent = message;
        document.body.appendChild(toast);

        setTimeout(() => {
            toast.remove();
        }, 3000); // Remove toast after 3 seconds
    }

    // Set initial slider values and update immediately
    updateSlider('price_min', 'price_min_display');
    updateSlider('price_max', 'price_max_display');

    // Listen for input events on sliders
    document.getElementById('price_min').addEventListener('input', function () {
        updateSlider('price_min', 'price_min_display');
    });

    document.getElementById('price_max').addEventListener('input', function () {
        updateSlider('price_max', 'price_max_display');
    });

    // Initial fetch
    fetchProducts();
});
