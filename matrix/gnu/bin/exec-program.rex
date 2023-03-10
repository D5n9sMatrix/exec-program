/* Another instruction for the unstructured transfer of control is signal. The signal instruction acts much
like the GOTO statement of other programming languages. It transfers control directly out of any loop,
CASE structure, or if statement directly to a Rexx label. A label is simply a symbol immediately fol-
lowed by a colon. This sample code snippet is similar to that we’ve seen earlier, except that this time the
signal instruction transfers control to a program label. So, once j = 4 and the signal instruction exe-
cute, control is transferred to the program label and the say instruction displays its output line:*/

j = 1
do forever
/* do some work here */
j = j + 1
if j = 4 then
signal my_routine
/* unconditionally go to the label MY_ROUTINE */
end
/*
other code here gets skipped by the SIGNAL instruction */
my_routine:
say "SIGNAL instruction was executed, MY_ROUTINE entered..."
