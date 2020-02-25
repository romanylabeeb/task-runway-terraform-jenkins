FROM python:3
RUN pip install --upgrade pip
RUN pip install runway -q
RUN  mkdir -p ~/tmp/terraform

RUN curl https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_linux_amd64.zip -o ~/tmp/terraform/terraform_linux_amd64.zip
RUN unzip ~/tmp/terraform/terraform_linux_amd64.zip -d ~/tmp/terraform_linux/
RUN cp ~/tmp/terraform_linux/terraform /usr/local/bin/
ADD ./runway-module ./task1/
RUN cd task1
#CMD ["runway","deploy"]
CMD ["bash"]