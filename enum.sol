pragma solidity >= 0.7.0 < 0.9.0;

contract enumsample {
    
    enum shirt{large, medium, small}
    shirt choice;
    shirt constant defaultChoice = shirt.small;
    
    
    function setsmall() public{
        choice = shirt.medium;
    }
    
    function getchoice() public view returns(shirt){
        return choice;
    }
    
    function getDefaultChoice() public view returns(uint){
        return uint (defaultChoice);
    }
    
}