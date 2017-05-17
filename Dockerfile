FROM centos:latest

RUN yum update
RUN yum install -y xinetd tftp-server tftp

# Cria diretório para TFTP
VOLUME /tftp_dir

EXPOSE 69

CMD /usr/sbin/in.tftpd --foreground -c -s -v -v -v /tftp_dir
