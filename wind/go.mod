module wind

go 1.19

require flswld.com/common v0.0.0-incompatible

replace flswld.com/common => ../common

require flswld.com/logger v0.0.0-incompatible

require github.com/BurntSushi/toml v0.3.1 // indirect

replace flswld.com/logger => ../logger

require flswld.com/air-api v0.0.0-incompatible

replace flswld.com/air-api => ../air-api
