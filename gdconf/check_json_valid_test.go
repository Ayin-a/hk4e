package gdconf

import (
	"github.com/hjson/hjson-go/v4"
	"hk4e/common/config"
	"hk4e/pkg/logger"
	"os"
	"strings"
	"testing"
	"time"
)

func CheckJsonLoop(path string, errorJsonFileList *[]string, totalJsonFileCount *int) {
	fileList, err := os.ReadDir(path)
	if err != nil {
		logger.LOG.Error("open dir error: %v", err)
		return
	}
	for _, file := range fileList {
		fileName := file.Name()
		if file.IsDir() {
			CheckJsonLoop(path+"/"+fileName, errorJsonFileList, totalJsonFileCount)
		}
		if !strings.Contains(fileName, ".json") {
			continue
		}
		fileData, err := os.ReadFile(path + "/" + fileName)
		if err != nil {
			logger.LOG.Error("open file error: %v", err)
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
	CheckJsonLoop("./game_data_config/json", &errorJsonFileList, &totalJsonFileCount)
	for _, v := range errorJsonFileList {
		logger.LOG.Info("%v", v)
	}
	logger.LOG.Info("err json file count: %v, total count: %v", len(errorJsonFileList), totalJsonFileCount)
	time.Sleep(time.Second)
}
