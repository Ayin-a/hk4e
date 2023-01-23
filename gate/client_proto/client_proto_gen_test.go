package client_proto

import (
	"os"
	"strings"
	"testing"
)

func TestClientProtoGen(t *testing.T) {
	// 生成根据proto类名获取对象实例的switch方法
	dir, err := os.ReadDir("./proto")
	if err != nil {
		panic(err)
	}
	nameList := make([]string, 0)
	for _, entry := range dir {
		if entry.IsDir() {
			continue
		}
		split := strings.Split(entry.Name(), ".")
		if len(split) < 2 || split[len(split)-1] != "proto" {
			continue
		}
		nameList = append(nameList, split[len(split)-2])
	}
	fileData := "package client_proto\n"
	fileData += "\n"
	fileData += "import (\n"
	fileData += "\t\"hk4e/gate/client_proto/proto\"\n"
	fileData += ")\n"
	fileData += "\n"
	fileData += "func (c *ClientCmdProtoMap) GetClientProtoObjByName(protoObjName string) any {\n"
	fileData += "\tswitch protoObjName {\n"
	for _, protoObjName := range nameList {
		fileData += "\tcase \"" + protoObjName + "\":\n\t\treturn new(proto." + protoObjName + ")\n"
	}
	fileData += "\tdefault:\n"
	fileData += "\t\treturn nil\n"
	fileData += "\t}\n"
	fileData += "}\n"
	err = os.WriteFile("./client_proto_gen.go", []byte(fileData), 0644)
	if err != nil {
		panic(err)
	}
	// 处理枚举
	for _, entry := range dir {
		rawFileData, err := os.ReadFile("./proto/" + entry.Name())
		if err != nil {
			panic(err)
		}
		rawFileStr := string(rawFileData)
		rawFileLine := strings.Split(rawFileStr, "\n")
		newFileStr := ""
		for i := 0; i < len(rawFileLine); i++ {
			line := rawFileLine[i]
			newFileStr += line + "\n"
			if !strings.Contains(line, "enum") {
				continue
			}
			split := strings.Split(line, " ")
			if len(split) != 3 || split[0] != "enum" || split[2] != "{" {
				continue
			}
			enumName := split[1]
			refEnum := FindEnumInDirFile("../../protocol/proto_hk4e", enumName)
			if refEnum == nil {
				continue
			}
			i++
			x := 0
			for {
				nextLine := rawFileLine[i]
				if !strings.Contains(nextLine, "}") && x < len(refEnum) {
					newFileStr += refEnum[x] + "\n"
					i++
					x++
				} else {
					newFileStr += line + "\n"
					break
				}
			}
		}
		err = os.WriteFile("./proto/"+entry.Name(), []byte(newFileStr), 0644)
		if err != nil {
			panic(err)
		}
	}
}

func FindEnumInDirFile(path string, name string) (lineList []string) {
	dir, err := os.ReadDir(path)
	if err != nil {
		panic(err)
	}
	for _, entry := range dir {
		if entry.IsDir() {
			ret := FindEnumInDirFile(path+"/"+entry.Name(), name)
			if ret != nil {
				return ret
			}
			continue
		}
		fileData, err := os.ReadFile(path + "/" + entry.Name())
		if err != nil {
			panic(err)
		}
		fileStr := string(fileData)
		fileLine := strings.Split(fileStr, "\n")
		for i := 0; i < len(fileLine); i++ {
			line := fileLine[i]
			if !strings.Contains(line, "enum") {
				continue
			}
			split := strings.Split(line, " ")
			if len(split) != 3 || split[0] != "enum" || split[2] != "{" {
				continue
			}
			enumName := split[1]
			if enumName != name {
				continue
			}
			i++
			lineList := make([]string, 0)
			for {
				nextLine := fileLine[i]
				if !strings.Contains(nextLine, "}") {
					lineList = append(lineList, nextLine)
				} else {
					return lineList
				}
				i++
			}
		}
	}
	return nil
}
