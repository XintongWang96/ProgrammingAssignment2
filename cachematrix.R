## Put comments here that give an overall description of what your
## functions do

## creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
   
  m <- NULL  ## an empty matrix 
 
  
  set <- function(y){
    x <<- y              ## assign a matrix to x as the parameter for makeCacheMatrix func
    m <<- NULL
  }
  
  
  get <-function() x     ## return matrix x
  
  
  setinvr <- function(invr)  m <- invr  ## assign the inversion matrix to m 
  
  
  getinvr <- function() m    ## return matrix m to get the inversion 
  
  list (set = set, get = get, setinvr = setinvr, getinvr = getinvr)   ## return the list with set get setinvr and getinvr functions

}


##  computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##  If the inverse has already been calculated (and the matrix has not changed), 
##  then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinvr()
  if (! is.null(m)){                             ## judge if the inverse of matrix x is already been calculated
    message("The matrix inversion cache")
    return(m)
  }
  matrix <- x$get()                              ## pass the matrix with the value of x$get()
  m <- solve(matrix)                             ## assign the value of inversion matrix to m
  x$setinvr(m)
  m                                              ## return m 
}
