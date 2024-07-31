# Gotham Treats Inventory Management System

Welcome to the Gotham Treats Inventory Management System! This Java-based application manages the inventory for Gotham Treats using a digitized system with a MySQL database.

## Introduction
Gotham Treats Inventory Management System is designed to manage the inventory of a bakery. The system includes functionalities to create, read, update, and delete (CRUD) data regarding materials, orders, products, production steps, purchase orders, and users.

## Features
- Digitized inventory management
- CRUD operations on various tables
- MVC architecture
- User login verification
- Real-time data retrieval and display
- Enhanced GUI components

## Technologies Used
- **Java**: Core programming language (JDK 18)
- **RSCalendar.jar**: Open-source library for improved GUI components
- **mysql-connector-j-8.0.31.jar**: Library for MySQL database connectivity
- **MySQL**: Database management via XAMPP phpMyAdmin

## Installation
To set up the project locally, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/gotham-treats-inventory.git
    cd gotham-treats-inventory
    ```

2. **Set up the database**:
    - Import the `gothamtreats.sql` file into your MySQL database using phpMyAdmin or MySQL Workbench.

3. **Compile and run the project**:
    - Make sure you have JDK 18 installed.
    - Place `RSCalendar.jar` and `mysql-connector-j-8.0.31.jar` in the `lib` directory.
    - Compile the project:
        ```bash
        javac -cp ".:lib/RSCalendar.jar:lib/mysql-connector-j-8.0.31.jar" src/*.java -d out
        ```
    - Run the project:
        ```bash
        java -cp ".:lib/RSCalendar.jar:lib/mysql-connector-j-8.0.31.jar:out" Main
        ```

## Usage
Once the application is running, you can perform the following actions:

- **Login**: Use your credentials to access the system. If verified, you will be redirected to the main dashboard.
- **Manage Users**: Perform CRUD operations on user information.
- **Manage Orders**: View and manage orders and their details.
- **Manage Products**: View and update product information.
- **Manage Inventory**: Track and update material stock and production steps.

## Database Structure
The application interacts with the following tables in the MySQL database:

- `material`: Stores material good information.
- `orderdetail`: Stores order details for each order.
- `orders`: Stores orders from the point-of-sale.
- `product`: Stores product information.
- `productionstep`: Stores the 8 steps in the production flow.
- `purchaseorder`: Stores purchase orders.
- `purchaseorderdetails`: Stores details for each purchase order.
- `purchaserequest`: Stores purchase requests.
- `userdb`: Stores user information.
- `vendor`: Stores vendor information.
