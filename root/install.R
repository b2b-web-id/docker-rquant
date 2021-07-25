paket <- c('quantmod','fPortfolio','PortfolioAnalytics',
           'fArma','forecast','PairTrading','timeSeries','xts')
for(i in paket) {
  install.packages(i, ask=F, repo="https://cran.rstudio.com/")
}
