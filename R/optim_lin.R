#optim_lin
optim_lin = function(f,init1,init2=NULL,n = 100,...){
  if(is.null(init2)){
    init2 = as.numeric(init1[2])
    init1 = as.numeric(init1[1])
  }
  iterOver = seq(from = init1,to =init2,length.out = n)
  re = sapply(iterOver,f,...)
  list(opt = min(re),
       dep = iterOver[which.min(re)])
}
