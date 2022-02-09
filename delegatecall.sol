pragma solidity ^0.8.7;

contract testDelegatecall{

    uint public num;
    address public sender;
    uint public value;

    function setvalur(uint _num) public payable{
        num = 3*_num;
        sender = msg.sender;
        value = msg.value;
    
    }
}

contract Delegatecall{
    uint public num;
    address public sender;
    uint public value;

    function setvalur(address test, uint _num) public payable {
       (bool sucess, bytes memory data ) =  test.delegatecall(abi.encodeWithSelector(testDelegatecall.setvalur.selector, _num));
        require(sucess, "delegatecale failed" );
    }
}
