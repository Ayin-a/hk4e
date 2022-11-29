-- 基础信息
local base_info = {
	group_id = 155003001
}

-- DEFS_MISCS
local grouplist = 
{
	155003021,
	155003022,
	155003023,
	155003024
}

function GroupNotify(context)
	for i=1,#grouplist do
		if ScriptLib.GetGroupVariableValueByGroup(context, "gameplayState", grouplist[i]) == 0 then 
			ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 1, grouplist[i])
		end
		
	end
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "QUEST_START_1001", event = EventType.EVENT_QUEST_START, source = "7227505", condition = "", action = "action_EVENT_QUEST_START_1001", trigger_count = 0 },
	{ config_id = 1001002, name = "GROUP_LOAD_1002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1002", action = "action_EVENT_GROUP_LOAD_1002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IslandActive", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_1001", "GROUP_LOAD_1002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_1001(context, evt)
		-- 将本组内变量名为 "IslandActive" 的变量设置为 1
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "IslandActive", 1) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		  return -1
		end
		
	 --ScriptLib.UnlockScenePoint(context, 34)
	ScriptLib.UnhideScenePoint(context, 34)
	ScriptLib.UnhideScenePoint(context, 36)
	
	
		GroupNotify(context)
		return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_1002(context, evt)
	-- 判断变量"IslandActive"为1
	if ScriptLib.GetGroupVariableValue(context, "IslandActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1002(context, evt)
	ScriptLib.UnhideScenePoint(context, 34)
	ScriptLib.UnhideScenePoint(context, 36)
	
	return 0
end