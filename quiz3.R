library(datasets)
data(iris)
s <- split(iris, iris$Species)
#v <- s["virginica"]
v<-sapply(s, function (x) colMeans(x[,c("Sepal.Length", "Sepal.Width")], na.rm=TRUE))
#apply(s, 2, mean)
#colMeans(s, na.rm= TRUE, dims = 2)
v