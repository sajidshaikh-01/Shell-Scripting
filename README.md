#  Shell Scripting — Complete Learning Notes & Mini Projects

This repository contains my **Shell Scripting learning journey** — from fundamentals to real-world automation projects.  
All topics are summarized clearly, and example scripts for each topic and project are stored in this repo.

---

## 📘 Overview

Shell scripting is one of the core skills in **Linux and DevOps**.  
It enables automation of system administration, monitoring, deployments, and repetitive command-line tasks.

---

##  Topics Covered

### 1️⃣ Variables
Store and reuse data values during script execution using `$VAR` or `${VAR}` syntax.

### 2️⃣ User Interaction
Accept input dynamically from users using the `read` command or command-line arguments.

### 3️⃣ Arguments
Pass data to scripts at runtime using positional parameters like `$1`, `$2`, `$@`, `$#`.

### 4️⃣ Conditions
Control flow using `if`, `elif`, and `else` for decision making.

### 5️⃣ Logical Operators
Combine multiple conditions using:
- `&&` → Logical AND  
- `||` → Logical OR  
- `!`  → Logical NOT

### 6️⃣ Case Statement
Used for menu-based scripting and structured decision logic.

### 7️⃣ Loops
Automate repetitive tasks using:
- `for` loops  
- `while` loops  
- `until` loops  

### 8️⃣ Functions
Reusable code blocks to make scripts modular and readable.

### 9️⃣ Arithmetic Operations
Perform calculations using `$(( ))`, `expr`, or `let`.

### 🔟 Arrays
Store multiple values in a single variable for flexible data manipulation.

### 11️⃣ String Operations
Compare, extract, or modify strings using built-in operators and parameter expansion.

### 12️⃣ Redirections
Control input/output flows:
- `>` → overwrite output  
- `>>` → append output  
- `<` → read from file  
- `2>` → redirect errors  

### 13️⃣ Cron Jobs & Scheduling
Automate scripts execution using:
- `cron` → recurring jobs  
- `at` → one-time scheduled jobs  

### 14️⃣ Best Practices
- Always use `#!/bin/bash` as shebang  
- Comment clearly and validate inputs  
- Check for permissions and errors  
- Use functions for reusability  
- Follow consistent naming and indentation  

---

## 💻 Mini Projects

Here are the **Shell Script automation projects** I’ve built for better understanding:

| # | Project Name | Description |
|---|---------------|-------------|
| 1 | **user-make** | Automates user creation and assigns home directories with permissions. |
| 2 | **system-health** | Displays system uptime, load average, CPU, memory, and disk stats. |
| 3 | **monitoring-free-ram-space** | Checks system’s available RAM and sends alerts if below threshold. |
| 4 | **monitoring-free-disk-space** | Monitors disk usage percentage and warns when it exceeds limit. |
| 5 | **connectivity-test** | Tests connectivity to multiple servers or services using `ping`. |
| 6 | **digital-watch** | Displays a live digital clock using shell looping and date command. |
| 7 | **archive-older-logs** | Archives and compresses logs older than a specified number of days. |

---

##  Author

**Sajid Shaikh**  
💻 DevOps & Cloud Engineer 
📍 India  

---

> “Automation is the first step toward efficiency — Shell scripting makes it possible.”
