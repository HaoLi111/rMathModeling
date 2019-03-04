probs_densityF_check =function(exp,rge){
  check1 = abs(integrate(exp,rge[1],rge[2]))
  if(as.numeric(check1$value)<=as.numeric(check1['abs.error'])){
    warnings('integrated result unequal to 1')
    return(FALSE)
  }
  return(TRUE)
}
