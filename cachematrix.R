## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I created the makeCacheMatrix below. 
## The cashsolve i have put into the the function itself so when you need the inverse, you only to call the inversie function

makeCacheMatrix <- function(m = matrix()){
        i <- NULL
        set <- function(y){
                m <<- y
                i <<- NULL
        }
        get <- function() m
        cacheSolve <- function() {
                if (is.null(i)) i <<- solve(m) %*% m
                i
        }
        list(set = set, get = get, cacheSolve = cacheSolve)
}
