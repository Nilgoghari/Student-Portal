# Student-Portal
Solidity based Student Portal for registration, grades, attendance and academic record status.
📄 Overview

A smart contract-based Student Portal system built in Solidity.
Supports student registration, grade tracking, attendance marking, and status updates.
Designed with modular inheritance: Person → Instructor → StudentPortal.



✨ Features

  ✅ Student registration with name, age, and wallet.

  🎓 Grade management (multiple grades per student).

  📅 Attendance tracking.

  🔁 Student status management (Active, Graduate, Dropped).

  📊 Average grade calculation.

  👤 Role-based access control using onlyOwner modifier.

  🧾 Event logging for major actions (registration, grade update, attendance, status).

  🧠 Fully on-chain data storage via mapping and dynamic arrays.

  🧬 Uses inheritance for clean contract design.



⚙ Solidity Concepts Demonstrated

 contract, constructor, modifier, struct, enum, mapping, array, event.

 🔐 onlyOwner modifier to restrict sensitive functions.

 🧬 Inheritance: Instructor inherits from Person, and StudentPortal from Instructor.

 💾 mapping(address => StudentData) — for decentralized student records.

 🪝 emit events to track blockchain activity.



🧱 Contract Structure

 Person
 └── Instructor (inherits Person)
       └── StudentPortal (inherits Instructor)

 Contract	Responsibility

 Person	Base identity contract (name, age, wallet)
 Instructor	Adds owner functionality + onlyOwner
 StudentPortal	Main logic: student registration, grades, attendance, status



 🧠 Key Design Decisions

 🔹Constructor Chaining – Each contract forwards arguments to its parent.

 🔹onlyOwner modifier – Centralized control for instructors/admin.

 🔹enum Status – Used for controlled student status states.

 🔹Events – Used for easy transaction tracking off-chain (like frontend or TheGraph).

 🔹Storage-efficient Structures – All student data grouped in StudentData struct.

 🔹Separation of Concerns – Identity in Person, Admin in Instructor, Logic in StudentPortal.



 📜 License

This project is licensed under the MIT License.



 🧪 How to Use

✅ Deploy StudentPortal contract with instructor's name and age

📝 Call registerStudent(_name, _age, _wallet) to register a student

➕ Use addGrade(_wallet, _grade) to add grades

📅 Use markAttendance(_wallet) to increase attendance

🔁 Update status using updateStatus(_wallet, Status.Graduate) etc.

📊 Get average grade using calculateAverage(_wallet)

👥 View total registered students using getTotalStudents()
