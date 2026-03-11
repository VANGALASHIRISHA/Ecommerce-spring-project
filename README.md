
# 🛒 Ecommerce Product Management System

## 📌 Project Overview

The **Ecommerce Product Management System** is a Spring Boot Maven-based web application designed to manage product information in an e-commerce environment. The system allows users to perform CRUD operations such as adding, viewing, updating, and deleting product records.

The project follows a **layered architecture** consisting of Controller, Service, Repository, and Model layers. Spring Data JPA is used to handle database operations efficiently.

This application demonstrates the implementation of **RESTful APIs, database integration, and backend development using Spring Boot**.

---

# 🚀 Features

* Add new products
* View all products
* Get product by ID
* Update product details
* Delete product records
* RESTful API implementation
* Database integration using Spring Data JPA
* Maven-based project structure

---

# 🛠 Technologies Used

### Backend

* Java 17
* Spring Boot
* Spring Data JPA
* Maven

### Database

* SQL / Oracle / MySQL

### Tools

* Eclipse IDE
* Postman (API Testing)

---

# 📁 Project Structure

```
EcommerceProduct
│
├── src/main/java/com/example/EcommerceProduct
│   │
│   ├── EcommerceProductApplication.java
│   │
│   ├── controller
│   │   └── ProductController.java
│   │
│   ├── service
│   │   └── ProductService.java
│   │
│   ├── repository
│   │   └── ProductRepository.java
│   │
│   └── entity
│       └── Product.java
│
├── src/main/resources
│   ├── static
│   ├── templates
│   └── application.properties
│
└── pom.xml
```

---

# ⚙️ Application Architecture

```
Client Request
      ↓
Controller Layer
      ↓
Service Layer
      ↓
Repository Layer
      ↓
Database
```

---

# 🔗 API Endpoints

| Method | Endpoint            | Description       |
| ------ | ------------------- | ----------------- |
| POST   | /product/addProduct | Add a new product |
| GET    | /product/products   | Get all products  |
| GET    | /product/{id}       | Get product by ID |
| PUT    | /product/{id}       | Update product    |
| DELETE | /product/{id}       | Delete product    |

---

# ▶️ How to Run the Project

### Step 1: Install Requirements

* Java JDK 17
* Maven
* Database (Oracle / MySQL)
* Eclipse IDE

---

### Step 2: Clone Repository

```
git clone https://github.com/your-username/EcommerceProduct.git
```

---

### Step 3: Configure Database

Update database configuration in:

```
application.properties
```

Example:

```
spring.datasource.url=jdbc:oracle:thin:@localhost:1521:xe
spring.datasource.username=system
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
```

---

### Step 4: Run Application

Run the main class:

```
EcommerceProductApplication.java
```

---

### Step 5: Test API

Open browser or Postman:

```
http://localhost:8080/product/products
```

---

# 💡 Learning Outcomes

* Implemented REST APIs using Spring Boot
* Practiced layered architecture
* Integrated database using Spring Data JPA
* Built a Maven-based backend application
* Performed CRUD operations in a real-world scenario

---

# 👩‍💻 Author

**Shirisha Vangala**

