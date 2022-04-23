FROM continuumio/anaconda3:2021.11

RUN apt-get update && \
    apt-get install curl -y

RUN curl -LJO "https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_amd64.deb" && \
    dpkg -i gitlab-runner_amd64.deb && \
    rm -rf gitlab-runner_amd64.deb

#conda install -c conda-forge python-ldap

COPY appconfig.tgz /opt/configscripts/appconfig.tgz

CMD ["sleep", "infinity"]