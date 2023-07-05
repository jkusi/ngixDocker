
FROM nginx:stable-alpine
RUN mkdir -p /usr/share/nginx/html
COPY Project1 /usr/share/nginx/html
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
