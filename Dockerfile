# Pull the httpd image from DockerHub repository to build our application as a base
FROM httpd:2.4
# Copy the static page from the target directory to apache2 docs
COPY ./public-html/ /usr/local/apache2/htdocs/