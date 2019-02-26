dynam_cat = function(init,index,
                     Fupdate,
                     record_per=1,
                     file = tempfile(),
                     type = '.csv'){
  no_it=floor(length(index)/record_per)# # of iterations
  no_var=length(init)+1      # # of  recorded variable
  if(type=='.csv'){
    clb = ','
  }else if(type =='.txt'){
    clb='    '
  }
  stopifnot(no_it>0)
    flow = init
    for(i in seq_along(index)){
      flow = Fupdate(flow)
      if(i%%record_per==0) writeLines(paste0(c(index[i],flow),collapse = clb),con=file)
    }
    return(0)
}

