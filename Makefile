GAPI_PROTO ?= .

proto:
	protoc --proto_path=$(GAPI_PROTO) --go_out=. --go_opt=paths=source_relative gapi/annonation.proto
	go mod tidy
