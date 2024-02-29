// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleStorage {
    uint favoriteNumber;

    struct People {
        uint age;
        string name;
    }

    mapping(string => uint) public NameToAge; 

    People[] public person;

    function store(uint _num) public {
        favoriteNumber = _num;
    }

    function retrieve() public view returns (uint) {
        return favoriteNumber;
    }
    // memory and calldata是函数参数的修饰符，它们的区别：
    // 二者都是临时存储，但是calldata是不可修改的，memory是可以修改的
    // 通常适用的数据类型是 struct, array, string
    function addPerson(uint _age, string memory _name) public {
        // 2种方式都可以
        // person.push(People({age: _age, name: _name}));
        person.push(People(_age, _name));
        NameToAge[_name] = _age;
    }
}

