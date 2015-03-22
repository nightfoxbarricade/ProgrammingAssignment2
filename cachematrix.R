## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse<-NULL
  set<-function(y){
    x<<-y
    inverse<<-NULL
  }
  get<-function() x
  setmatrix<-function(newinverse){
  	inverse<<- newinverse
  	} 
  getmatrix<-function() inverse
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse<-x$getmatrix()
  if(!is.null(inverse)){
    message("Getting cached data")
    return(inverse)
  }
  matrix<-x$get()
  inverse<-solve(matrix, ...)
  x$setmatrix(inverse)
  inverse
}
