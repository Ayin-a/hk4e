package model

import (
	"go.mongodb.org/mongo-driver/bson/primitive"
)

type ClientLog struct {
	ID              primitive.ObjectID `json:"-" bson:"_id,omitempty"`
	Auid            string             `json:"auid" bson:"Auid"`
	ClientIp        string             `json:"clientIp" bson:"ClientIp"`
	CpuInfo         string             `json:"cpuInfo" bson:"CpuInfo"`
	DeviceModel     string             `json:"deviceModel" bson:"DeviceModel"`
	DeviceName      string             `json:"deviceName" bson:"DeviceName"`
	GpuInfo         string             `json:"gpuInfo" bson:"GpuInfo"`
	Guid            string             `json:"guid" bson:"Guid"`
	LogStr          string             `json:"logStr" bson:"LogStr"`
	LogType         string             `json:"logType" bson:"LogType"`
	OperatingSystem string             `json:"operatingSystem" bson:"OperatingSystem"`
	StackTrace      string             `json:"stackTrace" bson:"StackTrace"`
	Time            string             `json:"time" bson:"Time"`
	Uid             uint64             `json:"uid" bson:"Uid"`
	UserName        string             `json:"userName" bson:"UserName"`
	Version         string             `json:"version" bson:"Version"`
}
