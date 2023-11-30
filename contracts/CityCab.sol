// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.4.0 < 0.9.0;

contract CityCab {
    uint public ride_counter = 0; //add one ride every time new ride is created
    uint public payRideAmount; // amount payed by clinet to taxi driver
	address public client;  // address of the client that will make the payments
    

    struct Ride{
       uint ride_ID;
       string passenger;
       uint256 fare;
       bool accept_ride;
    }

    
}
