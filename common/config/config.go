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
	Redis    Redis    `toml:"redis"`
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

type Redis struct {
	Addr     string `toml:"addr"`
	Password string `toml:"password"`
}

// Hk4e 原神相关
type Hk4e struct {
	KcpPort                int32  `toml:"kcp_port"` // 该地址只用来注册到节点服务器 并非网关本地监听地址 本地监听为0.0.0.0
	KcpAddr                string `toml:"kcp_addr"`
	ResourcePath           string `toml:"resource_path"`
	GameDataConfigPath     string `toml:"game_data_config_path"`
	GachaHistoryServer     string `toml:"gacha_history_server"`
	ClientProtoProxyEnable bool   `toml:"client_proto_proxy_enable"`
	Version                string `toml:"version"`
	GateTcpMqAddr          string `toml:"gate_tcp_mq_addr"`
	GateTcpMqPort          int32  `toml:"gate_tcp_mq_port"`
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
