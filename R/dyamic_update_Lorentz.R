dynam_update_Lorentz= function(x,dt,Sigma,r,b){
  c(x[1]+dt*(-Sigma*x[1]+Sigma*x[2]),
    x[2]+dt*(-x[2]+r*x[1]-x[1]*x[3]),
    x[3]+dt*(-b*x[3]+x[1]*x[2]))
}
dynam_update_Lorentz_param = function(x,param){
  dynam_update_Lorentz(x,param$dt,param$Sigma,param$r,param$b)
}
