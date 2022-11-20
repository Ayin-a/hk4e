module water

go 1.19

require flswld.com/common v0.0.0-incompatible

replace flswld.com/common => ../common

require flswld.com/logger v0.0.0-incompatible

replace flswld.com/logger => ../logger

require flswld.com/air-api v0.0.0-incompatible // indirect

replace flswld.com/air-api => ../air-api

require flswld.com/light v0.0.0-incompatible

replace flswld.com/light => ../light

require flswld.com/annie-user-api v0.0.0-incompatible

replace flswld.com/annie-user-api => ../service/annie-user-api

require (
	github.com/gin-gonic/gin v1.6.3
	github.com/jinzhu/gorm v1.9.16
	github.com/satori/go.uuid v1.2.0
)

require (
	github.com/BurntSushi/toml v0.3.1 // indirect
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-playground/locales v0.13.0 // indirect
	github.com/go-playground/universal-translator v0.17.0 // indirect
	github.com/go-playground/validator/v10 v10.2.0 // indirect
	github.com/go-sql-driver/mysql v1.5.0 // indirect
	github.com/golang/protobuf v1.3.3 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/json-iterator/go v1.1.9 // indirect
	github.com/leodido/go-urn v1.2.0 // indirect
	github.com/mattn/go-isatty v0.0.12 // indirect
	github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421 // indirect
	github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742 // indirect
	github.com/ugorji/go/codec v1.1.7 // indirect
	golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
)
