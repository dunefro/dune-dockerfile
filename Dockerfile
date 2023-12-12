FROM amazon/aws-cli
ARG AWS_ROLE_ARN
ENV AWS_ROLE_ARN=$AWS_ROLE_ARN
ENV AWS_WEB_IDENTITY_TOKEN_FILE="/var/run/secrets/eks.amazonaws.com/serviceaccount/token"
RUN --mount=type=bind,target=/var/run/secrets/eks.amazonaws.com/serviceaccount/token
RUN aws s3 ls
