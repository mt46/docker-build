# Build on 10 Oct 2020
FROM centos:latest

ENV TZ=Asia/Singapore

# Set Timezone, System Update
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
&& dnf -y upgrade
