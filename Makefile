VERSION=$(shell git describe  --tags --abbrev=0)-$(shell git  rev-parse HEAD --short)
TARGETOS=linux
format:
	gofmt -s -w ./


build: format
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=$(shell dpkg --print-architecture)  go build -v -o kbot -ldflags "-X="github.com/yuryklimovy/kbot/cmd.appVersion=${VERSION}
	