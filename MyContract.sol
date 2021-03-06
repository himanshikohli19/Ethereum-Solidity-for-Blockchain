//This program shows various datatypes used in Solidity
//Shows the struct - a reusable structure defined
//and the types of variables - state and local variables

pragma solidity ^0.6.0;

contract MyContract{
    //state variable
    uint public myUint =1; // unsigned integer datatype
    int public myInt = -20; // integer datatype
    string public MyString = "Hey There!!!"; //string datatype
    
   //structure creation 
    struct MyStructure {
        uint8 rollNo;
        string Name;
    }
    //structure implementation
    MyStructure public StructObj1 = MyStructure(123, "Himanshi Kohli");
    
    function getValue() public pure returns(uint) {
        //local variable
        uint value=100;
        uint divisor=3;
        return value%divisor;
    }
}                                               