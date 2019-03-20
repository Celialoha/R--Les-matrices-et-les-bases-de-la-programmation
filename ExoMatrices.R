mat<-matrix(sample(1:100,15))
View(mat)
mat<-matrix(sample(1:100,15), ncol = 3, nrow = 5)
colnames(mat)<- c("compte", "pep", "pel")
rownames(mat)<-c("Fred","Sam","Elsa","Tom","Vanessa")
mat[1,c(2,3)]
mat[2,c(1:3)]
mat["Fred",]
mat["Fred", "pep"]
mat[c("Fred","Vanessa"), "pel"]
mat[c("Fred","Vanessa"), "pel"]<-c(2000,3000)
mat2<-matrix(sample(0:4,15, replace = TRUE), nrow = 5)
mat*mat2
rowSums(mat)
colSums(mat)
rowMeans(mat)
colMeans(mat)
if(5<=7 & 6=7){
  print("test OK")
}else{
  print("le test n'est pas OK")
}

test<-c(2,4,8,6,4,7)
for(i in test){
  if(i>5)
  print(i)
}

i<-1
while(i<6){
  print(i)
  i<-i+1
}

sup5<-function(vec){
  resultat<-c()
  pos<-1
  for(i in test){
    if(i>5){
      resultat[pos]<-i
      pos<-pos+1
    }
  }
  return(resultat)
}

sup5(test)


# -- Exercices --
# A)
x<-matrix(sample(1:100, 70), 7, 10)
View(x)
# 1)
x[4,3]
# 2)
x[6,]
# 3)
x[,c(1,4)]
# 4)
which(x[1:7,1] > 50)

# B)
z<-matrix(sample(1:100, 70), 7, 10)
View(z)
# 1)
rowSums(z)
# 2)
rowMeans(z)
# 3)
max(z[1:3,1:3])
# 4)
z[rowMeans(z)>7,]

# C)
temps <- c(10.06,10.03,10.02,9.95,10.04,10.07,
           10.08,10.05,9.98,10.09,10.01,10.00,
           9.97,9.93,9.96,9.99,9.92,9.94,
           9.90,9.86,9.88,9.87,9.85,9.91,
           9.84,9.89,9.79,9.80,9.82,9.78,
           9.77)

names(temps) <- c("1964-10-15","1968-06-20",
                  "1968-10-13","1968-10-14","1968-10-14",
                  "1968-10-14","1968-10-14","1975-08-20",
                  "1977-08-11","1978-07-30","1979-09-04",
                  "1981-05-16","1983-05-14","1983-07-03",
                  "1984-05-05","1984-05-06","1988-09-24",
                  "1989-06-16","1991-06-14","1991-08-25",
                  "1991-08-25","1993-08-15","1994-07-06",
                  "1994-08-23","1996-07-27","1996-07-27",
                  "1999-06-16","1999-08-22","2001-08-05",
                  "2002-09-14","2005-06-14")
temps

d<-as.Date(names(temps), format='%Y-%m-%d')
year <- as.numeric(format(d,'%Y'))
year

names(temps)<-year
temps

temps[match(unique(cummin(temps)),temps)]


#i<-1
#mini<-0
#annee<-0
#nouvelleannee<-0

# récupérer l'année - vérifier le temps pour prendre le minimum - passer à l'annee suivante

# pour chaque annee du vecteur names temps,
#for (an in temps){
  # compare l'annee et l'an si !=, stocke an dans annee, recupere ou print score
  # si == , 
  #if (an != annee) == annee {
    #print min(names(temps) == annee
  #}
#}

#names(temps)==1968



# D)

testfonction = function(temps){
  for (i in 1:length(temps)){
    
    if (temps[i] > 10.00 & temps[i] < 10.04){
      temps[i] = 10
      print(temps[i])
    }
    if (temps[i] > 10.03 & temps[i] < 10.07){
      temps[i] = 10.03
    }
    if(temps[i] > 10.06){
      temps[i] = 10.04
    }
  }
}
testfonction(temps)
