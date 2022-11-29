-- 基础信息
local base_info = {
	group_id = 133106652
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
	{ config_id = 652003, gadget_id = 70500000, pos = { x = -792.842, y = 101.930, z = 1854.879 }, rot = { x = 0.000, y = 78.997, z = 8.084 }, level = 36, point_type = 2028, area_id = 19 },
	{ config_id = 652004, gadget_id = 70500000, pos = { x = -793.078, y = 101.910, z = 1856.787 }, rot = { x = 352.371, y = 7.045, z = 0.000 }, level = 36, point_type = 2028, area_id = 19 },
	{ config_id = 652007, gadget_id = 70500000, pos = { x = -779.038, y = 112.845, z = 1856.667 }, rot = { x = 340.334, y = 356.540, z = 74.944 }, level = 36, point_type = 2028, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1652001, name = "QUEST_FINISH_652001", event = EventType.EVENT_QUEST_FINISH, source = "7106411", condition = "", action = "action_EVENT_QUEST_FINISH_652001" },
	{ config_id = 1652002, name = "GROUP_LOAD_652002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_652002", action = "action_EVENT_GROUP_LOAD_652002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 652005, gadget_id = 70590062, pos = { x = -793.497, y = 103.573, z = 1856.288 }, rot = { x = 352.023, y = 112.962, z = 36.999 }, level = 36, area_id = 19 },
		{ config_id = 652006, gadget_id = 70500000, pos = { x = -545.716, y = 184.569, z = 1751.251 }, rot = { x = 3.461, y = 71.819, z = 2.054 }, level = 36, point_type = 2028, area_id = 19 }
	}
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
		triggers = { "QUEST_FINISH_652001", "GROUP_LOAD_652002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 652003, 652004, 652007 },
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
function action_EVENT_QUEST_FINISH_652001(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_652002(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_652002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106652, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end