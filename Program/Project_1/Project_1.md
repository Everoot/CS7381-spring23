# Project 1 Run Tutorial

Name: Bingying Liang

ID: 48999397

Email: bingyingl@smu.edu

CS7381 Distance

## Part 1: Basic MARS Use 

The example program is `Fibonacci.asm` to compute everyone’s favorite number sequence.

1. Start MARS from the Start menu or desktop icon

   <img src="./Project_1.assets/Screenshot 2023-02-17 at 22.18.32.png" alt="Screenshot 2023-02-17 at 22.18.32" style="zoom: 50%;" />

   

   ![Screenshot 2023-02-17 at 22.19.32](./Project_1.assets/Screenshot 2023-02-17 at 22.19.32.png)

2. Use the menubar File...Open or the Open icon<img src="./Project_1.assets/Screenshot 2023-02-17 at 22.20.29.png" alt="Screenshot 2023-02-17 at 22.20.29" style="zoom: 33%;" /> to open Fibonacci.asm in the default folder. (All icons have menubar equivalents; the remainder of these steps will use the icon whenever possible.)

   ![Screenshot 2023-02-17 at 22.24.56](./Project_1.assets/Screenshot 2023-02-17 at 22.24.56.png)

   

3. The provided assembly program is complete. Assemble the program using the icon<img src="./Project_1.assets/Screenshot 2023-02-17 at 22.26.10.png" alt="Screenshot 2023-02-17 at 22.26.10" style="zoom: 33%;" />

![Screenshot 2023-02-17 at 22.29.09](./Project_1.assets/Screenshot 2023-02-17 at 22.29.09.png)

4. Identify the location and values of the program’s initialized data. Use the checkbox to toggle the display format between decimal and hexadecimal <img src="./Project_1.assets/Screenshot 2023-02-17 at 22.45.23.png" alt="Screenshot 2023-02-17 at 22.45.23" style="zoom: 50%;" />.

   ![Screenshot 2023-02-17 at 22.39.06](./Project_1.assets/Screenshot 2023-02-17 at 22.39.06.png)

   

   ![Screenshot 2023-02-17 at 22.41.08](./Project_1.assets/Screenshot 2023-02-17 at 22.41.08.png)

* The twelve-element array fibs is initialized to zero, at addresses 0x10010000 ...0x1001002c.

  ![Screenshot 2023-02-17 at 22.35.55](./Project_1.assets/Screenshot 2023-02-17 at 22.35.55.png)

* The data location size has value $12_{10} (C_{16})$ at 0x10010030.  Use the checkbox to toggle the display format between decimal and hexadecimal<img src="./Project_1.assets/Screenshot 2023-02-17 at 22.45.23.png" alt="Screenshot 2023-02-17 at 22.45.23" style="zoom: 50%;" />

  ![Screenshot 2023-02-17 at 22.43.36](./Project_1.assets/Screenshot 2023-02-17 at 22.43.36.png)

  

  ![Screenshot 2023-02-17 at 22.44.13](./Project_1.assets/Screenshot 2023-02-17 at 22.44.13.png)



5. Locate the Registers display, which shows the 32 common MIPS registers. Other tabs in the Registers display show the floating-point registers (Coproc 1) and status codes (Coproc 0).

   <img src="./Project_1.assets/Screenshot 2023-02-17 at 22.49.12.png" alt="Screenshot 2023-02-17 at 22.49.12" style="zoom:33%;" />           <img src="./Project_1.assets/Screenshot 2023-02-17 at 22.49.37.png" alt="Screenshot 2023-02-17 at 22.49.37" style="zoom:33%;" />            <img src="./Project_1.assets/Screenshot 2023-02-17 at 22.50.17.png" alt="Screenshot 2023-02-17 at 22.50.17" style="zoom:33%;" />   



6. Use the slider bar to change the run speed to about 10 instructions per second. This allows us to “watch the action” instead of the assembly program finishing directly.

   <img src="./Project_1.assets/Screenshot 2023-02-17 at 22.52.48.png" alt="Screenshot 2023-02-17 at 22.52.48" style="zoom: 50%;" />



7. Choose how you will execute the program:

* The<img src="./Project_1.assets/Screenshot 2023-02-17 at 23.02.10.png" alt="Screenshot 2023-02-17 at 23.02.10" style="zoom:33%;" />icon runs the program to completion. Using this icon, you should observe the yellow highlight showing the program’s progress and the values of the Fibonacci sequence appearing in the Data Segment display.

  ![Screenshot 2023-02-17 at 23.25.05](./Project_1.assets/Screenshot 2023-02-17 at 23.25.05.png)

* The<img src="./Project_1.assets/Screenshot 2023-02-17 at 23.01.47.png" alt="Screenshot 2023-02-17 at 23.01.47" style="zoom:33%;" /> icon resets the program and simulator to initial values. Memory contents are those specified within the program, and register contents are generally zero.

  ![Screenshot 2023-02-17 at 23.25.27](./Project_1.assets/Screenshot 2023-02-17 at 23.25.27.png)



* The<img src="./Project_1.assets/Screenshot 2023-02-17 at 23.20.14.png" alt="Screenshot 2023-02-17 at 23.20.14" style="zoom:33%;" />icon is “single-step.” Its complement is <img src="./Project_1.assets/Screenshot 2023-02-17 at 23.20.44.png" alt="Screenshot 2023-02-17 at 23.20.44" style="zoom:33%;" />, “single-step backwards” (undoes each operation).

  <img src="./Project_1.assets/Screenshot 2023-02-17 at 23.25.58.png" alt="Screenshot 2023-02-17 at 23.25.58" style="zoom: 33%;" />

  ![Screenshot 2023-02-17 at 23.26.22](./Project_1.assets/Screenshot 2023-02-17 at 23.26.22.png)

8. Observe the output of the program in the Run I/O display window:

   ```
   The Fibonacci numbers are:
   1 1 2 3 5 8 13 21 34 55 89 144 
   -- program is finished running --
   ```

   ![Screenshot 2023-02-17 at 22.56.17](./Project_1.assets/Screenshot 2023-02-17 at 22.56.17.png)



9. Modify the contents of memory. (Modifying a register value is exactly the same.)

* Set a breakpoint at the first instruction of the subroutine which prints results. Use the checkbox at the left of the instruction whose address is 0x0040005c.

  <img src="./Project_1.assets/Screenshot 2023-02-17 at 23.01.13.png" alt="Screenshot 2023-02-17 at 23.01.13" style="zoom: 33%;" />

* Reset<img src="./Project_1.assets/Screenshot 2023-02-17 at 23.01.47.png" alt="Screenshot 2023-02-17 at 23.01.47" style="zoom:33%;" /> and re-run<img src="./Project_1.assets/Screenshot 2023-02-17 at 23.02.10.png" alt="Screenshot 2023-02-17 at 23.02.10" style="zoom:33%;" />the program, which stops at the breakpoint.

  ![Screenshot 2023-02-17 at 23.03.20](./Project_1.assets/Screenshot 2023-02-17 at 23.03.20.png)![Screenshot 2023-02-17 at 23.08.43](./Project_1.assets/Screenshot 2023-02-17 at 23.08.43.png)

* Double-click in one of the memory locations containing the computed Fibonacci numbers. The cell will be highlighted and will accept keyboard entry, similar to a spreadsheet. Enter some noticeably different value, and use the Enter key or click outside the cell to indicate that the change is complete. Example: Memory address $0x10010020 = 268501024_{ten}$ presently contains data $0x00000022 = 34_{ten}$.

  ![Screenshot 2023-02-17 at 23.12.59](./Project_1.assets/Screenshot 2023-02-17 at 23.12.59.png)

* Click <img src="./Project_1.assets/Screenshot 2023-02-17 at 23.02.10.png" alt="Screenshot 2023-02-17 at 23.02.10" style="zoom:33%;" /> to continue from the breakpoint. The program output includes your entered value instead of the computed Fibonacci number.

  ![Screenshot 2023-02-17 at 23.15.47](./Project_1.assets/Screenshot 2023-02-17 at 23.15.47.png)

10. Open the Help<img src="./Project_1.assets/Screenshot 2023-02-17 at 23.16.51.png" alt="Screenshot 2023-02-17 at 23.16.51" style="zoom:33%;" />for information on MIPS instructions, pseudoinstructions, directives, and syscalls.![Screenshot 2023-02-17 at 23.17.59](./Project_1.assets/Screenshot 2023-02-17 at 23.17.59.png)

