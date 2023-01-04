package client_proto

import (
	"os"
	"strings"
	"testing"
)

func TestClientProtoGen(t *testing.T) {
	dir, err := os.ReadDir("../proto")
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

	err = os.WriteFile("../client_proto_gen.go", []byte(fileData), 0644)
	if err != nil {
		panic(err)
	}
}
