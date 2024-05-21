# Elevator Operating System Project

## Overview
The Elevator Operating System project is designed to efficiently manage multiple elevators within a building, ensuring optimal service for passengers. Developed using **C++**, this project showcases advanced skills in operating systems, algorithm design, network communication, and multi-threading. The system leverages **libcurl** for network communication, allowing it to interact with an elevator simulation server through **GET** and **PUT** requests. It employs an optimized round robin scheduling algorithm to minimize wait and ride times, and uses a Makefile for build automation.

## Features
The project consists of several key features:
- **Optimized Scheduling Algorithm**: Uses an optimized round robin algorithm to find the closest available elevator and group passengers heading in the same direction. This reduces wait times and improves the passenger experience.
- **Efficient Resource Allocation**: When no elevator is available, the algorithm waits and assigns the closest available elevator, enhancing efficiency by tracking each elevator's capacity and direction.
- **Network Communication**: Interacts with an elevator simulation server using `curl`, sending GET and PUT requests to manage the simulation state and schedule passengers.
- **Multi-threading**: Employs multiple threads to handle input processing, output handling, scheduling, and updating elevator statuses, ensuring smooth operation under concurrent load.
- **Real-time Status Updates**: Continuously monitors and updates the status of each elevator for accurate scheduling decisions.

## Installation
1. Clone the repository: `git clone https://github.com/godfreystorm/Elevator-Operating-System.git`
2. Navigate to the project directory: `cd Elevator-Operating-System`
3. Compile the project using the provided Makefile: `make`

## Usage
To start the elevator operating system, run: `./elevator_system <building_config_file>`

Replace `<building_config_file>` with the path to your building configuration file.

## Algorithm
The system uses an **optimized round robin algorithm** for scheduling. It tries to find the closest available elevator and group passengers heading in the same direction. If no elevator is available, it waits and attempts to find the closest one. Over time, this method proves to be faster than a simple round robin approach, reducing wait times and improving the passenger experience.

## Implementation Details
- **Programming Language**: C++
- **Libraries**: `libcurl` for network communication
- **Tools**: Makefile for build automation

The scheduling algorithm determines the closest and most suitable elevator based on current floor, direction, and capacity. It uses data structures like vectors and mutexes to manage elevators, the passenger queue, and grouped assignments effectively. The system tracks user interactions and provides real-time feedback on the status of each elevator and the scheduling process.

## Planned Improvements
- **Better Direction Grouping**: Implement more efficient grouping of directions to improve scheduling accuracy.
- **Elevator Position Prediction**: Enhance the algorithm to predict elevator positions for better scheduling decisions.
- **User Interface**: Develop a graphical user interface for easier interaction and visualization.

## Feedback
Your feedback is valuable!

Please submit any feedback or suggestions through the project's GitHub issues page or email me at godfreystorm@gmail.com.

Thank you!
