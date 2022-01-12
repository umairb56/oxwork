// SPDX-License-Identifier: GPL-3.0

/// @title Interface for OxWorksToken



pragma solidity ^0.8.6;

import { IERC721 } from '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import { IOxWorksDescriptor } from './IOxWorksDescriptor.sol';
import { IOxWorksSeeder } from './IOxWorksSeeder.sol';

interface IOxWorksToken is IERC721 {
    event WorkCreated(uint256 indexed tokenId, IOxWorksSeeder.Seed seed);

    event WorkBurned(uint256 indexed tokenId);

    event WorkersDAOUpdated(address workersDAO);

    event MinterUpdated(address minter);

    event MinterLocked();

    event DescriptorUpdated(IOxWorksDescriptor descriptor);

    event DescriptorLocked();

    event SeederUpdated(IOxWorksSeeder seeder);

    event SeederLocked();

    function mint() external returns (uint256);

    function burn(uint256 tokenId) external;

    function dataURI(uint256 tokenId) external returns (string memory);

    function setWorkersDAO(address workersDAO) external;

    function setMinter(address minter) external;

    function lockMinter() external;

    function setDescriptor(IOxWorksDescriptor descriptor) external;

    function lockDescriptor() external;

    function setSeeder(IOxWorksSeeder seeder) external;

    function lockSeeder() external;
}
