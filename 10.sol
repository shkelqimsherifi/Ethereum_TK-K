// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeChecker {
    uint256 private number;

    constructor(uint256 _number) {
        number = _number;
    }

    // Funksion që kontrollon nëse numri është i thjeshtë dhe kthen mesazh
    function checkPrime() public view returns (string memory) {
        if (number < 2) {
            return "Numri nuk eshte i thjeshte";
        }
        for (uint256 i = 2; i * i <= number; i++) {
            if (number % i == 0) {
                return "Numri nuk eshte i thjeshte";
            }
        }
        return "Numri eshte i thjeshte";
    }
}