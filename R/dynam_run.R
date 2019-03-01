#dynam_update_lin
dynam_update_lin = function(x,A,b) A%*%x+b
dynam_update_lin_param = function(x,param) param$A%*%x+param$b

