pragma solidity >= 0.7.0 < 0.9.0;


contract mappingSample{
    
    mapping (address => uint) public myMap;
    
    function setMap(address _add , uint _id) public{
        myMap[_add] = _id;
    }
    
    function getMap(address _add) public view returns(uint){
        return myMap[_add];
    }
    
    function deleteMap(address _dd) public{
        delete myMap[_dd];
    }
    
    
}