#ply_shift_coord
ply_shift_coord = function(fListPly,iter = list(x = c(1,3),
                                         y = c(0,2),
                                         z = c(-1,4)),
                           init = list(x=1,y=1.5,z = 1),
                           optimFunc = optim_midp,nply_iter = 5,...){
  flow = init
  l = length(iter)
  f= function(var,fListPly,# = get('f',pos = 'ply_shift_coord'),
                      flow,#= get('flow',pos = 'ply_shift_coord'),
                      flowInd){# = get('j',pos = 'ply_shift_coord')){
    flow[[flowInd]] = var
    fListPly(flow)
  }
  #if(!l==length(formals(f))) warning('length of list unequal to the no. of func')
  for(i in 1:nply_iter){
    for(j in 1:l){
      flowIter = iter[[j]]
      opt = optimFunc(f,init1 = flowIter,flow=flow,flowInd = j,
                      fListPly = fListPly,...)
      flow[[j]] = opt$dep
    }
  }
  opt = list(opt = opt$opt,dep = flow)
  return(opt)
}

#ply_shift_coord((function(l) l$x^2+l$y^2-3*l$z^2))
