FROM postman/newman
COPY api-testing.postman_collection.json /etc/newman/demo.json
COPY test.postman_environment.json /etc/newman/test.json
CMD [ "run", "demo.json","-e", "test.json", "-r", "cli,junit" ]