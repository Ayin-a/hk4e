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
	InitGameDataConfig()
	logger.LOG.Info("ok")
	time.Sleep(time.Second)
}
