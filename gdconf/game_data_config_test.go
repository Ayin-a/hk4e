package gdconf

import (
	"testing"
	"time"

	"hk4e/common/config"
	"hk4e/pkg/logger"
)

func TestInitGameDataConfig(t *testing.T) {
	config.InitConfig("./application.toml")
	logger.InitLogger("test")
	logger.Info("start load conf")
	InitGameDataConfig()
	logger.Info("load conf finish, conf: %v", CONF)
	time.Sleep(time.Second)
}
