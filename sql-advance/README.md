# 🚀 Advanced SQL Concepts Practice

This repository contains **structured and well-documented examples** of advanced SQL concepts implemented using **MySQL**.

The purpose of this project is to demonstrate practical understanding of:

- **Common Table Expressions (CTEs)**
- **Temporary Tables**
- **Stored Procedures**
- **Triggers**
- **Events (Event Scheduler)**

Each concept is implemented with **clear comments** and structured formatting to ensure readability and maintainability.

---

# 📚 Concepts Covered

## 1️⃣ Common Table Expressions (CTE)

- Uses the `WITH` clause  
- Improves readability of complex queries  
- Helps break down logic into steps  
- Demonstrates filtering employees above department average  

---

## 2️⃣ Temporary Tables

- Created using `CREATE TEMPORARY TABLE`  
- Exist only during the session  
- Useful for intermediate data storage  
- Example includes storing high-salary employees temporarily  

---

## 3️⃣ Stored Procedures

- Reusable SQL blocks  
- Accept input parameters  
- Improve modularity and performance  
- Example includes retrieving employees by department  

---

## 4️⃣ Triggers

- Automatically execute on table events  
- Demonstrates `AFTER INSERT` trigger  
- Logs employee insert operations into a log table  

---

## 5️⃣ Events

- Automated scheduled database tasks  
- Uses MySQL Event Scheduler  
- Example deletes low-salary records daily  

---

# 🛠 Technologies Used

- **MySQL**
- **SQL (Structured Query Language)**

---

# ▶️ How to Run

1. Open **MySQL Workbench** or your preferred MySQL client.  
2. Create the required base tables (example: `employee_salary`).  
3. Execute each `.sql` file individually.  
4. Test stored procedures, triggers, and events using sample insert statements.  

---

# 🎯 Learning Objectives

By completing this project, you will understand:

- The difference between **CTEs and subqueries**  
- When to use **temporary tables**  
- How **stored procedures** improve reusability  
- How **triggers** automate table-based logic  
- How **events** enable scheduled database operations  

---

# 👨‍💻 Author

**Nishant**
