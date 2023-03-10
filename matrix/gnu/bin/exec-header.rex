/*Another way to terminate the endless loop is to encode the exit instruction. exit ends a program
unconditionally (even if a subroutine is executing or if execution is nested inside of a do loop). Control
returns to the environment (the operating system) with the optional string encoded on the exit state-
ment passed up.
What return code you can pass to the environment or operating system using the exit instruction
depends on what that operating system accepts. Some systems accept only return codes that are numeric
digits between 0 and 127. If your script returns any other string, it is translated into a 0. Other operating
systems will accept whatever value you encode on the exit instruction.
Here’s an example. The following code snippet is the same as the previous one, which illustrates the
leave instruction, but this time when the condition j = 4 is attained, the script unconditionally exits
and returns 0 to the environment. Since the script ends, the say instruction following the do forever
loop never executes and does not display its output:*/

j = 1
do forever
/* do some work here */
j = j + 1
if j = 4 then
exit 0
/* unconditionally exits and passes ‘0’ back to the environment */
end
say "this line will never be displayed" /* code EXITs, never reaches this line */