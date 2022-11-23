package constant

var SceneTypeConst *SceneType

type SceneType struct {
	SCENE_NONE       uint16
	SCENE_WORLD      uint16
	SCENE_DUNGEON    uint16
	SCENE_ROOM       uint16
	SCENE_HOME_WORLD uint16
	SCENE_HOME_ROOM  uint16
	SCENE_ACTIVITY   uint16
}

func InitSceneTypeConst() {
	SceneTypeConst = new(SceneType)

	SceneTypeConst.SCENE_NONE = 0
	SceneTypeConst.SCENE_WORLD = 1
	SceneTypeConst.SCENE_DUNGEON = 2
	SceneTypeConst.SCENE_ROOM = 3
	SceneTypeConst.SCENE_HOME_WORLD = 4
	SceneTypeConst.SCENE_HOME_ROOM = 5
	SceneTypeConst.SCENE_ACTIVITY = 6
}
