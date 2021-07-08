FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
#install software + remove cache
RUN apt-get update && \
	apt-get install -y \
	pandoc \
        poppler-utils \
	python3-pdfminer \
	&& rm -rf /var/lib/apt/lists/*
WORKDIR /home/ubuntu/
COPY ./conversion.sh .
CMD ["/home/ubuntu/conversion.sh"]
