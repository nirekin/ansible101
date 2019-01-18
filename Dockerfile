FROM ekaraplatform/ansible-docker-alpine:1.0.0-beta1
ENV abc=hello
	
WORKDIR /tmp

COPY  test.yml .
COPY test_param.yml .

CMD [ "ansible-playbook", "test.yml" ]