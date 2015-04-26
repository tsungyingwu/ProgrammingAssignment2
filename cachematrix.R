#makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
#cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- functioin(y){
    x <<-y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inv) inv <<- inverse
  getinv <- fucntion(inv) inv
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv = x$getinv()
  if(!is.null(inv)){ #already exists
    return(inv) #return results and program termiantes
  }
  mat.data = x$get()
  inv=solve(mat.data,...) #calculate inverse
  x$setin(inv)
  return(inv)
}
