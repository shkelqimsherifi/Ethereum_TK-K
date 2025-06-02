// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmriIm {
    string public emri;

    // Konstruktor që ruan emrin tuaj
    constructor(string memory _emri) {
        emri = _emri;
    }

    // Funksion për të përditësuar emrin
    function updateEmri(string memory _emriRi) public {
        emri = _emriRi;
    }
}