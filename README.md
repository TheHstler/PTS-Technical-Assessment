# StudentManagementApp

## Overview

StudentManagementApp is a ASP.NET Core MVC web application. It demonstrates basic user authentication and student management functionality.

---

## Features

### Authentication (Login System)

- Simple login form using MVC.
- Hardcoded credentials (`admin` / `password123`) for demonstration.
- Error message on invalid login.
- Welcome page after login.
- Logout button that clears login session and redirects to login.

### Student Management (View Only)

- View a list of students.
- Student fields displayed: Name, Email, Course, Enrolment Date.
- Dummy student data seeded into an in-memory database.
- Responsive and clean UI using Bootstrap 5.

---

## Technologies Used

- ASP.NET Core MVC
- Entity Framework Core (In-Memory Database)
- Bootstrap 5 (via CDN)
- C#

---

## Getting Started

### Prerequisites

- [.NET 6 SDK or later](https://dotnet.microsoft.com/download)
- Visual Studio, VS Code, or any C# IDE/editor

### Installation & Run

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/StudentManagementApp.git
   cd StudentManagementApp
