#dynam_update_lin
dynam_update_lin = function(x,A,b) A%*%x+b
dynam_update_lin_param = function(x,param) param$A%*%x+param$b

fern_eg = list(l1 = list(A = cbind(c(0,0),c(0,.16)),
                         b = c(0,0)),
               l2 = list(A = cbind(c(.2,.23),c(-.26,.22)),
                         b = c(0,1.6)),
               l3 = list(A = cbind(c(-.15,.26),c(.28,.24)),
                         b = c(0,.44)),
               l4 = list(A = cbind(c(.85,-.04),c(.04,.85)),
                         b = c(0,1.6)))
class(fern_eg) = c('CMT','IFS')
dynam = function(x,...) UseMethod('dynam')
dynam.CMT = function(x,
                     rge = list(0:1,
                                0:1),
                     n=2e4,iter=20){
  l = length(x)
  r =runif(n)
  Re = list()
  for(i in 1:length(x)){
    re = matrix(NA,n,2)
    for(j in 1:n){
      flow = base[j,]
      for(k in 1:iter){
        flow = dynam_update_lin_param(flow,x[[i]])
      }
      re[j,] = flow
    }
    Re[[i]] = re
  }
  class(Re) = c('CMTout','IFSout')
  Re
}
plot.CMTout= function(x){
  if(length(x)==1){
    plot(x,type = 'p')
  }else{
    xbase = x[[1]][,1,drop = T]
    ybase = x[[1]][,2,drop = T]
    for(i in 2:length(x)){
      xbase = c(xbase,x[[i]][,1,drop=T])
      ybase = c(ybase,x[[i]][,2,drop=T])
    }
    plot(xbase,ybase,type = 'p',col = rep(1:nrow(x[[1]]),each =length(x)))
  }
}

fern = dynam(fern_eg,n = 20000)
windows()
plot(fern)
