pragma solidity >=0.6.0 <0.9.0;

contract ETX {
    constructor() public payable {
        bool result;
        assembly {
            result := etx(
                0,                                          // temp variable, can be anything (unused)
                0x5A457339697CB56E5a9BfA5267eA80d2c6375d98, // address to send to
                500000000000000000,                         // amount to send in wei
                100000,                                     // gas limit (entire gas limit will be consumed and sent to destination)
                1,                                          // miner tip in wei
                1,                                          // base fee in wei
                0,                                          // input offset in memory
                0,                                          // input size in memory
                0,                                          // accesslist offset in memory
                0                                           // accesslist size in memory
            )
        }
    }
}
