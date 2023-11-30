// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.4.0 < 0.9.0;

contract Storage {

    uint256 number; // variable to store the number

    // store value in varible
    function store(uint256 num) public {
        number = num;
    }

    // return the value
    function retrieve() public view returns (uint256){
        return number;
    }
}