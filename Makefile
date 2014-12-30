IMAGENAME = neowaylabs/java8

all: build

build:
	docker build -t $(IMAGENAME) .

clean:
	docker images | awk -F' ' '{if ($$1=="$(IMAGENAME)") print $$3}' | xargs -r docker rmi

test:
	docker run --rm -t $(IMAGENAME) /sbin/my_init -- /usr/bin/java -version

bash:
	docker run --rm -t -i $(IMAGENAME) /sbin/my_init -- bash -l
