package client

import (
	"encoding/json"
	"errors"
	"io/ioutil"
	"net/http"
	"strconv"
	"time"
)

var httpClient http.Client
var airAddr string
var airPort int

func init() {
	httpClient = http.Client{
		Transport: &http.Transport{
			DisableKeepAlives: true,
		},
		Timeout: time.Second * 60,
	}
}

// 设置注册发现中心地址
func SetAirAddr(addr string, port int) {
	airAddr = addr
	airPort = port
}

// 获取某个HTTP服务的所有实例
func FetchHttpService(name string) (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/http/fetch" +
		"?name=" + name
	return getAirServiceCore(url)
}

// 获取全部HTTP服务的实例
func FetchAllHttpService() (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/http/fetch/all"
	return getAirServiceCore(url)
}

// 长轮询某个HTTP服务的实例状态变化
func PollHttpService(name string) (*ResponseData, error) {
	lastTime := int64(0)
	for {
		nowTime := time.Now().UnixNano()
		if time.Duration(nowTime-lastTime) < time.Second {
			time.Sleep(time.Millisecond * 100)
			continue
		}
		lastTime = time.Now().UnixNano()
		url := "http://" +
			airAddr + ":" + strconv.Itoa(airPort) +
			"/poll/http" +
			"?name=" + name
		responseData, err := getAirServiceCore(url)
		if err != nil {
			return nil, err
		}
		if responseData.Code != 0 {
			return nil, errors.New("response code error")
		}
		if responseData.Instance == nil {
			continue
		}
		return responseData, nil
	}
}

// 长轮询全部HTTP服务的实例状态变化
func PollAllHttpService() (*ResponseData, error) {
	lastTime := int64(0)
	for {
		nowTime := time.Now().UnixNano()
		if time.Duration(nowTime-lastTime) < time.Second {
			time.Sleep(time.Millisecond * 100)
			continue
		}
		lastTime = time.Now().UnixNano()
		url := "http://" +
			airAddr + ":" + strconv.Itoa(airPort) +
			"/poll/http/all"
		responseData, err := getAirServiceCore(url)
		if err != nil {
			return nil, err
		}
		if responseData.Code != 0 {
			return nil, errors.New("response code error")
		}
		if responseData.Service == nil {
			continue
		}
		return responseData, nil
	}
}

// 获取某个RPC服务的所有实例
func FetchRpcService(name string) (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/rpc/fetch" +
		"?name=" + name
	return getAirServiceCore(url)
}

// 获取全部RPC服务的实例
func FetchAllRpcService() (*ResponseData, error) {
	url := "http://" +
		airAddr + ":" + strconv.Itoa(airPort) +
		"/rpc/fetch/all"
	return getAirServiceCore(url)
}

// 长轮询某个RPC服务的实例状态变化
func PollRpcService(name string) (*ResponseData, error) {
	lastTime := int64(0)
	for {
		nowTime := time.Now().UnixNano()
		if time.Duration(nowTime-lastTime) < time.Second {
			time.Sleep(time.Millisecond * 100)
			continue
		}
		lastTime = time.Now().UnixNano()
		url := "http://" +
			airAddr + ":" + strconv.Itoa(airPort) +
			"/poll/rpc" +
			"?name=" + name
		responseData, err := getAirServiceCore(url)
		if err != nil {
			return nil, err
		}
		if responseData.Code != 0 {
			return nil, errors.New("response code error")
		}
		if responseData.Instance == nil {
			continue
		}
		return responseData, nil
	}
}

// 长轮询全部RPC服务的实例状态变化
func PollAllRpcService() (*ResponseData, error) {
	lastTime := int64(0)
	for {
		nowTime := time.Now().UnixNano()
		if time.Duration(nowTime-lastTime) < time.Second {
			time.Sleep(time.Millisecond * 100)
			continue
		}
		lastTime = time.Now().UnixNano()
		url := "http://" +
			airAddr + ":" + strconv.Itoa(airPort) +
			"/poll/rpc/all"
		responseData, err := getAirServiceCore(url)
		if err != nil {
			return nil, err
		}
		if responseData.Code != 0 {
			return nil, errors.New("response code error")
		}
		if responseData.Service == nil {
			continue
		}
		return responseData, nil
	}
}

func getAirServiceCore(url string) (*ResponseData, error) {
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}
	rsp, err := httpClient.Do(req)
	if err != nil {
		return nil, err
	}
	data, err := ioutil.ReadAll(rsp.Body)
	_ = rsp.Body.Close()
	if err != nil {
		return nil, err
	}
	responseData := new(ResponseData)
	err = json.Unmarshal(data, responseData)
	if err != nil {
		return nil, err
	}
	return responseData, nil
}
