-- 基础信息
local base_info = {
	group_id = 199003113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113003, monster_id = 28030103, pos = { x = -635.397, y = 120.479, z = -125.081 }, rot = { x = 0.000, y = 260.246, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 2, area_id = 403 },
	{ config_id = 113004, monster_id = 28030103, pos = { x = -648.161, y = 121.649, z = -127.194 }, rot = { x = 0.000, y = 98.328, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 2, area_id = 403 },
	{ config_id = 113005, monster_id = 28030103, pos = { x = -642.033, y = 120.880, z = -122.214 }, rot = { x = 0.000, y = 167.456, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 2, area_id = 403 },
	{ config_id = 113006, monster_id = 28030103, pos = { x = -635.462, y = 120.387, z = -131.536 }, rot = { x = 0.000, y = 255.572, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 2, area_id = 403 }
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
	{ config_id = 1113002, name = "GROUP_LOAD_113002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_113002", trigger_count = 0 }
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
	end_suite = 2,
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
		monsters = { 113003, 113004, 113005, 113006 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_113002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_113002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_113002(context, evt)
	 if ScriptLib.GetGroupVariableValueByGroup(context, "create", 199003093) == 0 then	 
	 if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 1 then
	
	ScriptLib.RefreshGroup(context, { group_id = 199003113, suite = 2 }) 
	
		  else
			ScriptLib.RefreshGroup(context, { group_id = 199003113, suite = 1 }) 
	end
	  else
			ScriptLib.RefreshGroup(context, { group_id = 199003113, suite = 2 }) 
			end
	
	return 0
	
end