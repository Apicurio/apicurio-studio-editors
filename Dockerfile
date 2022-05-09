FROM registry.access.redhat.com/ubi8/nginx-118

# Copy dist files
COPY --chown=1001:0 ./dist/editors/ .

EXPOSE 8080

# Run script uses standard ways to run the application
CMD /usr/libexec/s2i/run
