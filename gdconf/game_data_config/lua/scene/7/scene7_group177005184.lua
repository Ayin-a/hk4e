-- 基础信息
local base_info = {
	group_id = 177005184
}

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
	{ config_id = 184002, gadget_id = 70360001, pos = { x = 221.231, y = 325.582, z = 294.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1184001, name = "GROUP_LOAD_184001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_184001", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 184002 },
		regions = { },
		triggers = { "GROUP_LOAD_184001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_184001(context, evt)
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "count", 177005175) == 3 then
			ScriptLib.AddQuestProgress(context, "7227604")
	end
	
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "count", 177006090) == 2 then
			ScriptLib.AddQuestProgress(context, "7227614")
	end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "count", 177008091) == 2 then
			ScriptLib.AddQuestProgress(context, "7227615")
	end
	
	
	return 0
end