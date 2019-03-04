probs_r = function(x,...) UseMethod('probs_r')
probs_q = function(x,...) UseMethod('probs_q')
probs_d = function(x,...) UseMethod('probs_d')
probs_ = function(x,...) UseMethod('probs_')

probs_r.binom = function(x,n...) rbinom(n,size = as.numeric(x$size),prob = as.numeric(x$prob))
probs_q.binom = function(x,p,...) pbinom(p,size = as.numeric(x$size),prob = as.numeric(x$prob),...)
probs_d.binom = function(x,xbase,...) dbinom(xbase,size=as.numeric(x$size),prob = as.numeric(x$prob),...)
probs_.binom = function(x,q) pbinom(q, size=as.numeric(x$size), prob = as.numeric(x$prob),...)

