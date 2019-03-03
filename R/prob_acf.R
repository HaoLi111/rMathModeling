ts_lag = function(x,n) c(rep(NA,n),x[1:(length(x) - n)])

ply_df_lag=function(x,...) UseMethod('ply_df_lag')
ply_df_lag.numeric = function(x,n=1:3,...){
  coln = c(deparse(substitute(x)),paste0('lag',n));xv=x
  x = eval(parse(text = (paste0('data.frame(',deparse(substitute(x)),'=x)'))))
  for (i in n)(
    x = cbind(x, c(rep(NA,n),xv[1:(length(xv) - i)]))
  )
  colnames(x)=coln
  x
}
ply_df_lag.data.frame=function(x,n=1:3,ind=2,...){
  xv = x[,ind,drop = T]
  for (i in n)(
    x = cbind(x, c(rep(NA,n),xv[1:(length(xv) - i)]))
  )
  cn = colnames(x)
  cn[(length(cn)-length(n)):length(cn)] = paste('lag','n')
  colnames(x)=cn
  x
}

#'%ply+%' = function(a,b) paste(paste0(a,b),'+',collapse = T)
#'%ply*%' = function(a,b) paste(paste0(a,b),'*',collapse = T)

#ply_df_lm = function(x,n)
