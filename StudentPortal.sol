// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;
// Our Basic contract is Person
contract Person {


    string public name;
    uint256 public age;
    address public wallet;
    
     constructor(string memory _name, uint256 _age){
        ( name= _name ,
        wallet= msg.sender,
        age= _age );
    }
    }





/// this is instructor contract which inherits from Person
contract Instructor is Person {
    address public owner;

    modifier onlyOwner(){
        require(msg.sender== owner, "only owner can do this");

    _;
    }
    constructor(string memory _name, uint256 _age)
   Person ( _name , _age )
    {
        owner= msg.sender;
    }
}


// @title Student Portal- Academic record system using address based student mapping
/// this is our main contract

contract StudentPortal is Instructor {
    //Enum for student status
enum Status {Active, Graduate, Dropped}
/// This is our Structure to store StudentData
struct StudentData {
    string name;
    uint256 age;
    address wallet;
    uint256[] grade;
    uint256 attendance;
    Status status;
     bool isRegistered;
}
        

 // Mapping to store student details using address as key
    mapping(address => StudentData) public students;

    address[] public studentList;

    constructor (string memory _name, uint256 _age)
   Instructor ( _name , _age) {

   }
    

  ///Events///
    event StudentRegistered(address indexed wallet, string name, uint256 age);
    event GradeAdded(address indexed student, uint256 grade);
    event AttendanceMarked(address indexed student);
    event StatusUpdated(address indexed wallet, Status newStatus);

    function registerStudent(string memory _name, uint256 _age, address _wallet ) public onlyOwner {
        require(!students[_wallet].isRegistered, "student is already registered");
         students[_wallet] = StudentData({
            name: _name,
            age: _age,
            wallet: _wallet,
            attendance: 0,
            grade: new uint256[](0),
            status: Status.Active,
            isRegistered: true
         });
    studentList.push(_wallet);
        emit StudentRegistered(_wallet, _name, _age);
    }


    
function addGrade(address _wallet, uint256 _grade) public onlyOwner {
    require(students[_wallet].isRegistered, "student is not registered");

    students[_wallet].grade.push(_grade);
    emit GradeAdded(_wallet, _grade);
}
