FROM nginx:alpine
COPY india-job-search.html /usr/share/nginx/html/index.html
EXPOSE 80
