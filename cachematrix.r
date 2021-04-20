## Put comments here that give an overall description of what your
## functions do
The purpose of this project is to code two functions, "makeCacheMatrix" and "cacheSolve," that store the opposite of a matrix.
## Write a short comment describing this function
makeCacheMatrix is a program that creates a particular "matrix" entity able of computing its opposite.
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function
cacheSolve is a feature that computes the counterpart of a given "matrix." A cache matrix is shown by CacheMatrix. If the opposite has already been calculated, the cacheSolve feature will extract it from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!is.null(inv)) {
message("getting cached data")
return(inv)}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv}

