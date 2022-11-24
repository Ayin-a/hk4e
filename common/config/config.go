package config

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/BurntSushi/toml"
)

var CONF *Config = nil

// 配置
type Config struct {
	HttpPort int           `toml:"http_port"`
	Logger   logger.Config `toml:"logger"`
	Database Database      `toml:"database"`
	Hk4e     Hk4e          `toml:"hk4e"`
	MQ       MQ            `toml:"mq"`
}

// 数据库配置
type Database struct {
	Url string `toml:"url"`
}

// 原神相关
type Hk4e struct {
	KcpPort            int    `toml:"kcp_port"`
	KcpAddr            string `toml:"kcp_addr"`
	ResourcePath       string `toml:"resource_path"`
	GachaHistoryServer string `toml:"gacha_history_server"`
	LoginSdkUrl        string `toml:"login_sdk_url"`
}

// 消息队列
type MQ struct {
	NatsUrl string `toml:"nats_url"`
}

func InitConfig(filePath string) {
	CONF = new(Config)
	CONF.loadConfigFile(filePath)
}

// 加载配置文件
func (c *Config) loadConfigFile(filePath string) {
	_, err := toml.DecodeFile(filePath, &c)
	if err != nil {
		info := fmt.Sprintf("config file load error: %v\n", err)
		panic(info)
	}
}
