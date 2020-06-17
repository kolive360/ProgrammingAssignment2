## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Anonymous function 
# here the inverse calculations are made in the other get () subfunction
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}
## Write a short comment describing this function
# Here is the capture of the matrix
# Funtion called
# when it ends it involves the other function that performs the calculations
cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if (!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
