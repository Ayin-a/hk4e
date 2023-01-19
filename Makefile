CUR_DIR=$(shell pwd)

.PHONY: build
build:
	mkdir -p bin/ && CGO_ENABLED=0 go build -ldflags "-X main.Version=$(VERSION)" -o ./bin/ ./cmd/...

.PHONY: dev_tool
dev_tool:
	# 安装natsrpc生成工具
	go install github.com/golang/protobuf/protoc-gen-go@v1.5.2
	go install github.com/byebyebruce/natsrpc/cmd/protoc-gen-natsrpc@develop

test:
	go test ./...

.PHONY: gen_natsrpc
gen_natsrpc:
	# 生成natsrpc协议代码
	protoc \
	--proto_path=gs/api \
	--go_out=paths=source_relative:gs/api \
	--natsrpc_out=paths=source_relative:gs/api \
	gs/api/*.proto
	protoc \
	--proto_path=node/api \
	--go_out=paths=source_relative:node/api \
	--natsrpc_out=paths=source_relative:node/api \
	node/api/*.proto

.PHONY: gen_proto
gen_proto:
	# 生成客户端协议代码
	cd protocol/proto_hk4e && \
	rm -rf ./proto && mkdir -p proto && \
	protoc --proto_path=./ --go_out=paths=source_relative:./proto ./*.proto && \
	protoc --proto_path=./ --go_out=paths=source_relative:./proto ./cmd/*.proto && \
	protoc --proto_path=./ --go_out=paths=source_relative:./proto ./pb/*.proto && \
	protoc --proto_path=./ --go_out=paths=source_relative:./proto ./server_only/*.proto && \
	mv ./proto/cmd/* ./proto/ && rm -rf ./proto/cmd && \
	mv ./proto/pb/* ./proto/ && rm -rf ./proto/pb && \
	mv ./proto/server_only/* ./proto/ && rm -rf ./proto/server_only && \
	rm -rf ../proto && mkdir -p ../proto && mv ./proto/* ../proto/ && rm -rf ./proto && \
	cd ../../
