
format:
	gofmt -s -w ./

build:
	go build -v -o -ldflags "-X="github.com/yuryklimovy/kbot/cmd.appVersion=${VERSION}