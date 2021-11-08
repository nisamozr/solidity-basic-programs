pragma solidity >= 0.7.0 < 0.9.0;

contract one{
    string name ;
    uint age;
    constructor (string memory names, uint aage) public{
        name = names;
        age = aage;
        
    }
}


contract two is one ('ramec', 33) 
{
    // constructor(string memory n, uint m) one(n , m) public{
        
    // }
    
    function getone() public view returns(string memory){
        return name;
        
    }
    
}