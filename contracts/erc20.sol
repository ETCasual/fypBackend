// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @custom:security-contact TP049495@mail.apu.edu.my
contract FYPToken is ERC20 {
    uint256 constant _initial_supply = 100 * (10**18);

    constructor() ERC20("FYPToken", "FYPT") {
        _mint(msg.sender, _initial_supply);
    }

    function sendBal(address payable receiver, uint256 amount)
        external
        payable
    {
        receiver.transfer(amount * 1000000 + msg.value);
    }
}
