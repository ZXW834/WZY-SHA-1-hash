
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix: This function creates a special “matrix” object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
## Get x
        get <- function() x
## Set m
        setinverse <- function(inverse) m <<- inverse
## Get m
        getinverse <- function() m
## Return function
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
}


## Write a short comment describing this function
## cacheSolve: This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
 Get inverse from cache function
        m <- x$getinverse()
## Return not null m
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
## Get data
        data <- x$get()
## Computation
        m <- inverse(data, ...)
        x$setinverse(m)
        m
}
