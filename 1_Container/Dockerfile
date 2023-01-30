FROM ubuntu:20.04

RUN \
	apt-get update && \
	apt-get -y upgrade && \
	apt-get install -y openjdk-8-jre && \ #For msfragger
	apt-get install -y libgomp1 && \ #for msfragger
	apt-get install python3.6 && \ #python script for database splitting
	apt-get install -y python3-pip

RUN pip install numpy #for python
RUN pip install pandas #for python

CMD ["bash"]


