FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
ARG FUNCTION_DIR="/home/app/"
RUN mkdir -p ${FUNCTION_DIR}
WORKDIR ${FUNCTION_DIR}
COPY awsconfig.sh conversionSetup.sh return-code.py conversion.sh amazon-login.sh ./
RUN chmod +x awsconfig.sh conversionSetup.sh return-code.py conversion.sh amazon-login.sh
RUN ./awsconfig.sh && \
	./conversionSetup.sh && \
	./amazon-login.sh
#ADD https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie /usr/bin/aws-lambda-rie
#COPY start-lambda.sh /start-lambda.sh
#RUN chmod 755 /usr/bin/aws-lambda-rie /start-lambda.sh
#ENTRYPOINT [ "/start-lambda.sh" ]
ENTRYPOINT [ "/usr/bin/python3", "-m", "awslambdaric" ]
CMD [ "return-code.handler" ]
