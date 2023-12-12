FROM amazon/aws-cli
ARG AWS_ROLE_ARN
ARG AWS_TOKEN
ENV AWS_ROLE_ARN=$AWS_ROLE_ARN
ENV AWS_WEB_IDENTITY_TOKEN_FILE="/path/dont/exist"
RUN --mount=type=secret,id=aws,target=/var/run/secrets/eks.amazonaws.com/serviceaccount/token aws s3 ls
