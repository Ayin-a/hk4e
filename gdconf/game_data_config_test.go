package gdconf

import (
	"image"
	"image/color"
	"image/jpeg"
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

func TestSceneBlock(t *testing.T) {
	config.InitConfig("./application.toml")
	logger.InitLogger("test")
	InitGameDataConfig()
	scene, exist := CONF.SceneMap[3]
	if !exist {
		panic("scene 3 not exist")
	}
	logger.Info("scene info: %v", scene.SceneConfig)
	for _, block := range scene.BlockMap {
		block.BlockRange.Min.X *= -1.0
		block.BlockRange.Max.X *= -1.0
		block.BlockRange.Min.Z *= -1.0
		block.BlockRange.Max.Z *= -1.0
	}
	minX := 0.0
	maxX := 0.0
	minZ := 0.0
	maxZ := 0.0
	for _, block := range scene.BlockMap {
		if block.BlockRange.Min.X < minX {
			minX = block.BlockRange.Min.X
		}
		if block.BlockRange.Max.X > maxX {
			maxX = block.BlockRange.Max.X
		}
		if block.BlockRange.Min.Z < minZ {
			minZ = block.BlockRange.Min.Z
		}
		if block.BlockRange.Max.Z > maxZ {
			maxZ = block.BlockRange.Max.Z
		}
	}
	logger.Info("minX: %v, maxX: %v, minZ: %v, maxZ: %v", minX, maxX, minZ, maxZ)
	img := image.NewRGBA(image.Rect(0, 0, int(maxX-minX), int(maxZ-minZ)))
	rectColor := uint8(0)
	for _, block := range scene.BlockMap {
		maxW := int(block.BlockRange.Min.X - minX)
		maxH := int(block.BlockRange.Min.Z - minZ)
		minW := int(block.BlockRange.Max.X - minX)
		minH := int(block.BlockRange.Max.Z - minZ)
		for w := minW; w <= maxW; w++ {
			for h := minH; h <= maxH; h++ {
				img.SetRGBA(w, h, color.RGBA{R: rectColor, G: rectColor, B: rectColor, A: 255})
			}
		}
		rectColor += 5
		if rectColor > 255 {
			rectColor = 0
		}
	}
	file, err := os.Create("./block.jpg")
	if err != nil {
		return
	}
	defer func() {
		_ = file.Close()
	}()
	err = jpeg.Encode(file, img, &jpeg.Options{
		Quality: 100,
	})
	if err != nil {
		return
	}
	logger.Info("test finish")
	time.Sleep(time.Second)
}
