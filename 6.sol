// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FixedArraySum {
    uint256[5] public numbers;

    // Inicializimi i vlerave përmes konstruktorit
    constructor(uint256[5] memory _numbers) {
        numbers = _numbers;
    }

    // Funksion që kthen shumën e elementeve të vargut
    function shuma() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
}