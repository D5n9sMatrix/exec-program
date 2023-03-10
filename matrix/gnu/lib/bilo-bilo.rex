/*
Summar y
This chapter summarizes Rexx’s structured and unstructured control constructs. These include the if,
do, select, call, exit, and return instructions for structured programming, and the unstructured
iterate, leave, and signal instructions. The do until and do forever forms of the do instruction
are also unstructured.
Use the instructions this chapter covers to direct conditional logic as in most other programming lan-
guages. This chapter presented many small code snippets to illustrate how to use the instructions that
control program logic. Subsequent chapters will provide many more examples of the use of these
instructions. These upcoming examples demonstrate the instructions in the more realistic context of
complete programs. They will make the use of the instructions for the control of logical flow much
clearer.
*/

/*
Arrays
Over view
Every programming language provides for arrays. Sometimes they are referred to as tables. This
basic data structure allows you to build lists of “like elements,” which can be stored, searched,
sorted, and manipulated by other basic programming operations.
Rexx’s implementation of arrays is powerful but easy to use. Arrays can be of any dimensionality.
They can be a one-dimensional list, where all elements in the array are of the same kind. They can
be of two dimensions, where there exist pairs of entries. In this case, elements are manipulated by
two subscripts (such as I and J). Or, arrays can be of as many dimensions as you like. While Rexx
implementations vary, the usual constraint on the size and dimensionality of array is memory. This
contrasts with other programming languages that have specific, language-related limitations on
array size.
Rexx arrays may be sparse. That is, not every array position must have a value or even be initial-
ized. There can be empty array positions, or slots, between those that do contain data elements. Or
arrays can be dense, in which consecutive array slots all contain data elements. Figure 4-1 below
pictorially shows the difference between sparse and dense arrays. Dense arrays are also sometimes
called nonsparse arrays.
Arrays may be initialized by a single assignment statement. But just like other variables, arrays are
defined by their first use. You do not have to predefine or preallocate them. Nor must you declare
a maximum size for an array. The only limitation on array size in most Rexx implementations is
imposed by the amount of machine memory.
*/


/*
Element 1<empty>
Element 2Element 1
Element 3<empty>
Element 4<empty>
<empty>Element 2
A Dense Array
Figure 4-1
A Sparse Array
You can refer to individual elements within a Rexx arrray by numeric subscripts, as you do in other pro-
gramming languages. Or, you can refer to array elements by variables that contain character strings.
Rexx then uses those character strings as indexes into the array. For this reason, Rexx arrays are some-
times termed content addressable. They can be used as a form of associative memory, in that they create an
association between two values. This permits innovative use of arrays in problem solving. We’ll explain
what these terms mean and why are they important in more detail later in the chapter. We’ll even give
several examples of how content addressable memory structures are useful in resolving programming
problems. For now, remember that the subscripts you encode to access individual array elements can be
either numeric or string variables.
Like many scripting languages, Rexx lacks complex data structures such as lists, trees, records, and the
like. These are unnecessary because by understanding content-addressable arrays it is easy to build
these structures. Rexx arrays provide the foundation to build any imaginable data structure. We’ll show
you how later in this chapter. First, let’s explore the basics of how to code arrays and process their data
elements.
The Basics
To approach the subject of arrays, let’s review the way variable names are created. The basis for Rexx
arrays are compound variable names or symbols. So far we’ve seen several kinds of symbols within Rexx:
54
❑Constants — Literal strings or other values that cannot be changed.
❑Simple symbols — Variable names that do not begin with a digit and do not contain any embed-
ded period(s).
❑Compound symbols — The basis for arrays. Like simple symbols, they do not begin with a digit.
However, they contain one or more periods.Arrays
Simple symbols are synonymous with variable names, as we have known them thus far, while compound
symbols contain one or more periods. Compound symbols are the basis for arrays.
In compound symbols, the stem is the part of the name up to and including the first period. The stem is
sometimes called a stem variable. The tail comprises one or more symbols separated by periods.
Here are a few examples:
❑list.j — list is the name of an array or table.
❑list.j — list. is the stem of the array. Note that the stem name includes the period.
❑books.j.k — books. is the stem, j.k is the tail. j and k are two subscripts.
In these examples, Rexx substitutes in the value of the variables j and k before referencing into the
arrays. These values can be numbers, but they do not have to be. Rexx allows indexing into an array
based on any variable value you encode, whether it is numeric or a string value.
Here is a sample series of statements that refer to an array element based on a string value in a variable.
The first line below initializes all elements in an array to the null string (represented by two back-to-back
quotation marks). The second line assigns a value to a specific array element. The last two statements
show how a character string provides a subscript into the array to retrieve that data element from the*/

array: /* initialize all array elements to the null string */
bilo. = "" /* set the value of an array element*/
bilo.cherry = "Tasty!" /* establish an index into the array*/
subscript_string = cherry /* displays: Tasty!*/
say bilo.subscript_string
