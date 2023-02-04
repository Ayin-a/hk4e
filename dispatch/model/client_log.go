package model

import (
	"go.mongodb.org/mongo-driver/bson/primitive"
)

type ClientLog struct {
	ID              primitive.ObjectID `json:"-" bson:"_id,omitempty"`
	Auid            string             `json:"auid" bson:"auid"`
	ClientIp        string             `json:"clientIp" bson:"clientIp"`
	CpuInfo         string             `json:"cpuInfo" bson:"cpuInfo"`
	DeviceModel     string             `json:"deviceModel" bson:"deviceModel"`
	DeviceName      string             `json:"deviceName" bson:"deviceName"`
	GpuInfo         string             `json:"gpuInfo" bson:"gpuInfo"`
	Guid            string             `json:"guid" bson:"guid"`
	LogStr          string             `json:"logStr" bson:"logStr"`
	LogType         string             `json:"logType" bson:"logType"`
	OperatingSystem string             `json:"operatingSystem" bson:"operatingSystem"`
	StackTrace      string             `json:"stackTrace" bson:"stackTrace"`
	Time            string             `json:"time" bson:"time"`
	Uid             uint64             `json:"uid" bson:"uid"`
	UserName        string             `json:"userName" bson:"userName"`
	Version         string             `json:"version" bson:"version"`
}
