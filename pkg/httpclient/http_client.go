package httpclient

import (
	"bytes"
	"crypto/tls"
	"encoding/json"
	"io"
	"net/http"
	"strings"
	"time"

	"hk4e/pkg/logger"
)

var httpClient http.Client

func init() {
	httpClient = http.Client{
		Transport: &http.Transport{
			TLSClientConfig: &tls.Config{
				InsecureSkipVerify: true,
			},
			DisableKeepAlives: true,
		},
		Timeout: time.Second * 10,
	}
}

func GetJson[T any](url string, authToken ...string) (*T, error) {
	logger.Debug("http get req url: %v", url)
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}
	if len(authToken) != 0 {
		req.Header.Set("Authorization", "Bearer"+" "+authToken[0])
	}
	rsp, err := httpClient.Do(req)
	if err != nil {
		return nil, err
	}
	data, err := io.ReadAll(rsp.Body)
	_ = rsp.Body.Close()
	if err != nil {
		return nil, err
	}
	logger.Debug("http get rsp data: %v", string(data))
	responseData := new(T)
	err = json.Unmarshal(data, responseData)
	if err != nil {
		return nil, err
	}
	return responseData, nil
}

func GetRaw(url string, authToken ...string) (string, error) {
	logger.Debug("http get req url: %v", url)
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return "", err
	}
	if len(authToken) != 0 {
		req.Header.Set("Authorization", "Bearer"+" "+authToken[0])
	}
	rsp, err := httpClient.Do(req)
	if err != nil {
		return "", err
	}
	data, err := io.ReadAll(rsp.Body)
	_ = rsp.Body.Close()
	if err != nil {
		return "", err
	}
	logger.Debug("http get rsp data: %v", string(data))
	return string(data), nil
}

func PostJson[T any](url string, body any, authToken ...string) (*T, error) {
	reqData, err := json.Marshal(body)
	if err != nil {
		return nil, err
	}
	logger.Debug("http post req url: %v", url)
	req, err := http.NewRequest("POST", url, bytes.NewBuffer(reqData))
	if err != nil {
		return nil, err
	}
	req.Header.Set("Content-Type", "application/json")
	if len(authToken) != 0 {
		req.Header.Set("Authorization", "Bearer"+" "+authToken[0])
	}
	rsp, err := httpClient.Do(req)
	if err != nil {
		return nil, err
	}
	rspData, err := io.ReadAll(rsp.Body)
	_ = rsp.Body.Close()
	if err != nil {
		return nil, err
	}
	logger.Debug("http post rsp data: %v", string(rspData))
	responseData := new(T)
	err = json.Unmarshal(rspData, responseData)
	if err != nil {
		return nil, err
	}
	return responseData, nil
}

func PostRaw(url string, body string, authToken ...string) (string, error) {
	logger.Debug("http post req url: %v", url)
	req, err := http.NewRequest("POST", url, strings.NewReader(body))
	if err != nil {
		return "", err
	}
	req.Header.Set("Content-Type", "application/json")
	if len(authToken) != 0 {
		req.Header.Set("Authorization", "Bearer"+" "+authToken[0])
	}
	rsp, err := httpClient.Do(req)
	if err != nil {
		return "", err
	}
	rspData, err := io.ReadAll(rsp.Body)
	_ = rsp.Body.Close()
	if err != nil {
		return "", err
	}
	logger.Debug("http post rsp data: %v", string(rspData))
	return string(rspData), nil
}
