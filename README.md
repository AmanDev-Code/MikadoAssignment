# Mikado Solutions Web Application

## Description
This web application is designed to showcase products with filtering capabilities and pagination. It includes a backend for fetching products based on filters and a frontend interface for users to browse and interact with products.

## Prerequisites
- WAMP server installed and running.
- Web browser (Chrome, Firefox, etc.).

## Installation

### Setting up WAMP Server
1. **Download WAMP**: Download and install WAMP from [WAMP Server](http://www.wampserver.com/en/).
2. **Start WAMP Server**: Launch WAMP server from your desktop or start menu.

### Importing Database
1. **Access phpMyAdmin**:
   - Open your web browser and go to `http://localhost/phpmyadmin`.

2. **Login to phpMyAdmin**:
   - Use the default credentials (username: `root`, password: ` `).

3. **Import Database**:
   - Create a new database (`project_db`).
   - Select the database, navigate to "Import", choose `db.sql`, and click "Go".

### Running the Application
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/amandev-code/MikadoAssignment.git
   ```

2. **Move Files**:
   - Place the project folder in `C:\wamp64\www\`.

3. **Start WAMP**:
   - Ensure WAMP server is running.
   
4. **Access the Application**:
   - Open your web browser and go to `http://localhost/your-project-folder`.

## Usage
- **Filters**: Use the sidebar to filter products by price range, category, and sale status.
- **Pagination**: Navigate through pages to view more products.
- **Product Display**: Click on products to view detailed information and interact with the add-to-cart feature.

## Technologies Used
- HTML, CSS, JavaScript
- PHP
- MySQL

## Hosting on AWS

### Hosting Your Application
1. **Create an AWS Account**: Sign up or log in to [AWS Management Console](https://aws.amazon.com/).
2. **Launch an EC2 Instance**:
   - Navigate to EC2 Dashboard and launch a new instance.
   - Choose an Amazon Machine Image (AMI) like Windows Server.
   - Configure instance details and create a key pair.
3. **Configure Server**:
   - Connect to your instance using Remote Desktop.
   - Install WAMP server and configure it just like your local setup.
   - Upload your project files to the server’s `www` directory.
4. **Set Up MySQL**:
   - Create a MySQL database on your AWS instance.
   - Import `db.sql` into the MySQL database.
5. **Access Your Application**:
   - Use the public IP or DNS provided by AWS to access your application from anywhere.

### Benefits of Hosting on AWS
- Your application will be available throughout the internet.
- Easy to share with others and scale as needed.

## Credits
- Developed by Aman ahuja
- Contact: sde.amanahuja@gmail.com

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.