// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvenOddChecker {
    // Kontrollon nëse numri është çift
    function isEven(uint256 number) public pure returns (bool) {
        return number % 2 == 0;
    }

    // Kontrollon nëse numri është tek
    function isOdd(uint256 number) public pure returns (bool) {
        return number % 2 == 1;
    }
}
