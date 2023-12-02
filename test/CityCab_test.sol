// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.4.0 < 0.9.0;

import "../contracts/CityCab.sol";

// test our smart contract

contract CityCabTest {
    struct clientRide{
        uint cliend_id;
        string passenger;
    }

    uint public ride_counter; // create ride counter

    mapping(uint => clientRide) public rides; // map through rides made by clients
    

    // check is id are maching and we have the correct passenger
    function checkPassenger(uint rideId, string memory correctPassenger) public view returns (bool){
       require(rideId <= ride_counter && rideId > 0, "Client ID not found" );
       return keccak256(abi.encodePacked(rides[rideId].passenger)) ==  keccak256(abi.encodePacked(correctPassenger));
    }
  
}
