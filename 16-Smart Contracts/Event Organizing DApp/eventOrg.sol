// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract EventContract {
    //definging the details about event
    struct Event {
        address organizer;
        string name;
        uint256 date;
        uint256 price;
        uint256 ticketCount;
        uint256 ticketRemaining;
    }

    mapping(uint256 => Event) public events;
    mapping(address => mapping(uint256 => uint256)) public tickets;

    uint256 public nextId;

    //organizer can create an event
    function createEvent(
        string memory _name,
        uint256 _date,
        uint256 _price,
        uint256 _ticketCount
    ) external {
        require(_date > block.timestamp, "You can organize event for future");
        require(
            _ticketCount > 0,
            "You can organize event only if you create more than 0 tickets"
        );

        events[nextId] = Event(
            msg.sender,
            _name,
            _date,
            _price,
            _ticketCount,
            _ticketCount
        );
        nextId++;
    }

    //attendee can buy ticket for events
    function buyTickets(uint256 _id, uint256 _quantity) external payable {
        require(events[_id].date != 0, "the event does not exist"); //if event doesnt exists the function wont work
        require(
            events[_id].date > block.timestamp,
            "Event has already occurred"
        );

        Event storage _event = events[_id];
        require(msg.value == (_event.price * _quantity), "Ether is not enough");
        require(_event.ticketRemaining >= _quantity, "Not enough tickets");
        _event.ticketRemaining = _quantity;
        tickets[msg.sender][_id] += _quantity;
    }

    //attendee can pass the tickets to another
    function transferTickets(
        uint256 _id,
        uint256 quantity,
        address to
    ) external {
        require(events[_id].date != 0, "the event does not exist"); //if event doesnt exists the function wont work
        require(
            events[_id].date > block.timestamp,
            "Event has already occurred"
        );
        require(
            tickets[msg.sender][_id] >= quantity,
            "You do not have enough tickets"
        );
        tickets[msg.sender][_id] -= quantity;
        tickets[to][_id] += quantity;
    }
}
