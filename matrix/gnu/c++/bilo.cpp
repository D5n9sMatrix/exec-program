/*To process all the elements in an array, use a do loop. This works as long as the array is indexed or sub-
scripted by numeric values, and each position, or slot, in the array contains a value. To process all the
elements in the array, you must keep track of the maximum subscript you use. There is no Rexx function
that returns the largest numeric subscript you’ve used for an array. Here is an example that shows how
to process all the elements of an array. In this code, each contiguous array position contains an element,
and the array subscript is numeric:*/
void array_name(int array){
array_name. = "array";  /* initialize all elements to some nonoccurring value*/
number_of_elements = 1300; /* initialize to the number of elements in the array*/
/*place elements into the array here */
/* doThis code processes all elements in the array. */
j = 1 to number_of_elements
say "Here’s an array element:" array_name.j
end
}