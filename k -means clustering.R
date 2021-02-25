install.packages('ggplot2')
library(ggplot2)
data('iris')
View(iris)
cleandata = data.frame(Sepal.length = iris$Sepal.Length, 
                       Petal.length = iris$Petal.Length,
                       Species = iris$Species
                       stringsAsFactors = FALSE)
cleandata1 = data.frame(Sepal.length = iris$Sepal.Length, 
                       Petal.length = iris$Petal.Length,
                       stringsAsFactors = FALSE)


group = cleandata$Species
qplot(Petal.length,Sepal.length, color = group, data = cleandata)
model = kmeans(cleandata1,centers = 5)
model$cluster
cleandata2 = data.frame(Sepal.length = iris$Sepal.Length, 
                        Petal.length = iris$Petal.Length,
                        cluster = model$cluster,
                        stringsAsFactors = FALSE)
qplot(Petal.length,Sepal.length, color = model$cluster, data = cleandata)


