FROM amazon/aws-cli
ARG AWS_ROLE_ARN
ARG AWS_TOKEN
ENV AWS_ROLE_ARN=$AWS_ROLE_ARN
ENV AWS_WEB_IDENTITY_TOKEN_FILE=$AWS_TOKEN
RUN --mount=type=bind,target=/var/run/secrets/eks.amazonaws.com/serviceaccount/token123
RUN aws s3 ls
