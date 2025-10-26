// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Identity {
    string Project;
    string Description;
    int startdate;

    constructor() {
        Project = "Stablecoin-on-Core";
        Description = unicode"Stablecoin on Core is a decentralized digital currency built on the Core Blockchain, designed to maintain a stable value pegged to fiat. It uses smart contracts, collateral reserves, and oracles to ensure transparency, stability, and secure on-chain transactions.";
        startdate = 23102006;
    }
    
    function showProject() public view returns (string memory) {
        return Project;
    }
    
    function showDescription() public view returns (string memory) {
        return Description; 
    }
    function showstartDate() public view returns (int memory) {
        return startdate; 
    }
}
