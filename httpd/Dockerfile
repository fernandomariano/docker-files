FROM centos:latest

RUN yum install httpd -y

# Add Tini
# ENV TINI_VERSION v0.18.0
# ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
# RUN chmod +x /tini
# ENTRYPOINT ["/tini", "--"]

# Run your program under Tini
# CMD ["/your/program", "-and", "-its", "arguments"]
EXPOSE 80
CMD ["httpd", "-DFOREGROUND"]
# or docker run your-image /your/program ...
