# Verilog-Digital-Design-Projects
A comprehensive collection of digital design projects implemented in Verilog, showcasing fundamental to advanced concepts in digital circuit design.
🚀 About
This repository contains my learning journey through digital design using Verilog HDL. Each project includes:

Verilog code
Comprehensive testbenches
Documentation and simulation results
Progressive complexity from basic gates to complex systems

📁 Project Categories
🔢 Arithmetic Circuits

Full Adder - Basic building block for arithmetic operations
Half Adder - Simple binary addition
4-bit Adder - Multi-bit arithmetic unit
Subtractor - Binary subtraction implementation

🔀 Combinational Logic

Multiplexer (MUX) - Data selection circuits
Demultiplexer (DEMUX) - Data distribution circuits
Encoders/Decoders - Code conversion circuits
Binary to Gray Converter - Code transformation

⏰ Sequential Circuits

Flip-Flops - T, JK flip-flop implementations
Shift Registers - SIPO, PISO, PIPO configurations
Counters - Ring counter, Johnson counter, Modulo counter
State Machines - Moore and Mealy FSM examples

💾 Memory Designs

SRAM - Static Random Access Memory
FIFO - First-In-First-Out buffer

🧮 Advanced Projects

ALU - Arithmetic Logic Unit
FSM Designs - Complex state machine implementations

🛠️ Tools Used

Simulator: ModelSim/QuestaSim
Language: Verilog HDL
Version Control: Git/GitHub

🏃‍♂️ How to Run
Prerequisites

Verilog simulator (ModelSim, Icarus Verilog, or Vivado)
Git for version control

Simulation Steps

Clone the repository:
bashgit clone https://github.com/yourusername/Verilog-Digital-Design-Projects.git
cd Verilog-Digital-Design-Projects

Navigate to any project folder:
bashcd Arithmetic-Circuits

Compile and simulate:
bash# For ModelSim
vlog full_adder.v tb_full_adder.v
vsim -c tb_full_adder -do "run -all; quit"

# For Icarus Verilog
iverilog -o sim full_adder.v tb_full_adder.v
./sim


📊 Project Status
CategoryProjectsStatusTestbenchesArithmetic Circuits4✅ Complete✅ CompleteCombinational Logic6✅ Complete✅ CompleteSequential Circuits8✅ Complete✅ CompleteMemory Designs2✅ Complete✅ CompleteAdvanced Projects3✅ Complete🔄 In Progress
🎯 Learning Outcomes
Through these projects, I've gained hands-on experience with:

Digital design principles and methodologies
Verilog HDL syntax and best practices
Testbench development and verification
Simulation and debugging techniques
Git version control and documentation

🔄 Future Enhancements

 Add SystemVerilog testbenches
 Implement UVM-based verification
 Add timing analysis and constraints
 Include synthesis reports
 Add more complex processor designs

📧 Contact

Name: Manjima P
Email: manjimap3@gmail.com
LinkedIn: https://www.linkedin.com/in/manjima-p/

📄 License
This project is open source and available under the MIT License.

⭐ Star this repository if you found it helpful!
