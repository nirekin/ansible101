FROM ekaraplatform/ansible-docker-alpine:1.0.0-beta1
ENV abc=hello
	
RUN mkdir -p /etc/ansible/group_vars
COPY global_param.yml /etc/ansible/group_vars/all
	
WORKDIR /tmp

COPY test.yml .
COPY test_param.yml .

CMD [ "ansible-playbook", "test.yml", "--extra-vars", "version=version_val other_variable=other_variable_val"]