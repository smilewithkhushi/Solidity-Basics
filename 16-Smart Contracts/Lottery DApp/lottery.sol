// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Lottery {
    address public manager;
    address payable[] public participants;

    constructr() {
        //saves the address as manager address on compilation
        manager = msg.sender;
    }

    receive() external payable {
        //it ensures that only 2 ether is deposited by the participant
        require(msg.value == 2 ether);
        participants.push(payable(msg.sender));
    }

    //calculates the total balance
    function getBalance() public view returns (uint256) {
        //it ensures that the balance can only be viewed by the manager
        require(msg.sender == manager);
        return address(this).balance;
    }

    //selecting participant on random basis for winning lottery
    function random() public view returns (uint256) {
        //the length of the participant array is transfered to keccak256 is algorithm
        //the random number generated her ei svery huge
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        participants.length
                    )
                )
            );
    }

    function selectWinner() public {
        require(msg.sender == manager);
        require(participants.length >= 3); //random number is generated only when 3 participants are there in lottery
        uint256 r = random();
        uint256 index = r % participants.length; //the resultant output is less than participant length always

        address payable winner;
        winner = participants[index];

        winner.transfer(getBalance()); //the lottery money gets transferred to the winner's address

        participants = new address payable[](0); //resets the size of participants array to zero
    }
}
