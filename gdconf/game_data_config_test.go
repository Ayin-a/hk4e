package gdconf

import (
	"hk4e/common/config"
	"hk4e/pkg/logger"
	"testing"
	"time"
)

func TestInitGameDataConfig(t *testing.T) {
	config.InitConfig("./application.toml")
	logger.InitLogger("test", config.CONF.Logger)
	logger.LOG.Info("start load conf")
	InitGameDataConfig()
	logger.LOG.Info("load conf finish, conf: %v", CONF)
	time.Sleep(time.Second)
}
