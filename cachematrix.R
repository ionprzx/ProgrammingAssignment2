## Put comments here that give an overall description of what your
## functions do
The objective of task  is to generate two functions, "makeCacheMatrix" and "cacheSolve," that keep the opposite of the matrix.
## Write a short comment describing this function
makeCacheMatrix is a function that produces a distinctive "matrix" item that can of cache its opposite.
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
makeCacheMatrix exposes a cache matrix if the contrary has already been calculated, the cacheSolve function can retrieve it from the cache.
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
