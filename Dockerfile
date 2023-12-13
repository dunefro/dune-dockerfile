FROM amazon/aws-cli
ARG AWS_ROLE_ARN
ARG AWS_TOKEN
ENV AWS_ROLE_ARN=$AWS_ROLE_ARN
ENV AWS_WEB_IDENTITY_TOKEN_FILE="/var/run/secrets/eks.amazonaws.com/serviceaccount/token"
COPY --from=tfy-secrets eks.amazonaws.com/serviceaccount/token /var/run/secrets/eks.amazonaws.com/serviceaccount/token
# RUN --mount=type=bind,from=/var/run/secrets/eks.amazonaws.com/serviceaccount/,target=/var/run/secrets/eks.amazonaws.com/serviceaccount/
# RUN mkdir -p /var/run/secrets/eks.amazonaws.com/serviceaccount/
# RUN ls -l /var/run
# RUN ls -l /var/run/secrets/
# RUN ls -l /var/run/secrets/eks.amazonaws.com
# RUN ls -l /var/run/secrets/eks.amazonaws.com/serviceaccount
RUN aws s3 ls
CMD sleep 10000
