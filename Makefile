
filename=history.txt.png

build:
	docker build -t eyedeekay/i2p .

run: build clean
	docker run -d -i -t --name i2p -p 127.0.0.1:7657:7657 eyedeekay/i2p

clean:
	docker rm -f i2p; true

get:
	./spider

repo-clean:
	git filter-branch --prune-empty -d /dev/shm/scratch \
		--index-filter "git rm --cached -f --ignore-unmatch $(filename)" \
		--tag-name-filter cat -- --all
