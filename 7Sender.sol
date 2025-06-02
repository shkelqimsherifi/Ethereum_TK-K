// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Kontrata që dërgon gjithmonë 1 ether te kontrata tjetër
contract Sender {
    function sendViaTransfer(address payable _to) public {
        _to.transfer(1);
    }

    function sendViaCall(address payable _to) public {
        (bool sent, ) = _to.call{value: 1}("");
        require(sent, "Failed to send Ether");
    }

    // Duhet të ketë një funksion receive për të pranuar ETH në këtë kontratë
    receive() external payable {}
}