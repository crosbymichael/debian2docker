clean:
	docker rm run-debian2docker

all:
	docker build -t debian2docker -rm .
	docker run -i -t -privileged -name run-debian2docker debian2docker
	docker cp run-debian2docker:/root/lb/binary.hybrid.iso .
	mv binary.hybrid.iso debian2docker.iso
