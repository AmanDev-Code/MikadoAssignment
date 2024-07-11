<?php
include 'config.php';

$limit = 12; // Number of entries to show in a page.
// Look for a GET variable page if not found default is 1.
$page = isset($_GET["page"]) ? $_GET["page"] : 1;
$start_from = ($page-1) * $limit;

$query = "SELECT * FROM products WHERE 1";

// Filter by price
if (isset($_GET['price_min']) && $_GET['price_min'] !== '') {
    $price_min = $_GET['price_min'];
    $query .= " AND price >= $price_min";
}

if (isset($_GET['price_max']) && $_GET['price_max'] !== '') {
    $price_max = $_GET['price_max'];
    $query .= " AND price <= $price_max";
}

// Filter by category
if (isset($_GET['category']) && $_GET['category'] !== '') {
    $category = $_GET['category'];
    $query .= " AND category = '$category'";
}

// Filter by sale status
if (isset($_GET['sale_status']) && $_GET['sale_status'] !== '') {
    $sale_status = $_GET['sale_status'];
    $query .= " AND sale_status = '$sale_status'";
}

// Pagination
$query .= " LIMIT $start_from, $limit";

$result = $conn->query($query);

$products = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $products[] = $row;
    }
}

$response = [
    'products' => $products,
    'total_pages' => ceil($conn->query("SELECT COUNT(id) FROM products")->fetch_row()[0] / $limit)
];

echo json_encode($response);
?>
