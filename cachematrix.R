## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## Anonymous function 
## here the inverse calculations are made in the other get () subfunction
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x         ## from x to funtion get
    setinverse <- function(inverse) i <<- inverse ## set matricial mode
    getinverse <- function() i ## result inverse
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse) ## output
}
## Write a short comment describing this function

# Here is the capture of the matrix
# Funtion called
# when it ends it involves the other function that performs the calculations
cacheSolve <- function(x, ...) {
    i <- x$getinverse()  ## call previous result  
    if (!is.null(i)) {   ## if invalid result
        message("getting cached data")
        return(i)
    }
    data <- x$get()   ## if valid result
    i <- solve(data, ...)
    x$setinverse(i)
    i  # show output
}
