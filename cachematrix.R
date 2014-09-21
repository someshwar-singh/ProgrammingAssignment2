## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {  #assuming matrix is square 
       inv.mat<-solve(x)## calculating inverse of the matrix
       special.mat<<-list(mat=x,inv=inv.mat)## creating special matrix by saving the matrix and it's inverse
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {   ## transfering the special matrix
  is.mat.same<-identical(x$mat,special.mat$mat) ## checking if the matrix has not changed 
if(is.mat.same==TRUE){   ## if matrix is same
  print('getting cached inverse')  
  return(special.mat$inv) ## reterive the inverse from Cache
}
if(is.mat.same==FALSE){  ### if matrix is not same 
  print('calculated inverse')
  return(solve(x$mat)) ##return calculated inverse   
} 
        ## Return a matrix that is the inverse of 'x'
  
}
