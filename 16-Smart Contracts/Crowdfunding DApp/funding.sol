// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract funding {
    mapping(address => uint256) public contributors;
    //mapping of the contributor's address with their contribution/donation

    address public manager; //from crowdfunding platform
    uint256 public minimumContribution; //margin of min funding
    uint256 public target; //target funding
    uint256 public deadline; //deadline of fund raising
    uint256 public raisedAmount; //the funding raised
    uint256 public noOfContributors;
    //total people who funded

    struct Request {
        string description;
        address payable recipient;
        uint256 value;
        bool completed;
        uint256 noOfVoters;
        mapping(address => bool) voters;
    }
    //the request for refund to the donators

    mapping(uint256 => Request) public requests;
    uint256 public numRequests;

    constructor(uint256 _target, uint256 _deadline) {
        target = _target;
        deadline = block.timestamp + _deadline;
        minimumContribution = 1 wei; //donations set to eth
        manager = msg.sender; //the address on deployment
    }

    //sending funding from contributor
    function sendEth() public payable {
        //the deadline should not be passed for this function to be executed
        require(block.timestamp < deadline);
        require(
            msg.value >= minimumContribution,
            "Minimum Contribution is not met here"
        );

        if (contributors[msg.sender] == 0) {
            noOfContributors++;
            //default value in map before contribution is zero
            //this keeps the track of number of contributors
        }
        contributors[msg.sender] += msg.value;
        raisedAmount += msg.value;
        //updated the raised funding amount and mapps the contributor with its address and amount
    }

    //returns the overall contract balance
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    //function for refund
    function refund() public {
        require(
            block.timestamp > deadline && raisedAmount < target,
            "You are not eligible"
        );
        require(contributors[msg.sender] > 0); //the person should have a past contribution
        address payable user = payable(msg.sender);
        user.transfer(contributors[msg.sender]);
        contributors[msg.sender] = 0;
        //the user who requests refund is transferred the amount that he donated
    }

    modifier onlyManager() {
        require(msg.sender == manager);
        _;
    }

    //the manager will handle these requests for the transfer of funds to his account through voting
    function createRequests(
        string memory _description,
        address payable _recipient,
        uint256 _value
    ) public onlyManager {
        Request storage newRequest = requests[numRequests];
        numRequests++;
        newRequest.description = _description;
        newRequest.recipient = _recipient;
        newRequest.value = _value;
        newRequest.completed = false;
        newRequest.noOfVoters = 0;
    }

//this validates the vote of the contributors
    function voteRequest(uint256 _requestNo) public {
        require(contributors[msg.sender] > 0, "YOu must be contributor");
        Request storage thisRequest = requests[_requestNo];
        require(
            thisRequest.voters[msg.sender] == false,
            "You have already voted"
        );
        thisRequest.voters[msg.sender] = true;
        thisRequest.noOfVoters++;
    }

    //this transfers the money from smart contract to the manager's account

    function makePayment(uint256 _requestNo) public onlyManager {
        require(raisedAmount >= target);
        Request storage thisRequest = requests[_requestNo];
        require(
            thisRequest.completed == false,
            "The request has been completed"
        );
        require(
            thisRequest.noOfVoters > noOfContributors / 2,
            "Majority does not support"
        );
        thisRequest.recipient.transfer(thisRequest.value);
        thisRequest.completed = true;
    }
}
