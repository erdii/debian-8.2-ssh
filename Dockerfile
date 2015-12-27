FROM debian:8.2
MAINTAINER erdii <erdii@nym.hush.com>

RUN apt-get update && apt-get install -y openssh-server wget git zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
      && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
      && chsh -s /bin/zsh

RUN mkdir /var/run/sshd
RUN echo "root:screencast" | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
