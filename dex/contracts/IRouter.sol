// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface IRouter {
    /**
     * @dev Certain routers/exchanges needs to be initialized.
     * This method will be called from Hector
     */
    function initialize(bytes calldata data) external;

    /**
     * @dev Returns unique identifier for the router
     */
    function getKey() external pure returns (bytes32);

    event SwappedV3(
        bytes16 uuid,
        address partner,
        uint256 feePercent,
        address initiator,
        address indexed beneficiary,
        address indexed srcToken,
        address indexed destToken,
        uint256 srcAmount,
        uint256 receivedAmount,
        uint256 expectedAmount
    );

    event BoughtV3(
        bytes16 uuid,
        address partner,
        uint256 feePercent,
        address initiator,
        address indexed beneficiary,
        address indexed srcToken,
        address indexed destToken,
        uint256 srcAmount,
        uint256 receivedAmount,
        uint256 expectedAmount
    );
}