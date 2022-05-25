pragma solidity >=0.4.22 <0.9.0;
//SPDX-License-Identifier: UNLICENSED

contract finish {
   uint public no_of_tasks;
    struct task{
        uint id ;
        string title;
        bool completed;
    } s
constructor (){}

mapping (uint =>task) public tasks;
function addtask(string memory _content) public 
 {
     no_of_tasks++;
tasks[no_of_tasks]=task(no_of_tasks,_content,false);

 }
}
