dynam_update_compete_2species = function(x,dt,k1,k2,C1,C2,alpha){
  c(x[1]+dt*(k1*x[1]*(1-x[1]/C1)-alpha*x[1]*x[2]),
    x[2]+dt*(k2*x[2]*(1-x[2]/C2)-alpha*x[1]*x[2]))
}
dynam_update_compete_2species_param = function(x,param){
  dynam_update_compete_2species(x,param$dt,param$k1,param$k2,param$C1,param$C2,param$alpha)
}

