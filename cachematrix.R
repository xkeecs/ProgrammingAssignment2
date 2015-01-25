## This program provides a cacheable "matrix".
## The matrix can cache its inverse matrix result

## Write a short comment describing this function

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


## Write a short comment describing this function

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
