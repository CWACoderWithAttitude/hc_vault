FROM ubuntu:20.04
RUN apt-get update && apt-get install -y software-properties-common curl gnupg2 
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - 
RUN apt-add-repository "deb https://apt.releases.hashicorp.com $(lsb_release -cs) main" 
RUN apt-get update 
RUN apt-get install -y vault && setcap cap_ipc_lock= /usr/bin/vault
COPY run.sh .
RUN chmod 755 ./run.sh
CMD ./run.sh
#CMD /bin/bash

