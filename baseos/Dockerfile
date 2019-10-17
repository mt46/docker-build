# Build on 17 Oct 2019
FROM centos:latest

ENV TZ=Asia/Singapore

# Set Timezone, System Update
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
&& dnf -y upgrade