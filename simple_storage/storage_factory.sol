// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./simple_storage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public {
        simpleStorageArray.push(new SimpleStorage());
    }

    function SFstore(uint _simpleStorageIndex, uint _SFNumber) public {
        simpleStorageArray[_simpleStorageIndex].store(_SFNumber);
    }

    function SFretrieve(uint _simpleStorageIndex) public view returns(uint) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }

}