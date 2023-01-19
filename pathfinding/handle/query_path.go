package handle

import (
	"hk4e/pathfinding/pfalg"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (h *Handle) ConvPbVecToMeshVec(pbVec *proto.Vector) pfalg.MeshVector {
	return pfalg.MeshVector{
		X: int16(pbVec.X),
		Y: int16(pbVec.Y),
		Z: int16(pbVec.Z),
	}
}

func (h *Handle) ConvMeshVecToPbVec(meshVec pfalg.MeshVector) *proto.Vector {
	return &proto.Vector{
		X: float32(meshVec.X),
		Y: float32(meshVec.Y),
		Z: float32(meshVec.Z),
	}
}

func (h *Handle) ConvPbVecListToMeshVecList(pbVecList []*proto.Vector) []pfalg.MeshVector {
	ret := make([]pfalg.MeshVector, 0)
	for _, pbVec := range pbVecList {
		ret = append(ret, h.ConvPbVecToMeshVec(pbVec))
	}
	return ret
}

func (h *Handle) ConvMeshVecListToPbVecList(meshVecList []pfalg.MeshVector) []*proto.Vector {
	ret := make([]*proto.Vector, 0)
	for _, meshVec := range meshVecList {
		ret = append(ret, h.ConvMeshVecToPbVec(meshVec))
	}
	return ret
}

func (h *Handle) QueryPath(userId uint32, gateAppId string, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.QueryPathReq)
	logger.Debug("query path req: %v, uid: %v, gateAppId: %v", req, userId, gateAppId)
	var ok = false
	var path []pfalg.MeshVector = nil
	for _, destinationPos := range req.DestinationPos {
		ok, path = h.worldStatic.Pathfinding(h.ConvPbVecToMeshVec(req.SourcePos), h.ConvPbVecToMeshVec(destinationPos))
		if ok {
			break
		}
	}
	if !ok {
		queryPathRsp := &proto.QueryPathRsp{
			QueryId:     req.QueryId,
			QueryStatus: proto.QueryPathRsp_STATUS_FAIL,
		}
		h.SendMsg(cmd.QueryPathRsp, userId, gateAppId, queryPathRsp)
		return
	}
	queryPathRsp := &proto.QueryPathRsp{
		QueryId:     req.QueryId,
		QueryStatus: proto.QueryPathRsp_STATUS_SUCC,
		Corners:     h.ConvMeshVecListToPbVecList(path),
	}
	h.SendMsg(cmd.QueryPathRsp, userId, gateAppId, queryPathRsp)
}

func (h *Handle) ObstacleModifyNotify(userId uint32, gateAppId string, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.ObstacleModifyNotify)
	logger.Debug("obstacle modify req: %v, uid: %v, gateAppId: %v", req, userId, gateAppId)
}
