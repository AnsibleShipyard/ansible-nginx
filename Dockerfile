#
# jasongiedymin/ansible-nginx
#   docker build -t jasongiedymin/ansible-nginx .
#
# Requires:
# jasongiedymin/ansible-base-ubuntu
#   https://github.com/AnsibleShipyard/ansible-base-ubuntu
#

FROM jasongiedymin/ansible-base-ubuntu
MAINTAINER AnsibleShipyard

# Working dir
ENV WORKDIR /tmp/build/nginx
ENV NGINX_PREFIX /usr/local/nginx

# ADD
ADD meta $WORKDIR/meta
ADD tasks $WORKDIR/tasks
ADD tests $WORKDIR/tests
ADD vars $WORKDIR/vars
ADD templates $WORKDIR/templates
ADD handlers $WORKDIR/handlers

# Here we continue to use add because
# there are a limited number of RUNs
# allowed.
ADD tests/inventory /etc/ansible/hosts
ADD tests/playbook.yml $WORKDIR/playbook.yml

# Execute
RUN ansible-playbook $WORKDIR/playbook.yml -c local -vvvv

# TODO: in debug mode, leave. Prod, cleanup
# Cleanup
# RUN rm -R $WORKDIR

EXPOSE 80

# Safely assume that since we FROM'd the base ubuntu
# that the nginx bin is in the default location
CMD ["bash", "/usr/local/nginx/nginx-start.sh"]
