## ---- echo=FALSE--------------------------------------------------------
out_type <- knitr::opts_knit$get("rmarkdown.pandoc.to")

r = getOption("repos")
r["CRAN"] = "https://cran.rstudio.com/"
#r["CRAN"] = "https://cloud.r-project.org/"
#r["CRAN"] = "https://ftp.iitm.ac.in/cran/"
options(repos = r)

## ---- results='asis', echo=FALSE----------------------------------------
switch(out_type,
    html = {cat("<p>1. Professor of the Academic Department of Statistics and Informatics of the Faculty of Economics and Planning.National University Agraria La Molina-PERU.</p>")},
    latex = cat("\\begin{center}
1. Professor of the Academic Department of Statistics and Informatics of the Faculty of Economics and Planning.National University Agraria La Molina-PERU.

\\end{center}" )
)

## ----setup, include=FALSE-----------------------------------------------
knitr::opts_chunk$set(echo = TRUE,
                      comment = "",
                      fig.cap = "")

## ----echo = FALSE, message=FALSE----------------------------------------
library(pbkrtest)

## -----------------------------------------------------------------------
data(shoes, package="MASS")
shoes

## -----------------------------------------------------------------------
plot(A~1, data=shoes, col="red",lwd=2, pch=1, ylab="wear", xlab="boy")
points(B~1, data=shoes, col="blue", lwd=2, pch=2)
points(I((A+B)/2)~1, data=shoes, pch="-", lwd=2)

## -----------------------------------------------------------------------
r1<-t.test(shoes$A, shoes$B, paired=T)
r2<-t.test(shoes$A-shoes$B)
r1

## -----------------------------------------------------------------------
boy <- rep(1:10,2)
boyf<- factor(letters[boy])
mat <- factor(c(rep("A", 10), rep("B",10)))
## Balanced data:
shoe.b <- data.frame(wear=unlist(shoes), boy=boy, boyf=boyf, mat=mat)
head(shoe.b)
## Imbalanced data; delete (boy=1, mat=1) and (boy=2, mat=b)
shoe.i <-  shoe.b[-c(1,12),]

## -----------------------------------------------------------------------
lmm1.b  <- lmer( wear ~ mat + (1|boyf), data=shoe.b )
lmm0.b  <- update( lmm1.b, .~. - mat)
lmm1.i  <- lmer( wear ~ mat + (1|boyf), data=shoe.i )
lmm0.i  <- update(lmm1.i, .~. - mat)

## -----------------------------------------------------------------------
anova( lmm1.b, lmm0.b, test="Chisq" ) ## Balanced data
anova( lmm1.i, lmm0.i, test="Chisq" ) ## Imbalanced data

## -----------------------------------------------------------------------
( kr.b<-KRmodcomp(lmm1.b, lmm0.b) )

## -----------------------------------------------------------------------
summary(kr.b)

## -----------------------------------------------------------------------
getKR(kr.b, "ddf")

## -----------------------------------------------------------------------
(kr.i<-KRmodcomp(lmm1.i, lmm0.i))

## -----------------------------------------------------------------------
shoes2 <- list(A=shoes$A[-(1:2)], B=shoes$B[-(1:2)])
t.test(shoes2$A, shoes2$B, paired=T)

## -----------------------------------------------------------------------
(pb.b <- PBmodcomp(lmm1.b, lmm0.b, nsim=500, cl=2) )

## -----------------------------------------------------------------------
summary( pb.b )

## -----------------------------------------------------------------------
(pb.i<-PBmodcomp(lmm1.i, lmm0.i, nsim=500, cl=2))

## -----------------------------------------------------------------------
summary(pb.i)

## -----------------------------------------------------------------------
shoe3 <- subset(shoe.b, boy<=5)
shoe3 <- shoe3[order(shoe3$boy), ]
lmm1  <- lmer( wear ~ mat + (1|boyf), data=shoe3 )
str( SG <- get_SigmaG( lmm1 ), max=2)

## -----------------------------------------------------------------------
round( SG$Sigma*10 )

## -----------------------------------------------------------------------
SG$G

