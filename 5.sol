// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    uint256 public x;
    uint256 public y;

    constructor(uint256 _x, uint256 _y) {
        x = _x;
        y = _y;
    }

    function shuma() public view returns (uint256) {
        return x + y;
    }

    function shumezimi() public view returns (uint256) {
        return x * y;
    }

    function pjesetimi() public view returns (uint256) {
        require(y != 0, "Nuk lejohet pjesetimi me zero");
        return x / y;
    }
}