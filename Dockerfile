FROM mt46/devops:baseos

# Install python, pip, Install EPEL repo, Install Ansible, Utilities: openssh-clients bind-utils git
RUN yum -y install python3-pip \ 
&& curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py --user \
&& export PATH=~/.local/bin:$PATH && source ~/.bash_profile && pip3 install awscli --upgrade --user \
&& echo 'pathmunge ~/.local/bin' > /etc/profile.d/awscli.sh && chmod +x /etc/profile.d/awscli.sh \
&& dnf -y install epel-release ansible openssh-clients bind-utils git
