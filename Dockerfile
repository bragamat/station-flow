FROM openebs/ansible-runner

WORKDIR app

COPY station-setup.yml .
COPY dotfiles/ dotfiles/
COPY tasks/ tasks/

RUN apt update -y && apt install git -y

CMD ["bash"]
