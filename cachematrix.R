## Caching the inverse of a matrix.
## Two functios below that are used to create a special object that stores a matrix and caches its inverse.

## The first function, makeCacheMatrix, stores a matrix and a cached value of the inverse of the matrix. 
## It returns a list of functions.

makeCacheMatrix <- function(x = matrix()) {

m <- NULL 

## Setting the matrix
setMatrix <- function() {
  x <<- y
  m <<- NULL
  }

## Getting the matrix
getMatrix <- function() {
  x
  }

## Cache the given argument
cacheInverse <- function(solve) {
  m <<- solve
  }

## Getting the cached value
getInverse <- function() {
  m
  }

## Returning a list of the above functions
list(setMatrix = setMatrix, getMatrix = getMAtrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## The second function calculates the inverse of a special matrix created with makeCacheMatrix

cacheSolve <- function(x, ...) {
  ## get the cached value
  inverse <- x$getInverse()
  ## returns the cached value if exists
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
    }
  
  ## otherwise get the matrix, caclculate the inverse and store it in the cache
  data <- x$getMatrix()
  inverse <- solve(data)
  x$getMatrix(inverse)
  inverse
}
