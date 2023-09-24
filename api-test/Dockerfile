FROM postman/newman
COPY api-testing.postman_collection.json /etc/newman/demo.json
COPY day2.postman_collection.json /etc/newman/demo2.json
COPY test.postman_environment.json /etc/newman/test.json
COPY automated.postman_environment.json /etc/newman/test2.json
CMD [ "run", "demo2.json","-e", "test2.json", "-r", "cli,junit" ]