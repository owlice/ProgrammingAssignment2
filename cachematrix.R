## Function written by Alice Allen


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
## START makeCacheMatrix comments
## 
## makeCacheMatrix creates a matrix object that can cache its inverse
##
## END makeCacheMatrix comments
## ___________________________________
##

makeCacheMatrix <- function(x = matrix()) {

}


## ___________________________________
## START cacheSolve comments
## 
## cacheSolve tests to see whether the inverse of the matrix object returned
## by function makeCacheMatrix has already been computed; if so, it returns
## what it has cached. If the inverse has not been computed and the matrix is
## unchanged, this function computes, caches, and returns the inverse
##
## END cacheSolve comments
## ___________________________________

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
