pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Fatocoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Fatocoin(address _owner)  UpgradeableToken(_owner) {
    name = "Fatocoin";
    symbol = "FAT";
    totalSupply = 40000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}