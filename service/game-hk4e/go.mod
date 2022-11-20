module game-hk4e

go 1.19

require flswld.com/common v0.0.0-incompatible

replace flswld.com/common => ../../common

require flswld.com/logger v0.0.0-incompatible

replace flswld.com/logger => ../../logger

require flswld.com/air-api v0.0.0-incompatible // indirect

replace flswld.com/air-api => ../../air-api

require flswld.com/light v0.0.0-incompatible

replace flswld.com/light => ../../light

require flswld.com/gate-hk4e-api v0.0.0-incompatible

replace flswld.com/gate-hk4e-api => ../../gate-hk4e-api

// protobuf
require google.golang.org/protobuf v1.28.0

// mongodb
require go.mongodb.org/mongo-driver v1.8.3

// jwt
require github.com/golang-jwt/jwt/v4 v4.4.0

// csv
require github.com/jszwec/csvutil v1.7.1

// nats
require github.com/nats-io/nats.go v1.16.0

// msgpack
require github.com/vmihailenco/msgpack/v5 v5.3.5

// statsviz
require github.com/arl/statsviz v0.5.1

require (
	github.com/BurntSushi/toml v0.3.1 // indirect
	github.com/go-stack/stack v1.8.0 // indirect
	github.com/golang/snappy v0.0.1 // indirect
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/klauspost/compress v1.14.4 // indirect
	github.com/nats-io/nats-server/v2 v2.8.4 // indirect
	github.com/nats-io/nkeys v0.3.0 // indirect
	github.com/nats-io/nuid v1.0.1 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	github.com/xdg-go/pbkdf2 v1.0.0 // indirect
	github.com/xdg-go/scram v1.0.2 // indirect
	github.com/xdg-go/stringprep v1.0.2 // indirect
	github.com/youmark/pkcs8 v0.0.0-20181117223130-1be2e3e5546d // indirect
	golang.org/x/crypto v0.0.0-20220315160706-3147a52a75dd // indirect
	golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e // indirect
	golang.org/x/text v0.3.6 // indirect
)
