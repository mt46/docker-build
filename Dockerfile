FROM mt46/devops:baseos

# Install pip, Install EPEL repo, Install Ansible, Utilities: openssh-clients bind-utils git
RUN curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py --user \
&& export PATH=~/.local/bin:$PATH && source ~/.bash_profile && pip install awscli --upgrade --user \
&& echo 'pathmunge ~/.local/bin' > /etc/profile.d/awscli.sh && chmod +x /etc/profile.d/awscli.sh \
&& yum -y install epel-release ansible openssh-clients bind-utils git