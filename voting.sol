pragma solidity 0.8.7;

contract election{
    
    struct Candidats{
        uint id;
        string name;
        uint vote;
    }
    
    mapping(address => bool) public votes;
    mapping (uint => Candidats) public candidats;
    uint candedatsCount;
    

    
    function addcadidet(string memory _name) public {
        candedatsCount++;
        candidats[candedatsCount]= Candidats(candedatsCount, _name,0);
    }
    
    function vote(uint candidatsId) public {
        require(!votes[msg.sender]);
       votes[msg.sender] = true;
        candidats[candidatsId].vote++;
    }
      
}