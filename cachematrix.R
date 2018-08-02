## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## My submission for Week 3 Programming Assignment
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
              
          ## Creating inverse
          i <- NULL

          ## Set the matrix
          set <- function(matrix) {
          m <<- matrix
          i <<- NULL
          }

          ## Get the matrix
          get <- function() {
          ## Return to the matrix
          m
          }
 
          ## Set the inverse of the matrix
          setInverse <- function () {
          i <<- inverse
          }

          ## Get the inverse of the matrix
          getInverse <- function () {
          i <<- inverse
          }

         list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
         }

## Write a short comment describing this function
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getInverse()

        ## Return the inverse if its already set/calculated
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
       
        ## Get the matrix
        data <- x$getInverse()
        
        ## Calculate the inverse ('solve') by using matrix multiplication (%*%)
        m <- solve(data) %*% data
        
        ## Set the inverse to the matrix (m)
        x$setInverse(m)

        ## Return to the matrix (m)
        m
        }   

