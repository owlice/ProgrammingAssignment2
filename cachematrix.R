## Functions written by owlice


## ___________________________________
## START General comments
##
## This file contains two functions; the first is makeCacheMatrix and the
## second is cacheSolve. 
##
## makeCacheMatrix creates a matrix object that can cache its inverse 
##
## cacheSolve computes the inverse of the matrix object returned by 
## the function makeCacheMatrix if this has not already been computed. If
## the inverse has already been calculated and the matrix is unchanged,
## cachesolve retrieves the inverse from the cache
## 
## END General comments
## ___________________________________


## ___________________________________
## START makeCacheMatrix general comments
## 
## makeCacheMatrix creates a matrix object that can cache its inverse
##
## END makeCacheMatrix general comments
## ___________________________________
##

makeCacheMatrix <- function(x = matrix()) {
      ## initialize m to NULL
      m <- NULL
      ## create set function
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      ## create get function
      get <- function()x
      ## invert m
      m <<- solve(x)
      ## set origMatrix as supervariable so can test for computation of inverse in cacheSolve
      origMatrix <<- x     
}


## ___________________________________
## START cacheSolve general comments
## 
## cacheSolve tests to see whether the inverse of the matrix object returned
## by function makeCacheMatrix has already been computed; if so, it returns
## what it has cached. If the inverse has not been computed and the matrix is
## unchanged, this function computes, caches, and returns the inverse
##
## END cacheSolve general comments
## ___________________________________

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      
      ## if the inverse of the matrix has been computed, grab info from cache
      if(!is.null(m) && origMatrix == x) {
            message("getting cached data")
            return(m)
      }
      else{	
            ## the inverse of the matrix has not been computed, so compute and return it
            m <- solve(x)
            m
      }      
}
