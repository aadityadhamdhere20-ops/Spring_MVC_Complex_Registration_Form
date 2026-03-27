📌 Spring MVC Complex Registration Form

A Spring MVC-based web application that implements a complex user registration form with validation, data binding, and proper MVC architecture

📖 Description

This project is a Complex Registration Form Web Application developed using Spring MVC, JSP, and Maven. It demonstrates how a real Java web application works using MVC architecture, form validation, and exception handling.

The application allows users to fill out a detailed registration form with multiple input types and ensures data validation and error handling.

🧱 Architecture (MVC + Layered)

This project follows a Layered MVC Architecture:

Controller Layer
Handles HTTP requests
Processes user input
DAO Layer
Handles data operations
Acts as a bridge between controller and database
Entity Layer
Contains POJO classes
Used for data binding
View Layer (JSP)
Displays UI
Shows validation messages
🔄 Flow:
User → Controller → DAO → Entity → View (JSP)

⚠️ Exception Handling
Form validation using Spring MVC
Error messages displayed on JSP pages
Try-catch blocks for safe execution
Prevents application crashes
(Optional) Global exception handling using @ControllerAdvice

🚀 Features
📝 Complex registration form
🔘 Multiple input fields (radio, checkbox, dropdown)
✅ Server-side validation
⚠️ Error handling with messages
🔗 Data binding using Spring MVC
🧩 Clean layered architecture

🛠️ Technologies Used
Java
Spring MVC
JSP (Java Server Pages)
HTML, CSS
Maven
Apache Tomcat
Spring Tool Suite / Eclipse IDE

📂 Project Structure
src/main/java
 ├── com.mvc.controller   → Controller Layer
 ├── com.mvc.dao          → DAO Layer
 ├── com.mvc.entity       → Entity/Model Layer

src/main/resources        → Configuration files

src/main/webapp
 ├── WEB-INF
 │    ├── pages
 │    │     ├── home.jsp
 │    │     ├── register.jsp
 │    │     ├── list.jsp
 │    ├── spring-servlet.xml
 │    ├── web.xml

src/test/java             → Test classes

▶️ How to Run
Clone the repository
Import into Spring Tool Suite or Eclipse IDE
Configure Apache Tomcat server
Run project on server

Open browser:

http://localhost:8080/

## 📸 Screenshots

### 🏠 Home Page
![Home](screenshots/Screenshot 2026-03-19 154644.png)

### 📝 Registration Form
![Form](screenshots/Screenshot 2026-03-19 154810.png)

### 📋 Output Page
![List](screenshots/Screenshot 2026-03-19 154828.png)
