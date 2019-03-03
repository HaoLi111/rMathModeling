#optim_rand
optim_rand = function(f,init1,init2 = NULL,
                      n = 100){
  if(is.null(init2)){
    init2 = as.numeric(init1[2])
    init1 = as.numeric(init1[1])
  }
  base = runif(n,min = init1,max=init2)
  re = f(base)
  list(opt = min(re,na.rm = T),
       dep = base[which.min(re)])
}
#optim_rand(x = (function(x) TRUE),f = (function(x) x^2),lim = c(-1,10))
parOptim_rand = function(f,init1,init2 = NULL,n=1e5,divide = 4){
  if(is.null(init2)){
    init2 = as.numeric(init1[2])
    init1 = as.numeric(init1[1])
  }
  re=foreach(i = 1:divide,.combine = rbind) %dopar% {
    base = runif(n,min = init1,max=init2)
    r = ifelse(isTRUE(x(base)),
                f(base),NA)
    c(opt = min(r,na.rm = T),
         dep = base[which.min(r)])
  }
  list(opt = min(re[,2],na.rm = T),
       dep = re[which.min(re[,2]),1])
}
#require(doParallel)
#registerDoParallel(4)
#system.time({
#  opt = parOptim_rand(x = (function(x) TRUE),f = (function(x) x^79),lim = c(-100,10),n=100)
#  print(opt)
#})

#system.time({
#  opt = optim_rand(x = (function(x) TRUE),f = (function(x) x^79),lim = c(-100,10),n=100)
#  print(opt)
#})
#optim_mvar_rand = function(x,f,lim){
#
#}
