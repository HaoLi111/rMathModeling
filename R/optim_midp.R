#optim_divide
optim_midp = function(f,init1,init2=NULL,n = 100,...){
  if(is.null(init2)){
    init2 = as.numeric(init1[2])
    init1 = as.numeric(init1[1])
  }
  r1 = f(init1,...)
  r2 = f(init2,...)
  stopifnot(init2>init1)
  for(i in 1:n){
    init3 = (init1+init2)/2#midp
    r3 = f(init3,...)
    if(r1==r2){
      #message(paste('optim interrupted by equivalent points at',i))
      if(r3<=r1){
        list(opt = r3,
             dep = init3)
      }else{
        warning('more than 1 opts are found')
        list(opt = c(r1,r2),
             dep = c(init1,init2))
      }
    }else if(r1>r2){
      init1 = init3
      r1 = r3
    }else{
      init2 = init3
      r2 = r3
    }
  }
  if(r1<r2){
    list(opt = r1,
         dep = init1)
  }else{
    list(opt = r2,
         dep = init2)
  }
}
#optim_midp((function(x) x^2),init1 = -.1,init2 = 11)
#optim()
