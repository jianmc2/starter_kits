FROM tigergraph:latest

RUN groupadd sshgroup && useradd -ms /bin/bash -g sshgroup sshuser

RUN mkdir -p /home/sshuser/.ssh

COPY /home/runner/.ssh/id_rsa.pub /home/sshuser/.ssh/authorized_keys

RUN chown -R user:user /home/user/.ssh

USER user
