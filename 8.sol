// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructDemo {
    struct Student {
        uint id;
        string emri;
    }

    Student public studenti; // Ruhet në storage

    constructor(uint _id, string memory _emri) {
        studenti = Student(_id, _emri);
    }

    // Kthen një strukturë në memorie (memory)
    function getStudentMemory() public view returns (Student memory) {
        return Student(studenti.id, studenti.emri);
    }

    // Ndryshon gjendjen përmes referencës storage
    function updateStudent(string memory _emriRi) public {
        Student storage s = studenti; // Referencë storage
        s.emri = _emriRi; // Ndryshon gjendjen e kontratës
    }
}