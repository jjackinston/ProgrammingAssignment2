## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

MakecacheMatrix <- function(x = vector()) {
  f <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  set <- function(cache) m <<- cache
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


## Write a short comment describing this function

## Returning the vector
cacheSolve <- function(x, ...) {
  f <- x$getmean()
  if(!is.null(f)) {
    message("getting cached data")
    return(f)
  }
  data <- x$get()
  f <- mean(data, ...)
  x$setmean(f)
  f
}