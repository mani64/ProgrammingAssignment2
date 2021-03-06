## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  
  get <- function () x
  
  setInverse <- function(In){
    inverse <<- In
  }
  
  getInverse <- function() inverse
  
  list(set=set, 
       get=get,
       setInverse=setInverse,
       getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if (!is.null(inverse)){
    message("getting cashed data")
    return(inverse)
  }
  
  matrix <- x$get()
  inverse <- solve(matrix)
  x$setInverse(inverse)
  inverse
}
