# High-Performance Multipliers  
Booth, Wallace Tree, and Array Architectures

## 1. Project Overview

This project implements three different multiplier architectures in synthesizable Verilog:

- Array Multiplier  
- Booth Multiplier  
- Wallace Tree Multiplier  

The objective is to compare their functional correctness, timing performance, and hardware area after synthesis. The designs support both signed and unsigned operand combinations.

---

## 2. Use Case

Multipliers are fundamental components in:

- Arithmetic Logic Units (ALUs)  
- Digital Signal Processing (DSP) systems  
- CPUs and microprocessors  
- AI and accelerator hardware  

Different multiplier architectures provide different trade-offs in terms of speed, area, and implementation complexity. This project analyzes those trade-offs in a structured manner.

---

## 3. Architectures Implemented

### 3.1 Array Multiplier

- Regular and straightforward structure  
- Easy to design and understand  
- Larger area due to full partial product generation  
- Moderate performance  

### 3.2 Booth Multiplier

- Reduces number of partial products  
- Efficient handling of signed numbers  
- Improved area efficiency compared to array multiplier  
- Balanced speed and complexity  

### 3.3 Wallace Tree Multiplier

- Uses carry-save addition to compress partial products  
- Reduces number of sequential addition stages  
- Fastest among the three implementations  
- Slightly higher structural complexity  

---

## 4. Synthesis and Performance Analysis

Post-synthesis analysis was performed to evaluate:

- Critical path delay  
- Hardware area utilization  
- Overall timing performance  

### Comparative Observations

- Wallace Tree Multiplier achieved the lowest critical path delay  
- Booth Multiplier provided a balanced trade-off between area and speed  
- Array Multiplier consumed the highest area  

Detailed timing and area reports are available in the `synthesis` directory.

---

## 5. Key Learning Outcomes

- Implementation of multiple multiplier architectures  
- Writing synthesizable Verilog  
- Development of self-checking testbenches  
- Functional verification using reference models  
- Post-synthesis timing and area comparison  
- Understanding architectural trade-offs  
