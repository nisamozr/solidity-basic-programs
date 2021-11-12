pragma solidity >= 0.7.0 < 0.9.0;


contract Defi{
    
    uint stacking =11;
    
    //function to give airdop those who stack thire coin
    function airDrop() public view returns(uint){
        
        if(stacking == 10){
            return stacking + 10;
        }
        else {
            return stacking + 1;
        }
        
    }
}