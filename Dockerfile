FROM b2bwebid/r-base:latest
ADD root /root
RUN apt update && apt upgrade -y && \
 apt install libcurl4-openssl-dev
RUN Rscript --verbose /root/install.R

