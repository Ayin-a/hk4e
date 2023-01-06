package gdconf

import (
	"os"
	"strings"
	"testing"
	"time"

	"hk4e/common/config"
	"hk4e/pkg/logger"

	"github.com/hjson/hjson-go/v4"
)

func TestInitGameDataConfig(t *testing.T) {
	config.InitConfig("./application.toml")
	logger.InitLogger("test")
	logger.Info("start load conf")
	InitGameDataConfig()
	logger.Info("load conf finish, conf: %v", CONF)
	time.Sleep(time.Second)
}

func CheckJsonLoop(path string, errorJsonFileList *[]string, totalJsonFileCount *int) {
	fileList, err := os.ReadDir(path)
	if err != nil {
		logger.Error("open dir error: %v", err)
		return
	}
	for _, file := range fileList {
		fileName := file.Name()
		if file.IsDir() {
			CheckJsonLoop(path+"/"+fileName, errorJsonFileList, totalJsonFileCount)
		}
		if split := strings.Split(fileName, "."); split[len(split)-1] != "json" {
			continue
		}
		fileData, err := os.ReadFile(path + "/" + fileName)
		if err != nil {
			logger.Error("open file error: %v", err)
			continue
		}
		var obj any
		err = hjson.Unmarshal(fileData, &obj)
		if err != nil {
			*errorJsonFileList = append(*errorJsonFileList, path+"/"+fileName+", err: "+err.Error())
		}
		*totalJsonFileCount++
	}
}

func TestCheckJsonValid(t *testing.T) {
	config.InitConfig("./application.toml")
	logger.InitLogger("test")
	errorJsonFileList := make([]string, 0)
	totalJsonFileCount := 0
	CheckJsonLoop("../game_data_config/json", &errorJsonFileList, &totalJsonFileCount)
	for _, v := range errorJsonFileList {
		logger.Info("%v", v)
	}
	logger.Info("err json file count: %v, total count: %v", len(errorJsonFileList), totalJsonFileCount)
	time.Sleep(time.Second)
}

func TestConvTxtToCsv(t *testing.T) {
	config.InitConfig("./application.toml")
	logger.InitLogger("test")
	fileList, err := os.ReadDir("../game_data_config/txt")
	if err != nil {
		logger.Error("open dir error: %v", err)
		return
	}
	for _, file := range fileList {
		fileName := file.Name()
		if file.IsDir() {
			continue
		}
		if split := strings.Split(fileName, "."); split[len(split)-1] != "txt" {
			continue
		}
		fileData, err := os.ReadFile("../game_data_config/txt/" + fileName)
		if err != nil {
			logger.Error("open file error: %v", err)
			continue
		}
		fileDataStr := string(fileData)
		fileDataStr = strings.ReplaceAll(fileDataStr, ",", "#")
		fileDataStr = strings.ReplaceAll(fileDataStr, ";", "#")
		fileDataStr = strings.ReplaceAll(fileDataStr, "\t", ",")
		err = os.WriteFile("../game_data_config/txt/"+strings.ReplaceAll(fileName, ".txt", "")+".csv", []byte(fileDataStr), 0644)
		if err != nil {
			logger.Error("save file error: %v", err)
			continue
		}
	}
	logger.Info("conv finish")
	time.Sleep(time.Second)
}
