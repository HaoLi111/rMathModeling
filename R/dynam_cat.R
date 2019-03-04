dynam_cat = function(init,index,
                     Fupdate,
                     record_per=1,
                     file = NULL,
                     form = '.csv',
                     cat_per = 10,
                     writeF = write.csv,...){
  if(is.null(file)) {
    file = sapply(1:(length(index)/cat_per/record_per),as.character)
  }
  no_it=floor(length(index)/record_per)#  of iterations
  no_cat = length(file)
  i=1
  flow = init
  for(j in 1:no_cat){
    temp = dynam_record(flow,index = index[i:(i+cat_per*record_per-1)],.combine = 'rbind',Fupdate,record_per)
    flow = temp[nrow(temp),]
    writeF(temp,paste0(file[j],form))
    i = i+cat_per*record_per
  }
    return(0)
}


