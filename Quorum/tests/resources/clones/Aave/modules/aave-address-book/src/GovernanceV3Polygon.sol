// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0;

// AUTOGENERATED - MANUALLY CHANGES WILL BE REVERTED BY THE GENERATOR
import {IGovernanceCore, IPayloadsControllerCore, IDataWarehouse, IVotingStrategy} from './GovernanceV3.sol';
library GovernanceV3Polygon {
  // https://polygonscan.com/address/0xF6B99959F0b5e79E1CC7062E12aF632CEb18eF0d
  address internal constant CROSS_CHAIN_CONTROLLER = 0xF6B99959F0b5e79E1CC7062E12aF632CEb18eF0d;

  // https://polygonscan.com/address/0xDAFA1989A504c48Ee20a582f2891eeB25E2fA23F
  address internal constant CL_EMERGENCY_ORACLE = 0xDAFA1989A504c48Ee20a582f2891eeB25E2fA23F;

  // https://polygonscan.com/address/0xc8a2ADC4261c6b669CdFf69E717E77C9cFeB420d
  address internal constant VOTING_MACHINE = 0xc8a2ADC4261c6b669CdFf69E717E77C9cFeB420d;

  // https://polygonscan.com/address/0x401B5D0294E23637c18fcc38b1Bca814CDa2637C
  IPayloadsControllerCore internal constant PAYLOADS_CONTROLLER =
    IPayloadsControllerCore(0x401B5D0294E23637c18fcc38b1Bca814CDa2637C);

  // https://polygonscan.com/address/0xE3B770Dc4ae3f8bECaB3Ed12dE692c741603e16A
  address internal constant PC_DATA_HELPER = 0xE3B770Dc4ae3f8bECaB3Ed12dE692c741603e16A;

  // https://polygonscan.com/address/0x77976B51569896523EE215962Ee91ff236Fa50E8
  address internal constant VM_DATA_HELPER = 0x77976B51569896523EE215962Ee91ff236Fa50E8;

  // https://polygonscan.com/address/0x0D2CccD3dD420dC6DE2f24DB44aA22fADE290a02
  address internal constant GRANULAR_GUARDIAN = 0x0D2CccD3dD420dC6DE2f24DB44aA22fADE290a02;

  // https://polygonscan.com/address/0x1A0581dd5C7C3DA4Ba1CDa7e0BcA7286afc4973b
  address internal constant GOVERNANCE_GUARDIAN = 0x1A0581dd5C7C3DA4Ba1CDa7e0BcA7286afc4973b;

  // https://polygonscan.com/address/0xDf7d0e6454DB638881302729F5ba99936EaAB233
  address internal constant EXECUTOR_LVL_1 = 0xDf7d0e6454DB638881302729F5ba99936EaAB233;

  // https://polygonscan.com/address/0x59e6CAD5d7E7b9A26a45a1d1E74C7aF008170042
  IVotingStrategy internal constant VOTING_STRATEGY =
    IVotingStrategy(0x59e6CAD5d7E7b9A26a45a1d1E74C7aF008170042);

  // https://polygonscan.com/address/0xf41193E25408F652AF878c47E4401A01B5E4B682
  IDataWarehouse internal constant DATA_WAREHOUSE =
    IDataWarehouse(0xf41193E25408F652AF878c47E4401A01B5E4B682);
}
