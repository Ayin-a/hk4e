package client_proto

import (
	"os"
	"testing"
)

func TestClientProtoGen(t *testing.T) {
	clientCmdProtoMap := NewClientCmdProtoMap()

	fileData := "package client_proto\n"
	fileData += "\n"
	fileData += "import (\n"
	fileData += "\"hk4e/gate/client_proto/proto\"\n"
	fileData += "pb \"google.golang.org/protobuf/proto\"\n"
	fileData += ")\n"
	fileData += "\n"
	fileData += "func (c *ClientCmdProtoMap) GetClientProtoObjByCmdName(cmdName string) pb.Message {\n"
	fileData += "switch cmdName {\n"
	for cmdName := range clientCmdProtoMap.clientCmdNameCmdIdMap {
		fileData += "case \"" + cmdName + "\":\nreturn new(proto." + cmdName + ")\n"
	}
	fileData += "default:\n"
	fileData += "return nil\n"
	fileData += "}\n"
	fileData += "}\n"
	fileData += "\n"

	err := os.WriteFile("../client_proto_gen.go", []byte(fileData), 0644)
	if err != nil {
		panic(err)
	}
}
