pragma solidity >= 0.7.0 < 0.9.0;


contract mappingSample{
    
     mapping(uint => Movie) public movie;
   
    struct Movie{
        string title;
        string director;
    }
    
   
    
    function setMovie(uint id, string memory title, string memory director) public{
        movie[id] = Movie(title, director);
    }
    

    
}