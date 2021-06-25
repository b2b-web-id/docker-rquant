FROM b2bwebid/r-base:buster
ADD root /root
RUN apt update && apt upgrade -y && \
 apt install -y libcurl4-openssl-dev libgsl-dev libxml2-dev
RUN Rscript --verbose /root/install.R

