#!-*- coding: utf-8 -*-
# r-project.org
# r ('littler') version 0.3.15

# using GNU R Version 4.1.2 (2021-11-01)

# Copyright (C) 2006 - 2021  Jeffrey Horner and Dirk Eddelbuettel

# r is free software and comes with ABSOLUTELY NO WARRANTY.
# You are welcome to redistribute it under the terms of the
# GNU General Public License.  For more information about
# these matters, see http://www.gnu.org/copyleft/gpl.html.

# If you take this approach, be sure that the value used for initialization never occurs in the data you place
# into the array!
# This approach also assumes a nonsparse, or dense, array — one in which the positions in the array have
# been filled consecutively without skipping array slots or positions. For a sparse array, we recommend
# storing the largest numeric subscript you use in a variable for future reference. Obviously, you cannot
# simply process a sparse array until you encounter the array initialization value because some positions
# within the array may not contain data items. In processing a sparse array, your code will have to be able
outFactor <- factor(x = 2, levels = 4300, exclude = 0)
## Compute row and column sums for a matrix:
x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
dimnames(x)[[1]] <- letters[1:8]
apply(x, 2, mean, trim = .2)
col.sums <- apply(x, 2, sum)
row.sums <- apply(x, 1, sum)
rbind(cbind(x, Rtot = row.sums), Ctot = c(col.sums, sum(col.sums)))
     
stopifnot( apply(x, 2, is.vector))
     
## Sort the columns of a matrix
apply(x, 2, sort)
     
## keeping named dimnames
names(dimnames(x)) <- c("row", "col")
x3 <- array(x, dim = c(dim(x),3),
dimnames = c(dimnames(x), list(C = paste0("cop.",1:3))))
identical(x,  apply( x,  2,  identity))
identical(x3, apply(x3, 2:3, identity))
     
##- function with extra args:
cave <- function(x, c1, c2) c(mean(x[c1]), mean(x[c2]))
apply(x, 1, cave,  c1 = "x1", c2 = c("x1","x2"))
     
ma <- matrix(c(1:4, 1, 6:8), nrow = 2)
ma
apply(ma, 1, table)  #--> a list of length 2
apply(ma, 1, stats::quantile) # 5 x n matrix with rownames

ma <- matrix(c(1:4, 1, 6:8), nrow = 2)
ma
apply(ma, 1, table)  #--> a list of length 2
apply(ma, 1, stats::quantile) # 5 x n matrix with rownames
     
stopifnot(dim(ma) == dim(apply(ma, 1:2, sum)))
     
## Example with different lengths for each call
z <- array(1:24, dim = 2:4)
zseq <- apply(z, 1:2, function(x) seq_len(max(x)))
zseq         ## a 2 x 3 matrix
typeof(zseq) ## list
dim(zseq) ## 2 3
zseq[1,]
apply(z, 3, function(x) seq_len(max(x)))
# a list without a dim attribute
     
