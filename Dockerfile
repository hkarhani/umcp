FROM hkarhani/umc:latest
MAINTAINER hkarhani@gmail.com


WORKDIR /root

ADD install_2.sh ./
ADD requirements.txt ./
RUN chmod u+x ./install_2.sh
RUN sh install_2.sh

WORKDIR /notebooks

EXPOSE 8888

CMD jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root
