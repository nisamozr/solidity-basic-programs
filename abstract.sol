pragma solidity 0.8.7;

abstract contract calculator{
    
    function calcu() public view virtual returns(uint);
}

contract test is calculator{
    uint a =4;
    uint b= 6;
    function calcu() public override view returns(uint){
        return a+b;
    }
}