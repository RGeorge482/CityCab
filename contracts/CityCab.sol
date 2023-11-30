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

    mapping(uint => Ride) public rides;  //uint is the reference and now I am able to create rides
    mapping(address => uint) balance; // get the balance of each address 

    // we run the constructor during the deployments 
    constructor() public {
        client = msg.sender; // the address of the client
    }

    // create aride using passenger name and time
    function create_ride(string memory passenger, uint time) public {
        ride_counter++;
        rides[ride_counter] = Ride(ride_counter, passenger, time, false);//reference to rides
    }

}
