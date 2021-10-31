pragma solidity ^0.6.0;

//Solidity: MAPPING AND NESTED MAPPING
//MAPPING: stores key and value. mapping(key => value)

contract myContract3 {
    
    //mapping
    // mapping for names
    mapping(uint => string) public names;
    //mapping for books
    mapping(uint => Book) public books;
    //nested mapping
    mapping(address => mapping(uint => Book)) public myBooks;
    
    
    //constructor
    constructor() public {
        names[1]="Himanshi";
        names[2]="Habiba";
        names[3]="Harshita";
    }
    
    //structure
    struct Book {
        string title;
        string author;
    }
    
    function addBook (uint _id, string memory _title, string memory _author) public {
        books[_id]=Book(_title,_author); //input goes like: 2, The ring of fire, APJ Abdul Kalam
    }
    
    function addMyBook (uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id]=Book(_title,_author); //takes  blockchain address, id
    }
}