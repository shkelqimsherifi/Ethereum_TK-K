// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MinMaxArray {
    uint256[] public numbers;

    // Inicializimi i vargut përmes konstruktorit
    constructor(uint256[] memory _numbers) {
        numbers = _numbers;
    }

    // Kthen vlerën maksimale
    function max() public view returns (uint256) {
        require(numbers.length > 0, "Vargu eshte bosh");
        uint256 maxValue = numbers[0];
        for (uint256 i = 1; i < numbers.length; i++) {
            if (numbers[i] > maxValue) {
                maxValue = numbers[i];
            }
        }
        return maxValue;
    }

    // Kthen vlerën minimale
    function min() public view returns (uint256) {
        require(numbers.length > 0, "Vargu eshte bosh");
        uint256 minValue = numbers[0];
        for (uint256 i = 1; i < numbers.length; i++) {
            if (numbers[i] < minValue) {
                minValue = numbers[i];
            }
        }
        return minValue;
    }
}