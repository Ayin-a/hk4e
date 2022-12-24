package config

import (
	"fmt"

	"github.com/BurntSushi/toml"
)

var CONF *Config = nil

// Config 配置
type Config struct {
	HttpPort int32    `toml:"http_port"`
	Logger   Logger   `toml:"logger"`
	Database Database `toml:"database"`
	Hk4e     Hk4e     `toml:"hk4e"`
	MQ       MQ       `toml:"mq"`
}

// Logger 日志
type Logger struct {
	Level   string `toml:"level"`
	Mode    string `toml:"mode"`
	Track   bool   `toml:"track"`
	MaxSize int32  `toml:"max_size"`
}

// Database 数据库配置
type Database struct {
	Url string `toml:"url"`
}

// Hk4e 原神相关
type Hk4e struct {
	KcpPort                int32  `toml:"kcp_port"`
	KcpAddr                string `toml:"kcp_addr"`
	ResourcePath           string `toml:"resource_path"`
	GameDataConfigPath     string `toml:"game_data_config_path"`
	GachaHistoryServer     string `toml:"gacha_history_server"`
	ClientProtoProxyEnable bool   `toml:"client_proto_proxy_enable"`
}

// MQ 消息队列
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
