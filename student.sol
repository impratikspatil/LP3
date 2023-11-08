// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    struct Student {
        uint256 id;
        string name;
        uint256 age;
    }

    Student[] public students;

    function addStudent(uint256 _id, string memory _name, uint256 _age) public {
        students.push(Student(_id, _name, _age));
    }

    function getStudent(uint256 index) public view returns (uint256, string memory, uint256) {
        require(index < students.length, "Index out of bounds");
        Student memory student = students[index];
        return (student.id, student.name, student.age);
    }

    // Fallback function to receive Ether
    receive() external payable {
        // Handle Ether received (if needed)
    }
}