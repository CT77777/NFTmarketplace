// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ILiquidityVault {
  function swap(
    IERC20 _tokenIn,
    uint256 _amountTokenIn,
    IERC20 _tokenOut
  ) external returns (uint256 amountTokenOut);

  function addLiquidity(uint256 _amountTokenA) external;

  function removeLiquidity(uint256 _amountLPT) external;

  function getTotalSupply() external returns (uint256);
}
