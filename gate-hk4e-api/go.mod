module gate-hk4e-api

go 1.19

require flswld.com/common v0.0.0-incompatible // indirect

replace flswld.com/common => ../common

require flswld.com/logger v0.0.0-incompatible

replace flswld.com/logger => ../logger

require github.com/BurntSushi/toml v0.3.1 // indirect

// protobuf
require google.golang.org/protobuf v1.28.0
