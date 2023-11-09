FROM amazonlinux:2.0.20221210.0

RUN yum update -y && \
    yum install -y \
      man \
      which \
      make \
      less \
      yum-utils \
      rpm-build \
      && \
    yum clean all
