library(caret)
data(Sacramento)
house_missing=Sacramento
set.seed(1031)
for(i in 1:sample(150:300,1)){
  set.seed(i)
  x=sample(1:nrow(Sacramento),1)
  y=sample(c(3,4,5,7),1)
  house_missing[x,y]=NA
}

set.seed(1031)
house_caret=predict(preProcess(house_missing,method='bagImpute'),newdata=house_missing)

