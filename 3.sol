// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    uint256 private ID;
    string public emri;
    string public mbiemri;
    string public drejtimi;

    constructor(
        uint256 _id,
        string memory _emri,
        string memory _mbiemri,
        string memory _drejtimi
    ) {
        ID = _id;
        emri = _emri;
        mbiemri = _mbiemri;
        drejtimi = _drejtimi;
    }

/*
    constructor(
        uint256 _id
    ) {
        ID = _id;
    }
    */

    // Funksion për të marrë ID-në private
    function getId() public view returns (uint256) {
        return ID;
    }
}