## This R script contains 2 functions, used to create an inverted matrix and cache it
## makeCacheMatrix
## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
       invertedMatrix <-NULL
        set<-function(y){
                x<<-y
              invertedMatrix <<-NULL
                }
        get<-function()x
        setInvertedMatrix <-function(inverse) invertedMatrix<<-inverse
        getInvertedMatrix <-function() invertedMatrix
        list(set=set,get=get,setInvertedMatrix=setInvertedMatrix,getInvertedMatrix=getInvertedMatrix)
}

## cacheSolve
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
       invertedMatrix<-x$getInvertedMatrix()
        if(!is.null(invertedMatrix)))   {
                message("Getting cached data")
                return (invertedMatrix)
                           }
data<-x$get()
        invertedMatrix<-solve(data,...)
        x$setInvertedMatrix(invertedMatrix)
        return(invertedMatrix)
}
