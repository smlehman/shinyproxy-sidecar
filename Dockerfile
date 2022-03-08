FROM --platform=linux/amd64 alpine:3.6
##  --platform=linux/amd64 not necessary unless building from Mac with Apple silicon 
ADD https://storage.googleapis.com/kubernetes-release/release/v1.22.4/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
EXPOSE 8001
ENTRYPOINT ["/usr/local/bin/kubectl", "proxy"]