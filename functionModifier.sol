pragma solidity >= 0.7.0 < 0.9.0 ;


contract Owner{
    
    address owner ;
    
    constructor () public{
        owner = msg.sender;
    }
    
    modifier onlyOwner  {
        
        require(msg.sender == owner);
       _;
    }
}

contract functionModifier is Owner{
    
    mapping(address => bool) registrationAddress;
    
    uint price;
    
    constructor(uint initializePrice ) public {
        price = initializePrice;
    }
    
    function resiger() public payable {
        registrationAddress[msg.sender] = true;
    }
    
    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
    
    
}