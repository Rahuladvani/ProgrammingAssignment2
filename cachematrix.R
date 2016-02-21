## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  storematrix<-function(y)
  {
    x<<-y
    m<<-NULL
  }
  getmatrix <-function()
  {
    x
  }
  setinverse <-function(solve)
  {
    m<<-solve
  }
  getinverse<-function()
  {
    m
  }
  list(storematrix= storematrix,getmatrix =getmatrix,setinverse =setinverse,getinverse =getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse<-x$getinverse
  if(!is.null(inverse))
  {
    message("Fetching cached data")
    return (inverse)
  }
  matx<-x$getmatrix()
  inverse<-solve(matx)
  x$setinverse(inverse)
  inverse
  }
