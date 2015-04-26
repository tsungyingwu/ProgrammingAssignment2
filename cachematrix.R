#makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
#cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- functioin(j){
    x <<-j
    myinv <<- NULL
  }
  get <- function() x
  setmyinv <- function(myinv) myinv <<- inverse
  getmyinv <- fucntion(myinv) myinv
  list(set=set,get=get,setmyinv=setmyinv,getmyinv=getmyinv)
}


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  myinv = x$getmyinv()
  if(!is.null(myinv)){ #already exists
    return(myinv) #return results and program termiantes
  }
  mat.data = x$get()
  myinv=solve(mat.data,...) #calculate inverse
  x$setin(myinv)
  return(myinv)
}
