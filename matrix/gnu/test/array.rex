/*
It is probably worth noting that Rexx uppercases the string cherry into CHERRY in the subscript assign-
ment statement above because that character string is not enclosed in quotation marks. Rexx also upper-
cases variable names such as fruit.cherry into FRUIT.CHERRY internally. Had we coded
subscript_string = ‘cherry’ as the third line in the sample code, it would not work properly. The
array tail is uppercased internally by Rexx so the subscript string used for finding the data element must
also be uppercase.
What happens if you accidentally reference an array with a subscript that is not yet initialized? Recall
that in Rexx an uninitialized variable is always its own name in uppercase. So, if my_index has not yet
been assigned a value, my_array.my_index resolves to MY_ARRAY.MY_INDEX. Oops! This is probably
not what the programmer intended.
Initialize the array as a whole by referring to its stem. The dimensionality of the array does not matter to
this operation. We saw one example of initializing an entire array in one line of the sample code. Here
are some more examples:*/
list. = 0 /* initialize all possible entries in the array LIST to 0*/
books. = " " /* initialize all possible entries in BOOKS array to null string */
