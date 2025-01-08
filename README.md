### **BCD Counter Design in VLSI**

---

### **Overview**
This project demonstrates the design and implementation of a Binary-Coded Decimal (BCD) Counter in VLSI. A BCD counter counts in decimal numbers (0–9) and resets after reaching 9. It supports both **up-counting** and **down-counting** modes, making it suitable for applications requiring precise decimal counting.

---

### **Features**
- **Supports BCD counting (0–9):**
  - Up-counting mode: Increments the count from 0 to 9.
  - Down-counting mode: Decrements the count from 9 to 0.
- **Synchronous Reset:** Resets the counter to `0` in both modes.
- **Control Signal:** Allows switching between up and down counting.
- **Efficient Design:** Minimal hardware utilization and propagation delay.
- **Verilog HDL Implementation:** Designed and verified using simulation tools.

---

### **Project Details**
- **Language:** Verilog HDL
- **Tools Used:**
  - **Code Editor:** Visual Studio Code (VSC)
  - **Simulation:** GTKWave
  - **Compiler:** Icarus Verilog
- **Verification:** Testbench included for functionality testing.

---

### **How It Works**
1. The BCD counter takes the following inputs:
   - **Clock (`clk`)**: Drives the counter's operation.
   - **Reset (`reset`)**: Resets the count to `0`.
   - **Up/Down Control (`up_down`)**: 
     - `1` for up-counting.
     - `0` for down-counting.
2. The output (`count`) is a 4-bit binary-coded decimal value.
3. The counter operates as follows:
   - **Up Counting:** Counts from `0000` (0) to `1001` (9) and resets to `0000`.
   - **Down Counting:** Counts from `1001` (9) to `0000` (0) and resets to `1001`.

---

### **Directory Structure**
```
BCD_Counter/
├── src/                # Verilog source files
│   ├── bcd_counter.v          # BCD counter design
│   ├── bcd_counter_tb.v       # Testbench for verification
├── sim/                # Simulation results
│   ├── waveform.vcd          # Simulation output
│   ├── gtkwave_config.gtkw   # GTKWave configuration
├── docs/               # Documentation and reports
│   ├── design_report.pdf     # Detailed design report
│   ├── block_diagram.png     # Block diagram of the counter
└── README.md           # Project description
```

---

### **How to Use**
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/bcd-counter.git
   ```
2. **Navigate to the Project Directory:**
   ```bash
   cd bcd-counter
   ```
3. **Open the Verilog Code:**
   - Edit or review the design files in Visual Studio Code.
4. **Simulate the Design:**
   - Compile the Verilog files:
     ```bash
     iverilog -o bcd_counter_sim src/bcd_counter.v src/bcd_counter_tb.v
     ```
   - Run the simulation:
     ```bash
     vvp bcd_counter_sim
     ```
5. **View the Waveform:**
   - Open the `waveform.vcd` file in GTKWave:
     ```bash
     gtkwave sim/waveform.vcd
     ```

---

### **Applications**
- **Digital Clocks:** Counting seconds, minutes, and hours in decimal format.
- **Embedded Systems:** Decimal counters for user interfaces or displays.
- **Industrial Automation:** Precise decimal counting for processes.
- **Educational Tools:** Understanding the principles of BCD counting.

---

### **Future Improvements**
- Add support for configurable count ranges.
- Explore power and area optimization techniques.
- Implement the design on an FPGA and validate its real-world performance.
- Extend functionality to support cascading multiple BCD counters.

---

### **References**
1. [Digital Design by M. Morris Mano]
2. NPTEL Course: Digital VLSI Design by Sudeb Gupta
3. GTKWave and Icarus Verilog Documentation
