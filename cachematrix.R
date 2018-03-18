## Put comments here that give an overall description of what your
## functions do


### the first function is to make a matrix which contains the set, get, setinvr and getinvr
### functions for calculation 
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function (y) {
                x <<- y
                m <<- NULL
                }
        get <- function() x
        
        setinvr <- fucntion (invr) m <- invr
        getinvr <-function() m
        list = ( set = set, get = get, setinvr = setinvr, getinvr = getinvr )

}



### computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
### If the inverse has already been calculated,
### then retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinvr
        if (! is.null(m)){ 
                messgae(" Cache matrix ")
                return ( m )
                } 
        matrix_original <- x$get
        matrix_invr <- solve(matrix_original)
        x$setinvr(matrix_invr)
        matrix_invr
        
}
