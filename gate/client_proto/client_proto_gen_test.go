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
		split := strings.Split(entry.Name(), ".")
		if len(split) != 2 {
			panic("file name error")
		}
		nameList = append(nameList, split[0])
	}

	fileData := "package client_proto\n"
	fileData += "\n"
	fileData += "import (\n"
	fileData += "\"hk4e/gate/client_proto/proto\"\n"
	fileData += "pb \"google.golang.org/protobuf/proto\"\n"
	fileData += ")\n"
	fileData += "\n"
	fileData += "func (c *ClientCmdProtoMap) GetClientProtoObjByName(protoObjName string) any {\n"
	fileData += "switch protoObjName {\n"
	for _, protoObjName := range nameList {
		fileData += "case \"" + protoObjName + "\":\nreturn new(proto." + protoObjName + ")\n"
	}
	fileData += "default:\n"
	fileData += "return nil\n"
	fileData += "}\n"
	fileData += "}\n"
	fileData += "\n"

	err = os.WriteFile("../client_proto_gen.go", []byte(fileData), 0644)
	if err != nil {
		panic(err)
	}
}
