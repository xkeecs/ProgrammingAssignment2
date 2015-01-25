# R programming assignment 2
## This program provides a cacheable "matrix".
## The matrix can cache its inverse matrix result

## This function creates a special matrix that caches its inverse
# it is composed of 4 functions, two setters and two getters for matrix 
# and the inverse cache
makeCacheMatrix <- function(x = matrix()) {
  
  cache <- NULL
  setMatrix <- function(newMatrix){
    x <<- newMatrix
    cache <<- NULL
  }
  
  getMatrix <- function(){
    return(x)
  }

  cacheInverseMatrix <- function(newCache){
    cache <<- newCache
  }
  
  getCachedInverse <- function(){
    cache
  }
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverseMatrix=cacheInverseMatrix,getCachedInverse=getCachedInverse)
}


## This function calculates the inverse of the input matrix.
## Then it sets the cache value in the input matrix
## In the case that the cache is not null, it will simply return the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cache <- x$getCachedInverse
  if(!is.null(inv)){
    return(inv)
  }
  data <- x$getMatrix()
  cache <- solve(data)
  x$cacheInverseMatrix(cache)
}
