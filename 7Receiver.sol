// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Kontrata që pranon ETH me receive() dhe fallback()
contract Receiver {
    event Received(address sender, uint amount, string message);

    // Pranon ETH kur dërgohet pa të dhëna
    receive() external payable {
        emit Received(msg.sender, msg.value, "Received via receive()");
    }

    // Pranon ETH kur dërgohet me të dhëna ose me funksion të panjohur
    fallback() external payable {
        emit Received(msg.sender, msg.value, "Received via fallback()");
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

