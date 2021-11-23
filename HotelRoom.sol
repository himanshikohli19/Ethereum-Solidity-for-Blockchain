pragma solidity ^0.6.0;
contract HotelRoom1 {
//Project - Hotel Room Booking    
//THINGS TO LEARN FROM THIS CODE CRYPTOCURRENCY PAYMENTS:- 
 //Ether - Payment in smart contracts
 //Modifiers
 //require() - ensure the conditions before the code gets executed
 //Visibility Modes 
 //Events 
 //Enums - Enumerations
 
 enum Statuses {Vaccant, Occupied}
 Statuses currentStatus;
 address payable public owner; 
 //owner will be the one who dynamically deploys the smart contact 
 //payable - cause owner can accept the payments in ethers
 event Occupy (address _occupant, uint _value);
  
 constructor() public{
     owner=msg.sender;
     //msg.sender - user that calls the smart contract is the owner
     currentStatus = Statuses.Vaccant;
 }
 
 modifier onlyWhileVacant {
     require(currentStatus==Statuses.Vaccant, "Currently Occupied!!");
     _;
    //require checks the condition-if true then proceed with the code flow
    //else- display the error message and halt the flow the code. 
 }
 
 modifier costs(uint _amount) {
     require(msg.value >= _amount, "Not enough Ether Provided!!");
     _;
 }
 
 receive() external payable onlyWhileVacant costs(2 ether) {
    //enternal - called as a smart contract function outside 
    //check price and status
    currentStatus=Statuses.Occupied;
    owner.transfer(msg.value);
    //msg.value - for getting the ethers value from the sender account to owner
    emit Occupy(msg.sender, msg.value);
    //to emit the event(Occupy) created above - address and amount(ether paid)
 }
 
}