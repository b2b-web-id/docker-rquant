FROM b2bwebid/r-base:trixie
RUN apt install -y libcurl4-openssl-dev libgsl-dev libxml2-dev libglpk-dev \
                   file libssl-dev libfontconfig1-dev && \
 apt clean
RUN Rscript --verbose -e 'install.packages("quantmod")'
RUN Rscript --verbose -e 'install.packages("timeSeries")'
RUN Rscript --verbose -e 'install.packages("forecast")'
RUN Rscript --verbose -e 'install.packages("Portfolio")'
RUN Rscript --verbose -e 'install.packages("Rglpk")'
RUN Rscript --verbose -e 'install.packages("PortfolioAnalytics")'
RUN Rscript --verbose -e 'install.packages("TTR")'
RUN Rscript --verbose -e 'remotes::install_github("b2b-web-id/yfinance")'
