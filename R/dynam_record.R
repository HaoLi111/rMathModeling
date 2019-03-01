#dynamic model simulation (Euler's method - general update and record)
dynam_record = function(init,...) UseMethod('dynam_record')

dynam_record.numeric = function(init,index,
                        Fupdate,.combine = 'rbind',#,param = NULL,#cond = NULL,
                        record_per=1,...){
  no_it=floor(length(index)/record_per)# # of iterations
  no_var=length(init)+1      # # of  recorded variable
  stopifnot(no_it>0)
  if(.combine=='rbind'){
    re = matrix(NA,no_it,no_var)
    flow = init
    for(i in seq_along(index)){
      flow = Fupdate(flow,...)
      if(i%%record_per==0) re[as.integer(i/record_per),] = c(index[i],flow)
    }
    return(re)
  }else if(.combine=='cbind'){
    re = matrix(NA,no_var,no_it)
    flow = init
    for(i in seq_along(index)){
      flow = Fupdate(flow,...)
      if(i%%record_per==0) re[,as.integer(i/record_per)] = c(flow,index[i])
    }
    return(re)
  }else if(.combine == 'list'){
    re = list(init=init)
    flow = init
    for(i in seq_along(index)){
      flow = Fupdate(flow,...)
      if(i%%record_per==0) re[[as.integer(i/record_per)+1]] = c(index[i],flow)
    }
    return(re)
  }
}

dynam_record.list =function(init,index,
                               Fupdate,.combine = 'rbind',#,param = NULL,#cond = NULL,
                               record_per=1){
  init_unlist = as.vector(unlist(init))
  no_it=floor(length(index)/record_per)# # of iterations
  no_var=length(init_unlist)+1      # # of  recorded variable
  stopifnot(no_it>0)
  if(.combine=='rbind'){
    re = matrix(NA,no_it,no_var)
    flow = init_unlist
    for(i in seq_along(index)){
      flow = Fupdate(flow,...)
      if(i%%record_per==0) re[as.integer(i/record_per),] = c(index[i],flow)
    }
    return(re)
  }else if(.combine=='cbind'){
    re = matrix(NA,no_var,no_it)
    flow = init_unlist
    for(i in seq_along(index)){
      flow = Fupdate(flow,...)
      if(i%%record_per==0) re[,as.integer(i/record_per)] = c(flow,index[i])
    }
    return(re)
  }else if(.combine == 'list'){
    re = list(init=init)
    flow = init
    for(i in seq_along(index)){
      flow = Fupdate(flow,...)
      if(i%%record_per==0) re[[as.integer(i/record_per)+1]] = c(index[i],flow)
    }
    return(re)
  }
}
