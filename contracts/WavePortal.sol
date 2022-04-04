// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) whoWaved;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves++;
        console.log("%s just waved at you.", msg.sender);
        keepTrackOfWhoWaved();
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("Total waves: %d", totalWaves);
        return totalWaves;
    }

    function keepTrackOfWhoWaved() public {
        whoWaved[msg.sender] += 1;
        if (whoWaved[msg.sender] > 1) {
            console.log(
                "%s has waved at you %d times so far!",
                msg.sender,
                whoWaved[msg.sender]
            );
        }
    }
}
