
# Movie20 - Spring Boot Maven Project

## Project Overview
Movie20 is a Spring Boot RESTful web application developed using Maven. The project allows users to manage movie details through CRUD operations. It follows a layered architecture consisting of Controller, Service, Repository, and Model layers.

The application exposes REST APIs to add, retrieve, update, and delete movie records from the database.

---

## Technologies Used

- Java 17
- Spring Boot
- Spring Data JPA
- Maven
- REST API
- SQL Database
- Eclipse IDE

---

## Project Architecture

The project follows a layered architecture:

Controller → Handles HTTP requests  
Service → Contains business logic  
Repository → Handles database operations using JPA  
Model → Represents the Movie entity  

---

## Project Structure

```

Movie20
│
├── src/main/java/com/example/Movie20
│   ├── Movie20Application.java
│
├── controller
│   └── MovieController.java
│
├── service
│   └── MovieService.java
│
├── repository
│   └── MovieRepository.java
│
├── model
│   └── Movie20.java
│
├── src/main/resources
│   └── application.properties

```

---

## Features

- Add new movie
- View all movies
- Get movie by ID
- Update movie details
- Delete movie

---

## API Endpoints

| Method | Endpoint | Description |
|------|------|------|
| POST | /movie/add | Add new movie |
| GET | /movie | Get all movies |
| GET | /movie/{id} | Get movie by ID |
| PUT | /movie/{id} | Update movie |
| DELETE | /movie/{id} | Delete movie |

---

## How to Run the Project

1. Install Java 17
2. Install Maven
3. Import the project into Eclipse or IntelliJ
4. Configure the database in `application.properties`
5. Run `Movie20Application.java`
6. Test APIs using Postman or browser

---

## Author

Shirisha Vangala
```

---
