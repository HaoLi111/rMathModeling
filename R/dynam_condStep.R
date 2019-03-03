dynam_escapeStep = function(m,modlim=2,itfunc=dynam_update_Julia,takein=0,n=100){
  i<-0
  while(Mod(m)<modlim&i<n){
    i<-i+1
    if(is.null(takein)){
      m<-itfunc(m)
    }else{
      m<-itfunc(m,takein)
    }
  }
  i
}

dynam_condStep = function(m,condf,itfunc,takein=NULL,n=100){
  i<-0
  while(isTRUE(condf(m)) && (i<n)){
    i<-i+1
    if(is.null(takein)){
      m<-itfunc(m)
    }else{
      m<-itfunc(m,takein)
    }
  }
  i
}
