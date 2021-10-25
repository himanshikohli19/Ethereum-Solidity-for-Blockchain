//my first solidity code
//This program increments the count by 1
//first contract name: Counter

pragma solidity ^0.6.0;

contract Counter {
    uint count;
    
    constructor() public{
        count=0;
    }
    
    function getCount() public view returns(uint){
        return count;
    }
    
    function incrementCount() public {
        count=count+1;
   }
}

//Counter contract improved

pragma solidity ^0.6.0;

contract Counter {
    uint public count=1;
    
    function incrementCount() public {
        count++;
   }
}
