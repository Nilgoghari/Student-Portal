---

🎓 Student Portal – Solidity Smart Contract

A decentralized student management system built in Solidity for handling registration, grades, attendance, and academic status — all stored securely on-chain.


---

📖 Overview

The Student Portal smart contract enables instructors/admins to manage student data in a transparent and decentralized way.

🔹 Student registration with name, age, and wallet

🔹 Grade management with multiple entries per student

🔹 Attendance tracking

🔹 Academic status updates (Active, Graduate, Dropped)

🔹 Average grade calculation

🔹 Role-based control via onlyOwner


The contract is built with modular inheritance:
Person → Instructor → StudentPortal


---

✨ Features

✅ Student registration (name, age, wallet)

🎓 Grade management (add/view multiple grades per student)

📅 Attendance tracking

🔁 Academic status updates (Active, Graduate, Dropped)

📊 Average grade calculation

👤 Role-based access (only instructor/owner can modify)

🧾 Event logging for key actions

🧠 Fully on-chain storage with mappings & arrays

🧬 Inheritance for clean modular design



---

⚙ Solidity Concepts Demonstrated

📦 contract, constructor, modifier, struct, enum, mapping, array, event

🔐 onlyOwner modifier for secure role-based functions

🧬 Inheritance:

Instructor inherits from Person

StudentPortal inherits from Instructor


💾 mapping(address => StudentData) for decentralized student records

🪝 emit events for off-chain tracking (frontend / TheGraph)



---

🧱 Contract Structure

Person
 └──
 Instructor (inherits Person)
       └──
       StudentPortal (inherits
       Instructor)

Contract	Responsibility

Person	Base identity contract (name, age, wallet)
Instructor	Adds admin ownership + onlyOwner modifier
StudentPortal	Core logic: student registration, grades, attendance, status



---

🧠 Key Design Decisions

🔹 Constructor Chaining – Arguments passed through inheritance hierarchy

🔹 onlyOwner Modifier – Centralized control for instructors/admin

🔹 enum Status – Clear, controlled student states

🔹 Events – For transparent transaction tracking

🔹 Storage-efficient Structs – Grouped student data in StudentData

🔹 Separation of Concerns – Identity (Person), Admin (Instructor), Logic (StudentPortal)



---

🧪 How to Use

1. ✅ Deploy StudentPortal contract with instructor’s name & age


2. 📝 Register Student → registerStudent(_name, _age, _wallet)


3. ➕ Add Grade → addGrade(_wallet, _grade)


4. 📅 Mark Attendance → markAttendance(_wallet)


5. 🔁 Update Status → updateStatus(_wallet, Status.Graduate)


6. 📊 Calculate Average → calculateAverage(_wallet)


7. 👥 View Total Students → getTotalStudents()




---

📜 License

This project is licensed under the MIT License.


---
