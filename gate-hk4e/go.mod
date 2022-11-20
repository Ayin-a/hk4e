module gate-hk4e

go 1.19

// annie
require flswld.com/common v0.0.0-incompatible

replace flswld.com/common => ../common

require flswld.com/logger v0.0.0-incompatible

replace flswld.com/logger => ../logger

require flswld.com/air-api v0.0.0-incompatible // indirect

replace flswld.com/air-api => ../air-api

require flswld.com/light v0.0.0-incompatible

replace flswld.com/light => ../light

require flswld.com/gate-hk4e-api v0.0.0-incompatible

replace flswld.com/gate-hk4e-api => ../gate-hk4e-api

require flswld.com/annie-user-api v0.0.0-incompatible

replace flswld.com/annie-user-api => ../service/annie-user-api

// kcp
require (
	github.com/klauspost/reedsolomon v1.9.14
	github.com/pkg/errors v0.9.1
	github.com/stretchr/testify v1.7.0
	github.com/templexxx/xorsimd v0.4.1
	github.com/tjfoc/gmsm v1.4.1
	github.com/xtaci/lossyconn v0.0.0-20200209145036-adba10fffc37
	golang.org/x/crypto v0.0.0-20220315160706-3147a52a75dd
	golang.org/x/net v0.0.0-20211123203042-d83791d6bcd9
)

// protobuf
require google.golang.org/protobuf v1.28.0

// gin
require github.com/gin-gonic/gin v1.6.3

// mongodb
require go.mongodb.org/mongo-driver v1.8.3

// nats
require github.com/nats-io/nats.go v1.16.0

// msgpack
require github.com/vmihailenco/msgpack/v5 v5.3.5

// statsviz
require github.com/arl/statsviz v0.5.1

require (
	github.com/BurntSushi/toml v0.3.1 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-playground/locales v0.13.0 // indirect
	github.com/go-playground/universal-translator v0.17.0 // indirect
	github.com/go-playground/validator/v10 v10.2.0 // indirect
	github.com/go-stack/stack v1.8.0 // indirect
	github.com/golang/protobuf v1.5.0 // indirect
	github.com/golang/snappy v0.0.1 // indirect
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/json-iterator/go v1.1.9 // indirect
	github.com/klauspost/compress v1.14.4 // indirect
	github.com/klauspost/cpuid/v2 v2.0.6 // indirect
	github.com/leodido/go-urn v1.2.0 // indirect
	github.com/mattn/go-isatty v0.0.12 // indirect
	github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421 // indirect
	github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742 // indirect
	github.com/nats-io/nats-server/v2 v2.8.4 // indirect
	github.com/nats-io/nkeys v0.3.0 // indirect
	github.com/nats-io/nuid v1.0.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/templexxx/cpu v0.0.1 // indirect
	github.com/ugorji/go/codec v1.1.7 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	github.com/xdg-go/pbkdf2 v1.0.0 // indirect
	github.com/xdg-go/scram v1.0.2 // indirect
	github.com/xdg-go/stringprep v1.0.2 // indirect
	github.com/youmark/pkcs8 v0.0.0-20181117223130-1be2e3e5546d // indirect
	golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e // indirect
	golang.org/x/sys v0.0.0-20220111092808-5a964db01320 // indirect
	golang.org/x/text v0.3.6 // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
	gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c // indirect
)
