FROM mt46/devops:baseos

# Install python, pip, Install EPEL repo, Install Ansible, Utilities: openssh-clients bind-utils git
RUN dnf -y install python3-pip \ 
&& curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py --user \
&& export PATH=~/.local/bin:$PATH && source ~/.bash_profile

# Install AWS CLI
RUN pip3 install awscli --upgrade --user \
&& echo 'pathmunge ~/.local/bin' > /etc/profile.d/awscli.sh && chmod +x /etc/profile.d/awscli.sh

# Install Ansible
RUN pip3 install ansible --upgrade --user

# Install EPEL repo
# Utilities: openssh-clients bind-utils git
RUN dnf -y install epel-release openssh-clients bind-utils git
