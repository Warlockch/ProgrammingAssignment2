## [Put comments here that describe what your functions do]

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
       ## setinverse <- function() m <<- solve(x)
        getinverse <- function() solve(x)
        list(set = set, get = get,
            ## setinverse = setinverse,
             getinverse = getinverse)


}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
