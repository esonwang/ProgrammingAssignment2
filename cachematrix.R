## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
         m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }   ##设置新矩阵用
        get<-function() x   ##获得矩阵
        setmatrix<-function(matrix) m<<-matrix 
        getmatrix<-function() m ##获得逆矩阵
        list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()   ##判断是否有CACHED DATA
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data<-x$get()
        m<-solve(data,...) ##没有重新计算
        x$setmatrix(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
