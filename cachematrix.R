## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matx = matrix()) {
  i <- NULL
  set <- function(y) {
    matx <<- y
    i <<- NULL
  }
  get <- function() matx
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(matx, ...) {
  i <- matx$getinverse()
  if(!is.null(i)) {
      print("Matrix exist in cache")
    return(i)
  }
  data <- matx$get()
  i <- solve(data)
  matx$setinverse(i)
  i
}
