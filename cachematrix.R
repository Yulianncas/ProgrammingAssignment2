
# This function saves a specific inverse of a matrix that was running in the computer

makeCacheMatrix <- function(x = matrix()) {
  
    i <- NULL
    set <- function(y) {
      
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinverse<-function(inverse) i<<-inverse
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)   
    
  }
  
  
  ## This function makes an inverse of a specific matrix that the user gives
  
  cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    
    i <- x$getinverse()
    if(!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i 
    
    
  }
