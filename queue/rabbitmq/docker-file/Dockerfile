FROM rabbitmq:3.8.9-management
ADD ./plugins/* /opt/rabbitmq/plugins/
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange