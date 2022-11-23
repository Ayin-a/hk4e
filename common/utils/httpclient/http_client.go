package httpclient

import (
	"bytes"
	"encoding/json"
	"io/ioutil"
	"net/http"
	"time"
)

var httpClient http.Client

func init() {
	httpClient = http.Client{
		Transport: &http.Transport{
			DisableKeepAlives: true,
		},
		Timeout: time.Second * 60,
	}
}

func Get[T any](url string, token string) (*T, error) {
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}
	if token != "" {
		req.Header.Set("Authorization", "Bearer"+" "+token)
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
	responseData := new(T)
	err = json.Unmarshal(data, responseData)
	if err != nil {
		return nil, err
	}
	return responseData, nil
}

func Post[T any](url string, body any, token string) (*T, error) {
	reqData, err := json.Marshal(body)
	if err != nil {
		return nil, err
	}
	req, err := http.NewRequest("POST", url, bytes.NewBuffer(reqData))
	if err != nil {
		return nil, err
	}
	req.Header.Set("Content-Type", "application/json")
	if token != "" {
		req.Header.Set("Authorization", "Bearer"+" "+token)
	}
	rsp, err := httpClient.Do(req)
	if err != nil {
		return nil, err
	}
	rspData, err := ioutil.ReadAll(rsp.Body)
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
