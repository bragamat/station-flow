run:
	ansible-playbook station-setup.yml

build-env:
	docker build -t station-setup-test-env .

start-env: build-env
	docker run --rm -it --name dev-station station-setup-test-env

