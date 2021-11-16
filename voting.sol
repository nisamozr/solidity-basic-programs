pragma solidity 0.8.7;

contract election{
    address owner;
    
    constructor(){
        owner = msg.sender;
    }
    
    struct Candidats{
        uint id;
        string name;
        uint vote;
    }
    
    mapping(address => bool) public votes;
    mapping (uint => Candidats) public candidats;
    uint candedatsCount;
    
    modifier onlyOwner(){
        require(msg.sender == owner,"Only Owner can add candidate ");
        _;
    }
    
    function addcadidet(string memory _name) public onlyOwner {
        candedatsCount++;
        candidats[candedatsCount]= Candidats(candedatsCount, _name,0);
    }
    
    function vote(uint candidatsId) public {
        require(candidatsId > 0 && candidatsId <= candedatsCount);
        require(!votes[msg.sender]);
         votes[msg.sender] = true;
        candidats[candidatsId].vote++;
    }   
}