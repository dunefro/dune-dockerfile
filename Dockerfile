FROM amazon/aws-cli
ARG AWS_ROLE_ARN
ARG AWS_TOKEN
ENV AWS_ROLE_ARN=$AWS_ROLE_ARN
ENV AWS_WEB_IDENTITY_TOKEN_FILE="/var/run/secrets/eks.amazonaws.com/serviceaccount/token"
RUN ls -l /var/run
RUN ls -l /var/run/secrets/
RUN ls -l /var/run/secrets/eks.amazonaws.com
RUN ls -l /var/run/secrets/eks.amazonaws.com/serviceaccount
RUN --mount=type=secret,id=aws,target=/var/run/secrets/eks.amazonaws.com/serviceaccount/token aws s3 ls
