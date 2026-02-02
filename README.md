# PPOAPPOINTMENT UiTM

A web-based system for managing UiTM’s **Program Professional Offered (PPO)** placements. Built using the **CakePHP** framework and powered by **Re-CRUD 2.X**, this platform streamlines application workflows, user management, audit tracking, and more—tailored for academic and administrative excellence.

![Logo](https://github.com/Asyraf-wa/recrud/blob/2.x/webroot/img/ss/reCRUD_Logo.jpg)

---

## ✨ Overview

This system is designed to support UiTM’s PPO placement lifecycle, allowing administrators and students to manage applications, track statuses, and generate official documentation. It integrates core CRUD operations with advanced features like search, reporting, audit trail, and site configuration.

---

## 🚀 Author

- [@Asyraf Wahi Anuar](https://github.com/Asyraf-wa)

---

## 📦 Framework & Plugins

- [CakePHP](https://cakephp.org)  
- [Bootstrap](https://getbootstrap.com)  
- [jQuery](https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js)  
- [Search Plugin](https://github.com/FriendsOfCake/search)  
- [Tools Plugin](https://github.com/dereuromark/cakephp-tools)  
- [Upload Plugin](https://github.com/FriendsOfCake/cakephp-upload)  
- [CakePDF Plugin](https://github.com/FriendsOfCake/CakePdf)  
- [CSVview Plugin](https://github.com/FriendsOfCake/cakephp-csvview)  
- [Authentication Plugin](https://github.com/cakephp/authentication)

---

## 🔧 Features

- ✅ CRUD with Sneat Bootstrap 5 template  
- ✅ User management & profile  
- ✅ Search & filter  
- ✅ QR code sharing  
- ✅ Audit trail  
- ✅ FAQ & Contact Us  
- ✅ To Do task manager  
- ✅ Site configuration  
- ✅ Notification bar & promotion ribbon  
- 🌓 Light/dark mode toggle  

---

## 📸 Screenshots

 <img width="2443" height="1145" alt="image" src="https://github.com/user-attachments/assets/6ea88d74-9ff9-44dc-8fc8-74f2734d23e5" />
 <img width="2547" height="1138" alt="image" src="https://github.com/user-attachments/assets/dcc09580-310f-4b66-b674-0f688bd70e22" />
<img width="2495" height="1191" alt="image" src="https://github.com/user-attachments/assets/63895554-1528-47a3-b375-23c4bb5baccc" />



---

## 🗄️ Database Setup (Assignment Version)

This system uses **MySQL**. For assignment purposes, simply import the provided SQL file.

### 📥 Import Instructions
1. Open **phpMyAdmin** via XAMPP/WAMP/MAMP.
2. Create a new database named: ppoappointment
3. Go to the **Import** tab.  
4. Select the file:database/ppoappointment.sql
5. Click **Go** to import all tables and data.

---

### 🔐 Default Login
admin login : admin@localhost.com password :123456


**existing user login :**
1. aini@gmail.com password :abcd1234
2. zharif@gmail.com password : abcd1234
3. aisyah@gmail.com passwword :abcd1234
4. iskandar@gmail.com password :abcd1234

---

### 📊 Database Structure

The `ppoappointment` database contains 15 tables:

| Table Name       | Description                                                  |
|------------------|--------------------------------------------------------------|
| `applications`   | PPO placement applications                                   |
| `appointments`   | Appointment slots (e.g. semester periods)                    |
| `audit_logs`     | User activity logs                                           |
| `branches`       | UiTM branch/campus details                                   |
| `contacts`       | Contact Us form submissions                                  |
| `faculties`      | UiTM faculties list                                          |
| `faqs`           | Frequently Asked Questions                                   |
| `menus`          | *(Coming soon)* Sidebar/menu management                      |
| `phinxlog`       | CakePHP migration tracking                                   |
| `programs`       | Academic programs list                                       |
| `settings`       | System configuration values                                  |
| `todos`          | Task management                                              |
| `users`          | User accounts (admin, student)                               |
| `user_groups`    | User roles and permissions                                   |
| `user_logs`      | Login history and access records                             |

---

## 🛠 Installation

Clone the repo:

```bash
git clone https://github.com/syadhira/PPOUITM1.git
Install dependencies:
**composer update**
'Datasources' => [
    'default' => [
        'host' => 'localhost',
        'username' => 'root',
        'password' => '',
        'database' => 'ppoappointment',
    ],
]

🧰 Requirements
PHP 8+

MySQL 8+

intl extension

SQL Mode: sql-mode = "" (edit my.ini)

🧑‍🤝‍🧑 Contributing
Contributions are welcome!
See contributing.md and follow the code of conduct.

📜 License
MIT License
