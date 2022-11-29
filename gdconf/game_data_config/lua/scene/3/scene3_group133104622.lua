-- 基础信息
local base_info = {
	group_id = 133104622
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
	{ config_id = 622005, gadget_id = 70211121, pos = { x = 334.652, y = 154.397, z = 1005.671 }, rot = { x = 0.000, y = 152.293, z = 0.000 }, level = 16, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 622009, gadget_id = 70310001, pos = { x = 323.701, y = 151.700, z = 967.893 }, rot = { x = 0.000, y = 87.179, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 622010, gadget_id = 70310001, pos = { x = 368.704, y = 151.700, z = 990.903 }, rot = { x = 0.000, y = 89.502, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 622011, gadget_id = 70310001, pos = { x = 349.061, y = 151.700, z = 974.220 }, rot = { x = 0.000, y = 13.104, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 622012, gadget_id = 70310001, pos = { x = 342.855, y = 151.700, z = 954.557 }, rot = { x = 0.000, y = 64.680, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 622013, gadget_id = 70310001, pos = { x = 368.849, y = 151.700, z = 968.120 }, rot = { x = 0.000, y = 64.680, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 622014, gadget_id = 70310001, pos = { x = 362.615, y = 151.700, z = 948.317 }, rot = { x = 0.000, y = 64.680, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 622018, gadget_id = 70211031, pos = { x = 331.438, y = 154.470, z = 1003.776 }, rot = { x = 0.000, y = 152.298, z = 0.000 }, level = 16, chest_drop_id = 2001100, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 622019, gadget_id = 70217005, pos = { x = 330.304, y = 157.737, z = 1009.996 }, rot = { x = 0.000, y = 110.153, z = 0.000 }, level = 16, chest_drop_id = 1011300, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 622021, gadget_id = 70220036, pos = { x = 324.745, y = 156.234, z = 945.715 }, rot = { x = 347.673, y = 60.777, z = 166.489 }, level = 19, area_id = 6 },
	{ config_id = 622022, gadget_id = 70220013, pos = { x = 321.124, y = 152.840, z = 960.225 }, rot = { x = 0.000, y = 128.578, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 622023, gadget_id = 70220036, pos = { x = 311.334, y = 157.366, z = 967.299 }, rot = { x = 14.058, y = 70.271, z = 34.111 }, level = 19, area_id = 6 },
	{ config_id = 622025, gadget_id = 70220036, pos = { x = 377.889, y = 156.549, z = 1001.380 }, rot = { x = 348.054, y = 235.050, z = 298.335 }, level = 19, area_id = 6 },
	{ config_id = 622029, gadget_id = 70220013, pos = { x = 385.420, y = 152.840, z = 973.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 622031, gadget_id = 70360088, pos = { x = 336.573, y = 160.530, z = 998.003 }, rot = { x = 0.000, y = 152.279, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 622032, gadget_id = 70220036, pos = { x = 399.436, y = 155.904, z = 956.471 }, rot = { x = 0.000, y = 240.502, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 622051, gadget_id = 70220013, pos = { x = 370.511, y = 152.824, z = 933.059 }, rot = { x = 0.000, y = 299.932, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 622077, gadget_id = 70710091, pos = { x = 332.777, y = 153.583, z = 1006.063 }, rot = { x = 8.892, y = 181.616, z = 345.996 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 622006, shape = RegionShape.SPHERE, radius = 10, pos = { x = 388.397, y = 181.354, z = 899.812 }, area_id = 6 },
	{ config_id = 622008, shape = RegionShape.SPHERE, radius = 10, pos = { x = 387.306, y = 183.306, z = 900.838 }, area_id = 6 },
	{ config_id = 622015, shape = RegionShape.SPHERE, radius = 10, pos = { x = 380.431, y = 177.740, z = 914.223 }, area_id = 6 },
	{ config_id = 622049, shape = RegionShape.SPHERE, radius = 10, pos = { x = 372.680, y = 166.217, z = 931.713 }, area_id = 6 },
	{ config_id = 622052, shape = RegionShape.SPHERE, radius = 10, pos = { x = 387.306, y = 183.306, z = 900.838 }, area_id = 6 },
	{ config_id = 622053, shape = RegionShape.SPHERE, radius = 10, pos = { x = 387.306, y = 183.306, z = 900.838 }, area_id = 6 },
	{ config_id = 622076, shape = RegionShape.SPHERE, radius = 8, pos = { x = 372.575, y = 170.689, z = 929.481 }, area_id = 6 },
	{ config_id = 622095, shape = RegionShape.SPHERE, radius = 10, pos = { x = 387.652, y = 183.991, z = 898.424 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1622001, name = "VARIABLE_CHANGE_622001", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave1", condition = "condition_EVENT_VARIABLE_CHANGE_622001", action = "action_EVENT_VARIABLE_CHANGE_622001", trigger_count = 0 },
	{ config_id = 1622002, name = "VARIABLE_CHANGE_622002", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave2", condition = "condition_EVENT_VARIABLE_CHANGE_622002", action = "action_EVENT_VARIABLE_CHANGE_622002", trigger_count = 0 },
	{ config_id = 1622003, name = "VARIABLE_CHANGE_622003", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave3", condition = "condition_EVENT_VARIABLE_CHANGE_622003", action = "action_EVENT_VARIABLE_CHANGE_622003", trigger_count = 0 },
	{ config_id = 1622004, name = "VARIABLE_CHANGE_622004", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave3", condition = "condition_EVENT_VARIABLE_CHANGE_622004", action = "action_EVENT_VARIABLE_CHANGE_622004" },
	{ config_id = 1622006, name = "ENTER_REGION_622006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_622006", action = "action_EVENT_ENTER_REGION_622006", trigger_count = 0 },
	{ config_id = 1622007, name = "GADGET_CREATE_622007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_622007", action = "action_EVENT_GADGET_CREATE_622007", trigger_count = 0 },
	{ config_id = 1622008, name = "ENTER_REGION_622008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_622008", action = "action_EVENT_ENTER_REGION_622008", trigger_count = 0 },
	{ config_id = 1622015, name = "ENTER_REGION_622015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_622015", action = "action_EVENT_ENTER_REGION_622015", trigger_count = 0 },
	{ config_id = 1622049, name = "ENTER_REGION_622049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_622049", action = "action_EVENT_ENTER_REGION_622049" },
	{ config_id = 1622052, name = "ENTER_REGION_622052", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_622052", action = "action_EVENT_ENTER_REGION_622052", trigger_count = 0 },
	{ config_id = 1622053, name = "ENTER_REGION_622053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_622053", action = "action_EVENT_ENTER_REGION_622053", trigger_count = 0 },
	{ config_id = 1622076, name = "ENTER_REGION_622076", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_622076", action = "", trigger_count = 0 },
	{ config_id = 1622095, name = "ENTER_REGION_622095", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_622095", action = "action_EVENT_ENTER_REGION_622095" }
}

-- 变量
variables = {
	{ config_id = 1, name = "wave1", value = 0, no_refresh = true },
	{ config_id = 2, name = "wave2", value = 0, no_refresh = true },
	{ config_id = 3, name = "wave3", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 622034, gadget_id = 70220013, pos = { x = 334.962, y = 152.959, z = 928.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
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
	end_suite = 9,
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
		gadgets = { 622077 },
		regions = { 622006, 622015, 622076, 622095 },
		triggers = { "ENTER_REGION_622006", "ENTER_REGION_622015", "ENTER_REGION_622076", "ENTER_REGION_622095" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 622005, 622009, 622010, 622011, 622012, 622013, 622014, 622018, 622019, 622021, 622022, 622023, 622025, 622029, 622031, 622032, 622051, 622077 },
		regions = { 622006, 622008, 622015, 622049, 622052, 622053, 622076 },
		triggers = { "VARIABLE_CHANGE_622001", "VARIABLE_CHANGE_622002", "VARIABLE_CHANGE_622003", "VARIABLE_CHANGE_622004", "ENTER_REGION_622006", "GADGET_CREATE_622007", "ENTER_REGION_622008", "ENTER_REGION_622015", "ENTER_REGION_622049", "ENTER_REGION_622052", "ENTER_REGION_622053", "ENTER_REGION_622076" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_622001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave1"为1
	if ScriptLib.GetGroupVariableValue(context, "wave1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_622001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104678, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_622002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave2"为1
	if ScriptLib.GetGroupVariableValue(context, "wave2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_622002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104679, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104678, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_622003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_622003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104680, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104678, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104679, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_622004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave3"为2
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_622004(context, evt)
	-- 将configid为 622031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 622031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_622006(context, evt)
	if evt.param1 ~= 622006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_622006(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2115) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_622007(context, evt)
	if 622031 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"wave3"为2
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_622007(context, evt)
	-- 将configid为 622031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 622031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_622008(context, evt)
	if evt.param1 ~= 622008 then return false end
	
	-- 判断变量"wave1"为1
	if ScriptLib.GetGroupVariableValue(context, "wave1") ~= 1 then
			return false
	end
	
	-- 判断变量"wave2"为0
	if ScriptLib.GetGroupVariableValue(context, "wave2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_622008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104678, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104678, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_622015(context, evt)
	if evt.param1 ~= 622015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_622015(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2015) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_622049(context, evt)
	if evt.param1 ~= 622049 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_622049(context, evt)
	-- 将本组内变量名为 "wave1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_622052(context, evt)
	if evt.param1 ~= 622052 then return false end
	
	-- 判断变量"wave2"为1
	if ScriptLib.GetGroupVariableValue(context, "wave2") ~= 1 then
			return false
	end
	
	-- 判断变量"wave3"为0
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_622052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104679, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104679, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_622053(context, evt)
	if evt.param1 ~= 622053 then return false end
	
	-- 判断变量"wave3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_622053(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104680, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104680, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_622076(context, evt)
	-- 判断任务7100522未完成
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7100522) == QuestState.UNFINISHED and
	evt.param1 == 622076 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ENTER_REGION_622095(context, evt)
	if evt.param1 ~= 622095 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if ScriptLib.GetQuestState(context, evt.target_eid, 7100521) ~= 3
	 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_622095(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133104622, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end