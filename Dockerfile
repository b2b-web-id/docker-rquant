FROM b2bwebid/r-base:bullseye
RUN apt install -y libcurl4-openssl-dev libgsl-dev libxml2-dev libglpk-dev && \
 apt clean
RUN Rscript --verbose -e 'install.packages(c("quantmod","timeDate","timeSeries","forecast","PortfolioAnalytics","Rglpk","Portfolio"))'
RUN Rscript --verbose -e 'remotes::install_github("b2b-web-id/yfinance")'
