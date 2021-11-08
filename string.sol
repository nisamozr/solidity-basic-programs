pragma solidity >= 0.7.0 < 0.9.0;

contract lengtStr {
    
    string hello = "helloman";
    
    function getstring() public view returns(string memory){
        return hello
        ;
    }
    
    
    function chang(string memory x) public  returns(string memory){
         hello = x;
    }
    
    function charget() public view returns(uint){
        bytes memory length = bytes(hello);
        return length.length;
    }
    
}