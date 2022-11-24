CUR_DIR=$(shell pwd)

.PHONY: build
# build
build:
	mkdir -p bin/ && CGO_ENABLED=0 go build -ldflags "-X main.Version=$(VERSION)" -o ./bin/ ./cmd/...

.PHONY: dev_tool
# 安装工具
dev_tool:
	# install protoc
	go install github.com/golang/protobuf/protoc-gen-go@v1.5.2

.PHONY: gen
# gen 生成代码
gen:
	cd protocol/proto && make gen

