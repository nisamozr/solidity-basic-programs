pragma solidity >= 0.7.0 < 0.9.0;


contract mappingSample{
    
     mapping(address => mapping(uint => Movie)) public movie;
   
    struct Movie{
        string title;
        string director;
    }
    
   
    
    function setMovie(uint id, string memory title, string memory director) public{
        movie[msg.sender][id] = Movie(title, director);
    }
    // msg.sender is globle veriable accedibile throughout solidity which capture the address of the sender
    

    
}