GAPI_PROTO ?= .

PROTOS = gapi/annotation.proto gapi/httpview/http.proto

proto:
	protoc --proto_path=$(GAPI_PROTO) --go_out=. --go_opt=paths=source_relative $(PROTOS)
	go mod tidy
