.PHONY: image install run

image:
	docker build -t helloworld:extension .

install:
	docker extension install helloworld:extension -f

uninstall:
	docker extension rm helloworld:extension ||true

run:
	docker run -d --rm --pid=host --privileged -p 8129:8080 helloworld:extension 

