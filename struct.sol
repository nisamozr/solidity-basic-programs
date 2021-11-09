pragma solidity >= 0.7.0 < 0.9.0;


contract structSample{
    
    struct Movie {
        string tittle;
        string director;
        uint movieId;
        
    }
    Movie movie;
    
    
    function setMovie() public{
        movie = Movie('one',"arjun",110);
    }
    
    function getMovie() public view returns(uint){
        return  movie.movieId;
    }
}