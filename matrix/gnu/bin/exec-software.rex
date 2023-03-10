/*
signal differs from the GOTO of some other languages in that it terminates all active control structures in
which it is encoded. You could not transfer control to another point in a loop using it, for example.
49Chapter 3
Duplicate labels are allowed within Rexx scripts, but control will always be transferred to the one that occurs
first. We recommend that all labels in a program be unique within a program for the sake of readability.
In an entirely different role, the signal instruction is also used to capture or “trap” errors and special
conditions. Chapter 10 discusses this in detail. This is a special mechanism within the Rexx language
designed to capture unusual error conditions or “exceptions.”
The last unstructured instruction to discuss is the iterate instruction. The iterate instruction causes
control to be passed from the current statement in the do loop to the bottom of the loop. In this example,
the iterate instruction ensures that the say instruction never executes. The if instruction’s condition
evaluates to TRUE every time that statement is encountered, so the iterate instruction reruns the do
loop and the say instruction never runs:*/

j = 1
do until j = 4
/* do some work here */
j = j + 1
if j > 1 then iterate
say "This line is never displayed!"
end
/* this line will never execute */