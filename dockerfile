FROM    nginx:latest
LABEL   maintainer="fandiabdillah@gmail.com"
RUN     apt-get update
WORKDIR /responsi/webutama
COPY    website-utama /responsi/webutama/
EXPOSE  80
CMD     ["bash"]