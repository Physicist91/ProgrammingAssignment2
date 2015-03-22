## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special "matrix" object that can cache
## its inverse. The special "matrix" is a list containing:
## 1. a function to set the value of the matrix
## 2. a function to get the value of the matrix
## 3. a function to set the value of the inverse
## 4. a function to get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        
        ## 1. function to set the value of the matrix
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        
        ## 2. a function to get the value of the matrix
        get <- function() x
        
        ## 3. a function to set the value of the inverse
        setinverse <- function(inverse) i <<- inverse
        
        ## 4. a function to get the value of the inverse
        getinverse <- function() i
        
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## cacheSolve computes the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has
## already been calculated (and the matrix has not changed),
## then cacheSolve retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
       
        ## Return a matrix that is the inverse of 'x'
}
