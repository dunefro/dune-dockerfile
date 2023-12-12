FROM amazon/aws-cli
COPY ./token /var/run/secrets/eks.amazonaws.com/serviceaccount/token
ARG AWS_ROLE_ARN
ARG AWS_WEB_IDENTITY_TOKEN_FILE="/var/run/secrets/eks.amazonaws.com/serviceaccount/token"
RUN aws s3 ls