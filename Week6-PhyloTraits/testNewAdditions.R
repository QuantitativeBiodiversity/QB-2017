
rm(list = ls())
getwd()
setwd("~/GitHub/QB-2017/Week6-PhyloTraits")



orf <- readDNAStringSet("./data/p.isolates.fasta", format = "fasta")
test <- muscle(orf, out = "./data/p.isolates_test.afa")

phy <- sim.bdtree(n=10)
dat <- sim.char(rescale(phy, "lambda", .5), 1)[,1,]
out <- pmc(phy, dat, "BM", "lambda", nboot = 50)