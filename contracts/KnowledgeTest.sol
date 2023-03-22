//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract KnowledgeTest {
    address public owner;
    string[] public tokens = ["BTC", "ETH"];
    address[] public players;

    constructor() payable {
        owner = msg.sender;
    }
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    function changeTokens() public {
        tokens[0] = "VET";
    }
    function transferAll(address payable _address) public {
        require(msg.sender == owner,"ONLY_OWNER");
        _address.transfer(address(this).balance);

    }
    function concatenate(string memory _string1, string memory _string2) public pure returns(string memory) {
       return string(abi.encodePacked(_string1,_string2));
    }
    function start() public{
        players.push(msg.sender);

    }
    receive() external payable{

    }
}
