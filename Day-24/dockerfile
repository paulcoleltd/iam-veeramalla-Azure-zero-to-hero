#select base images for hosting
FROM httpd:2.4

#selecting current working directory
WORKDIR /usr/local/apache2/htdocs/

#removing the current html file
RUN rm -rf index.html

#transfering our data in docker env
COPY . .