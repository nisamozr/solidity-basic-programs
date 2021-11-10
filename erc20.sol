pragma solidity >= 0.7.0 < 0.9.0;

contract coin{

    address public minter;
    mapping (address => uint) public balances;
    
    event Sent(address from, address to, uint amount );
    
    constructor() {
        minter = msg.sender;
    }
    
    function mint(address reciever, uint amount) public{
        require(msg.sender == minter);
        balances[reciever] += amount;
         
    }
    
    error inseficiantbalance(uint requesed , uint available);
    function sent(address reciever, uint amount)public{
        if(amount > balances[msg.sender])
        revert inseficiantbalance({requesed: amount    , available: balances[msg.sender]});
        balances[msg.sender] -= amount;
        balances[reciever] += amount;
        emit Sent(msg.sender, reciever, amount);
    }
    
    
    
}