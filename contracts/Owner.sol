// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.4.0 < 0.9.0;

contract Owner {

    address private owner;

    // event for EVM logging
    event OwnerSet(address indexed oldOwner, address indexed newOwner);

    // check if caller is owner
    modifier isOwner() {
        require(msg.sender == owner, "Caller is not owner");
        _;
    }
  
    //Set contract deployer as owner
    constructor() public {
        owner = msg.sender; // 'msg.sender' is sender of current call, contract deployer for a constructor
        emit OwnerSet(address(0), owner);
    }
     
    //newOwner address of new owner
    function changeOwner(address newOwner) public isOwner {
        emit OwnerSet(owner, newOwner);
        owner = newOwner;
    }
 
    // address of owner
    function getOwner() external view returns (address) {
        return owner;
    }
} 