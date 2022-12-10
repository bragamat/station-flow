FROM openebs/ansible-runner

WORKDIR app
COPY station-setup.yml .
COPY tasks/ tasks/
RUN apt update -y && apt install git -y

CMD ["bash"]
