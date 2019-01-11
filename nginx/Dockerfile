FROM nginx as myimage
WORKDIR /usr/share/nginx/html
COPY index.html ./

FROM myimage
WORKDIR /usr/share/nginx/html
RUN echo "this is a new file" > index.html
