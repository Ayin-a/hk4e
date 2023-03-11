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
	KcpAddr                string `toml:"kcp_addr"` // 该地址只用来注册到节点服务器 填网关的外网地址 网关本地监听为0.0.0.0
	KcpPort                int32  `toml:"kcp_port"`
	GameDataConfigPath     string `toml:"game_data_config_path"`
	GachaHistoryServer     string `toml:"gacha_history_server"`
	ClientProtoProxyEnable bool   `toml:"client_proto_proxy_enable"`
	Version                string `toml:"version"`          // 支持的客户端协议版本号 三位数字 多个以逗号分隔 如300,310,320
	GateTcpMqAddr          string `toml:"gate_tcp_mq_addr"` // 访问网关tcp直连消息队列的地址 填网关的内网地址
	GateTcpMqPort          int32  `toml:"gate_tcp_mq_port"`
	LoginSdkUrl            string `toml:"login_sdk_url"`         // 网关登录验证token的sdk服务器地址 目前填dispatch的内网地址
	LoadSceneLuaConfig     bool   `toml:"load_scene_lua_config"` // 是否加载场景详情LUA配置数据
	DispatchUrl            string `toml:"dispatch_url"`          // 二级dispatch地址 将域名改为dispatch的外网地址
}

// MQ 消息队列
type MQ struct {
	NatsUrl string `toml:"nats_url"`
}

func InitConfig(filePath string) {
	CONF = new(Config)
	CONF.loadConfigFile(filePath)
}

func GetConfig() *Config {
	return CONF
}

// 加载配置文件
func (c *Config) loadConfigFile(filePath string) {
	_, err := toml.DecodeFile(filePath, &c)
	if err != nil {
		info := fmt.Sprintf("config file load error: %v\n", err)
		panic(info)
	}
}
