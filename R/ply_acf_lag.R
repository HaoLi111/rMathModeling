#ply_cum_formula

#termsName = c('t','lag')
#terms = 1:3
#cn = c(termsName[1],paste(termsName[-1],terms,sep = '_'))

#ply_plus = paste(cn,collapse = '+')
# = paste(cn,collapse = '*')

#cn
#target = 'a'
# = ply_plus
#ply_cum_lm = eval(paste('lm(',target,'~',fml,',',dt,')'))

ply_acf_lag = function(dt,target,lags = 1:3,lagName = 'lag',bind = '+',
                       include.t = T){
  re = list()
  for(i in lags){
    ri = list(nLags = i)
    term = paste0(lagName,lags[1:i])
    formulaChar = paste(term,collapse = bind)
    if(include.t==T){
      formulaChar = paste0(formulaChar,'+t')
    }
    #Model = eval(parse(text=paste('lm(',target,'~',fml,',data = dt)')))
    ri$Model = lm(as.formula(paste(target,'~',formulaChar)),data = dt)
    ri$term = term
    ri$formulaChar = formulaChar
    re[[i]] = ri
  }
  re
}
#model = ply_acf_lag(cm1df,target = 'cm1')

#m1 = model[[1]][['Model']]
#coefs = coefficients(m1)
#class(coefs)

#(model[[1]]['Model'][['Coefficients']])
