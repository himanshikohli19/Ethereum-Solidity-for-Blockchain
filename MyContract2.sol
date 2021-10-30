//Solidity Array
//Array stores similar type of data in an indexed and ordered fashion.
//This program below shows 1D and 2D aarays with pushing elements in the array.

pragma solidity ^0.6.0;

contract MyContract2
{
    uint[] public MyUintArray = [1,34,56];
    string[] public stringArray = ["A", "B","C","D"];
    uint[][] public Array2d = [[1,2,3],[4,5,6],[7,8,9]];
    string[] public values;
    
    function addValue(string memory _value) public {
        values.push(_value);
    } 
    
    function valueCount() public view returns(uint) {
        return values.length;
    }
}