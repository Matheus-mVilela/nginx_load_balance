FROM nginx:1.17-alpine
COPY balancer/nginx.conf etc/nginx/conf.d/nginx.conf
CMD ["nginx", "-g", "daemon off;"]