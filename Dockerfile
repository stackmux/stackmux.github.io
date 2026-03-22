FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY favicon.svg /usr/share/nginx/html/
COPY og-image.png /usr/share/nginx/html/
COPY og-image.svg /usr/share/nginx/html/
COPY robots.txt /usr/share/nginx/html/
COPY sitemap.xml /usr/share/nginx/html/
COPY fonts/ /usr/share/nginx/html/fonts/

EXPOSE 80
