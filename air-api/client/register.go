package client

import (
	"bytes"
	"encoding/json"
	"io/ioutil"
	"net/http"
	"strconv"
)

// 注册HTTP服务
func RegisterHttpService(inst Instance) (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/http/reg"
	return postAirServiceCore(url, inst)
}

// HTTP服务心跳保持
func KeepaliveHttpService(inst Instance) (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/http/ka"
	return postAirServiceCore(url, inst)
}

// 取消注册HTTP服务
func CancelHttpService(inst Instance) (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/http/cancel"
	return postAirServiceCore(url, inst)
}

// 注册RPC服务
func RegisterRpcService(inst Instance) (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/rpc/reg"
	return postAirServiceCore(url, inst)
}

// RPC服务心跳保持
func KeepaliveRpcService(inst Instance) (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/rpc/ka"
	return postAirServiceCore(url, inst)
}

// 取消注册RPC服务
func CancelRpcService(inst Instance) (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/rpc/cancel"
	return postAirServiceCore(url, inst)
}

func postAirServiceCore(url string, inst Instance) (*ResponseData, error) {
	reqData, err := json.Marshal(inst)
	if err != nil {
		return nil, err
	}
	req, err := http.NewRequest("POST", url, bytes.NewBuffer(reqData))
	if err != nil {
		return nil, err
	}
	req.Header.Set("Content-Type", "application/json")
	rsp, err := httpClient.Do(req)
	if err != nil {
		return nil, err
	}
	rspData, err := ioutil.ReadAll(rsp.Body)
	_ = rsp.Body.Close()
	if err != nil {
		return nil, err
	}
	responseData := new(ResponseData)
	err = json.Unmarshal(rspData, responseData)
	if err != nil {
		return nil, err
	}
	return responseData, nil
}
