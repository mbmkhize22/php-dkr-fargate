FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html

# Set correct permissions and ownership
RUN chmod 644 /usr/share/nginx/html/index.html && \
    chmod 755 /usr/share/nginx/html && \
    chown -R nginx:nginx /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
