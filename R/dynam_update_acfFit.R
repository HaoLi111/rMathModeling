dynam_update_acfFit = function(x,Model,dt = 1){
  c(t+dt,coef(Model) * x[1:(length(x)-1)],x[2:(length(x)-2)])
}
