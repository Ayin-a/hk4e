package httpclient

import (
	"bytes"
	"encoding/json"
	"io"
	"net/http"
	"strings"
	"time"
)

var httpClient http.Client

func init() {
	httpClient = http.Client{
		Transport: &http.Transport{
			DisableKeepAlives: true,
		},
		Timeout: time.Second * 10,
	}
}

func GetJson[T any](url string, authToken string) (*T, error) {
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}
	if authToken != "" {
		req.Header.Set("Authorization", "Bearer"+" "+authToken)
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
	responseData := new(T)
	err = json.Unmarshal(data, responseData)
	if err != nil {
		return nil, err
	}
	return responseData, nil
}

func GetRaw(url string, authToken string) (string, error) {
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return "", err
	}
	if authToken != "" {
		req.Header.Set("Authorization", "Bearer"+" "+authToken)
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
	return string(data), nil
}

func PostJson[T any](url string, body any, authToken string) (*T, error) {
	reqData, err := json.Marshal(body)
	if err != nil {
		return nil, err
	}
	req, err := http.NewRequest("POST", url, bytes.NewBuffer(reqData))
	if err != nil {
		return nil, err
	}
	req.Header.Set("Content-Type", "application/json")
	if authToken != "" {
		req.Header.Set("Authorization", "Bearer"+" "+authToken)
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
	responseData := new(T)
	err = json.Unmarshal(rspData, responseData)
	if err != nil {
		return nil, err
	}
	return responseData, nil
}

func PostRaw(url string, body string, authToken string) (string, error) {
	req, err := http.NewRequest("POST", url, strings.NewReader(body))
	if err != nil {
		return "", err
	}
	req.Header.Set("Content-Type", "application/json")
	if authToken != "" {
		req.Header.Set("Authorization", "Bearer"+" "+authToken)
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
	return string(rspData), nil
}
