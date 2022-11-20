package config

import (
	"fmt"
	"github.com/BurntSushi/toml"
)

var CONF *Config = nil

// 配置
type Config struct {
	HttpPort int      `toml:"http_port"`
	KcpPort  int      `toml:"kcp_port"`
	Logger   Logger   `toml:"logger"`
	Air      Air      `toml:"air"`
	Database Database `toml:"database"`
	Light    Light    `toml:"light"`
	Routes   []Routes `toml:"routes"`
	Wxmp     Wxmp     `toml:"wxmp"`
	Hk4e     Hk4e     `toml:"hk4e"`
	MQ       MQ       `toml:"mq"`
}

// 日志配置
type Logger struct {
	Level     string `toml:"level"`
	Method    string `toml:"method"`
	TrackLine bool   `toml:"track_line"`
}

// 注册中心配置
type Air struct {
	Addr        string `toml:"addr"`
	Port        int    `toml:"port"`
	ServiceName string `toml:"service_name"`
}

// 数据库配置
type Database struct {
	Url string `toml:"url"`
}

// RPC框架配置
type Light struct {
	Port int `toml:"port"`
}

// 路由配置
type Routes struct {
	ServiceName       string `toml:"service_name"`
	ServicePredicates string `toml:"service_predicates"`
	StripPrefix       int    `toml:"strip_prefix"`
}

// FWDN服务
type Fwdn struct {
	FwdnCron    string `toml:"fwdn_cron"`
	TestCron    string `toml:"test_cron"`
	QQMailAddr  string `toml:"qq_mail_addr"`
	QQMailName  string `toml:"qq_mail_name"`
	QQMailToken string `toml:"qq_mail_token"`
	FwMailAddr  string `toml:"fw_mail_addr"`
}

// 微信公众号
type Wxmp struct {
	AppId          string `toml:"app_id"`
	RawId          string `toml:"raw_id"`
	Token          string `toml:"token"`
	EncodingAesKey string `toml:"encoding_aes_key"`
	Fwdn           Fwdn   `toml:"fwdn"`
}

// 原神相关
type Hk4e struct {
	KcpPort            int    `toml:"kcp_port"`
	KcpAddr            string `toml:"kcp_addr"`
	ResourcePath       string `toml:"resource_path"`
	GachaHistoryServer string `toml:"gacha_history_server"`
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
		panic(fmt.Sprintf("application.toml load fail ! err: %v", err))
	}
}
