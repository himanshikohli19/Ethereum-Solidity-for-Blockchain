//This program shows Loops(For loop) and Conditionals

pragma solidity ^0.6.0;

contract MyContract4 {
    
    uint[] public numbers=[1,2,3,4,5,6,7,8,12,15,167];
    
    address public owner;
    
    constructor() public {
        owner=msg.sender;
    }
    
    function CountEvenNum() public view returns(uint) {
        uint count=0;
        for(uint i=0; i<numbers.length; i++) //loop
        {
            if (isEvenNumber(numbers[i])) {
                count++;
            }
        }
        return count;
    }
    
    //Conditions - control flow
    function isEvenNumber (uint _number) public view returns(bool) 
    {	//conditional
        if(_number % 2 ==0) {
            return true;
        } else {
            return false;
        }
    
    }
    
    function isOwner() public view returns(bool) {
        return(msg.sender == owner);
    }

}