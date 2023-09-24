FROM postman/newman
COPY run.sh /etc/newman/run.sh
RUN chmod a+x /etc/newman/run.sh
COPY api-testing.postman_collection.json /etc/newman/demo.json
COPY day2.postman_collection.json /etc/newman/demo2.json
COPY test.postman_environment.json /etc/newman/test.json
COPY automated.postman_environment.json /etc/newman/test2.json
ENTRYPOINT [ "sh" ]
CMD [ "run.sh" ]