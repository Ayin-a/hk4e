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
	go install github.com/byebyebruce/natsrpc/cmd/protoc-gen-natsrpc@develop

test:
	go test ./...

.PHONY: gen
# gen 生成代码
gen:
	protoc \
	--proto_path=gs/api \
	--go_out=paths=source_relative:gs/api \
	--natsrpc_out=paths=source_relative:gs/api \
	gs/api/*.proto
	#cd protocol/proto && make gen


