-- 基础信息
local base_info = {
	group_id = 133301426
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
	{ config_id = 426003, gadget_id = 70500000, pos = { x = -250.612, y = 286.140, z = 3683.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 29 },
	{ config_id = 426004, gadget_id = 70500000, pos = { x = -243.281, y = 286.100, z = 3677.780 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 29 },
	{ config_id = 426005, gadget_id = 70500000, pos = { x = -245.902, y = 286.108, z = 3675.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 29 },
	{ config_id = 426006, gadget_id = 70500000, pos = { x = -252.303, y = 286.085, z = 3677.279 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 27, point_type = 2052, area_id = 29 },
	{ config_id = 426007, gadget_id = 70500000, pos = { x = -243.615, y = 286.131, z = 3686.714 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1426001, name = "QUEST_FINISH_426001", event = EventType.EVENT_QUEST_FINISH, source = "7310602", condition = "", action = "action_EVENT_QUEST_FINISH_426001", trigger_count = 0 },
	{ config_id = 1426002, name = "GROUP_LOAD_426002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_426002", action = "action_EVENT_GROUP_LOAD_426002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_426001", "GROUP_LOAD_426002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 426003, 426004, 426005, 426006, 426007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_426001(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_426002(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_426002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301426, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end