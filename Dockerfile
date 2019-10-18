FROM mt46/devops:baseos

# Install python, pip, AWS CLI, Ansible
RUN dnf -y install python3-pip \ 
&& curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py --user \
&& export PATH=~/.local/bin:$PATH && source ~/.bash_profile \
&& pip3 install awscli --user \
&& echo 'pathmunge ~/.local/bin' > /etc/profile.d/awscli.sh \
&& chmod +x /etc/profile.d/awscli.sh \
&& pip3 install ansible --user

# Install EPEL repo
# Utilities: openssh-clients bind-utils git
RUN dnf -y install epel-release openssh-clients bind-utils git
