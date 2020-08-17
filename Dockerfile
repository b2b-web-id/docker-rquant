FROM b2bwebid/r-base:buster
ADD root /root
RUN apt update && apt upgrade -y && \
 apt install libcurl4-openssl-dev
RUN Rscript --verbose /root/install.R

