-- 基础信息
local base_info = {
	group_id = 133106616
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
	{ config_id = 616001, gadget_id = 70500000, pos = { x = -787.603, y = 378.907, z = 2064.233 }, rot = { x = 0.000, y = 52.138, z = 0.000 }, level = 36, point_type = 2028, persistent = true, area_id = 19 },
	{ config_id = 616002, gadget_id = 70500000, pos = { x = -784.765, y = 378.263, z = 2064.948 }, rot = { x = 0.000, y = 52.138, z = 0.000 }, level = 36, point_type = 2028, persistent = true, area_id = 19 },
	{ config_id = 616003, gadget_id = 70500000, pos = { x = -780.234, y = 378.470, z = 2063.345 }, rot = { x = 0.000, y = 52.138, z = 0.000 }, level = 36, point_type = 2028, persistent = true, area_id = 19 },
	{ config_id = 616006, gadget_id = 70500000, pos = { x = -784.793, y = 376.826, z = 2059.756 }, rot = { x = 351.172, y = 292.630, z = 4.440 }, level = 36, point_type = 2028, persistent = true, area_id = 19 },
	{ config_id = 616007, gadget_id = 70500000, pos = { x = -783.536, y = 376.650, z = 2059.504 }, rot = { x = 352.480, y = 0.142, z = 353.583 }, level = 36, point_type = 2028, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1616004, name = "QUEST_FINISH_616004", event = EventType.EVENT_QUEST_FINISH, source = "7108202", condition = "", action = "action_EVENT_QUEST_FINISH_616004", trigger_count = 0 },
	{ config_id = 1616005, name = "GROUP_LOAD_616005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_616005", action = "action_EVENT_GROUP_LOAD_616005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "questfinish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 616001, 616002, 616003 },
		regions = { },
		triggers = { "QUEST_FINISH_616004", "GROUP_LOAD_616005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 616001, 616002, 616003, 616006, 616007 },
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
function action_EVENT_QUEST_FINISH_616004(context, evt)
	-- 将本组内变量名为 "questfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_616005(context, evt)
	-- 判断变量"questfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "questfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_616005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106616, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end