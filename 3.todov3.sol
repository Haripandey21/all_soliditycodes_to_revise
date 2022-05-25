// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract Todolist {

address private owner;

constructor () {
    owner = msg.sender;
}

 string [] private allTasks;

   function addTask ( string memory taskName) public { 
     require(owner == msg.sender , "Not authorizied to add tasks to this smart contract");  
     allTasks.push(taskName);          
   }

   function getAllTasks () public view returns( string [] memory) {
       require(owner == msg.sender , "Not authorizied to view tasks in this smart contract");  
       return allTasks;
   } 

   function removeTask(uint _taskNumber) public {
       require(owner == msg.sender , "Not authorizied to delete tasks from this smart contract");  
       delete allTasks[_taskNumber];      
   }

   function deleteAllTaks () public {
      require(owner == msg.sender , "Not authorizied to empty tasks on this smart contract");  
      delete allTasks;  
   }
}
