FROM b2bwebid/r-base:bullseye
RUN apt install -y libcurl4-openssl-dev libgsl-dev libxml2-dev libglpk-dev && \
 apt clean
RUN Rscript --verbose -e 'install.packages(c("quantmod"))'
RUN Rscript --verbose -e 'install.packages(c("timeDate","timeSeries"))'
RUN Rscript --verbose -e 'install.packages(c("forecast"))'
RUN Rscript --verbose -e 'install.packages(c("PortfolioAnalytics"))'
RUN Rscript --verbose -e 'install.packages(c("Rglpk"))'
RUN Rscript --verbose -e 'install.packages(c("fPortfolio"))'

