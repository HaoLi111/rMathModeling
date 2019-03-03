

dynam_update_Julia<-function(z,C) z=z^2+C

#dynam_escapeStep(0,n=1000)


ply_complexBase=function(re,im,f,loop = T,...){
  grid = as.matrix(expand.grid(re,im))
  nr=length(re)
  nc=length(im)
  comp = complex(real = grid[,1],imaginary = grid[,2])
  if(isTRUE(loop)){
    re = numeric(nc*nr)
    for(i in 1:(nc*nr))   re[i] = f(comp[i],...)
  }else{
    re = f(comp,...)
  }
  dim(re) = c(nc,nr)
  re
}

#image(ply_complexBase(1:10,1:10,Mod,loop=T))

#ply_Julia = function(re,im,C,n=100){
 # ply_complexBase(re,im,dynam_escapeStep,itfunc=dynam_update_Julia,takein=C,n=n)
#}
#image(ply_Julia(seq(from=-2,to=2,by=.01),seq(from=-2,to=2,by=.01),
#   complex(real = .4,imaginary = .5),n=1000))
