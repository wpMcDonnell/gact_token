// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Gact is ERC20 {
    address public minter;
    constructor() public payable ERC20('Gaius Coleman Token', 'GACT') {
        _mint(msg.sender, 10000000000000 * 10 ** 18);
        minter = msg.sender;
    }

    function mint(address _account, uint _amount) public {

        require(msg.sender == minter, 'Nice try. You are not the minter. That is called counterfit, baby!');

        _mint(_account, _amount);
    }
}
