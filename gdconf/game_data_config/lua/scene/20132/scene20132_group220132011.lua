-- 基础信息
local base_info = {
	group_id = 220132011
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
	{ config_id = 11003, gadget_id = 70360001, pos = { x = 535.578, y = 106.933, z = 355.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11005, gadget_id = 70900201, pos = { x = 447.826, y = 65.415, z = 466.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11006, gadget_id = 70900201, pos = { x = 448.435, y = 59.887, z = 460.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11007, gadget_id = 70900201, pos = { x = 449.000, y = 62.807, z = 434.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11008, gadget_id = 70900201, pos = { x = 449.518, y = 62.074, z = 413.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11009, gadget_id = 70900201, pos = { x = 441.959, y = 65.882, z = 369.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11012, gadget_id = 70710058, pos = { x = 441.959, y = 65.373, z = 369.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11015, gadget_id = 70900201, pos = { x = 463.450, y = 65.765, z = 385.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11017, gadget_id = 70900201, pos = { x = 478.378, y = 67.349, z = 385.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11018, gadget_id = 70900201, pos = { x = 494.460, y = 90.379, z = 385.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11019, gadget_id = 70900201, pos = { x = 549.056, y = 91.777, z = 367.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11020, gadget_id = 70900201, pos = { x = 535.578, y = 107.967, z = 355.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11023, gadget_id = 70900201, pos = { x = 520.155, y = 104.620, z = 372.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11001, shape = RegionShape.SPHERE, radius = 7, pos = { x = 447.826, y = 62.401, z = 463.614 } },
	{ config_id = 11002, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 15.000 }, pos = { x = 475.320, y = 36.110, z = 473.363 } },
	{ config_id = 11004, shape = RegionShape.SPHERE, radius = 6, pos = { x = 445.254, y = 24.871, z = 575.739 } },
	{ config_id = 11010, shape = RegionShape.CYLINDER, radius = 6, pos = { x = 449.518, y = 66.941, z = 413.717 }, height = 20.000 },
	{ config_id = 11011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 441.959, y = 65.373, z = 369.414 } },
	{ config_id = 11016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 25.000, z = 10.000 }, pos = { x = 464.944, y = 65.765, z = 385.645 } },
	{ config_id = 11021, shape = RegionShape.CUBIC, size = { x = 20.000, y = 15.000, z = 10.000 }, pos = { x = 449.521, y = 65.395, z = 433.962 } },
	{ config_id = 11022, shape = RegionShape.CUBIC, size = { x = 20.000, y = 50.000, z = 60.000 }, pos = { x = 551.024, y = 104.148, z = 374.185 } },
	{ config_id = 11024, shape = RegionShape.CUBIC, size = { x = 50.000, y = 20.000, z = 50.000 }, pos = { x = 520.155, y = 112.317, z = 372.406 } }
}

-- 触发器
triggers = {
	{ config_id = 1011001, name = "ENTER_REGION_11001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11001", action = "action_EVENT_ENTER_REGION_11001" },
	{ config_id = 1011002, name = "ENTER_REGION_11002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11002", action = "action_EVENT_ENTER_REGION_11002", trigger_count = 0 },
	{ config_id = 1011004, name = "ENTER_REGION_11004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11004", action = "action_EVENT_ENTER_REGION_11004" },
	{ config_id = 1011010, name = "ENTER_REGION_11010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11010", action = "action_EVENT_ENTER_REGION_11010" },
	{ config_id = 1011011, name = "ENTER_REGION_11011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11011", action = "action_EVENT_ENTER_REGION_11011" },
	{ config_id = 1011016, name = "ENTER_REGION_11016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11016", action = "action_EVENT_ENTER_REGION_11016" },
	{ config_id = 1011021, name = "ENTER_REGION_11021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11021", action = "action_EVENT_ENTER_REGION_11021" },
	{ config_id = 1011022, name = "ENTER_REGION_11022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11022", action = "action_EVENT_ENTER_REGION_11022" },
	{ config_id = 1011024, name = "ENTER_REGION_11024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11024", action = "action_EVENT_ENTER_REGION_11024" }
}

-- 变量
variables = {
	{ config_id = 1, name = "KeyU", value = 0, no_refresh = false },
	{ config_id = 2, name = "KeyFlower", value = 0, no_refresh = false },
	{ config_id = 3, name = "KeyHigh", value = 0, no_refresh = false },
	{ config_id = 4, name = "KeyCount", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 11014, gadget_id = 70360001, pos = { x = 450.326, y = 13.668, z = 487.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	regions = {
		{ config_id = 11013, shape = RegionShape.CUBIC, size = { x = 30.000, y = 25.000, z = 20.000 }, pos = { x = 449.476, y = 76.384, z = 369.414 } }
	},
	triggers = {
		{ config_id = 1011013, name = "ENTER_REGION_11013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11013", action = "action_EVENT_ENTER_REGION_11013" }
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
		gadgets = { 11003 },
		regions = { 11002, 11004 },
		triggers = { "ENTER_REGION_11002", "ENTER_REGION_11004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11005 },
		regions = { 11001 },
		triggers = { "ENTER_REGION_11001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 11006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 11007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 11008 },
		regions = { 11010, 11021 },
		triggers = { "ENTER_REGION_11010", "ENTER_REGION_11021" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 11009 },
		regions = { 11011 },
		triggers = { "ENTER_REGION_11011" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 11012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 11015 },
		regions = { 11016 },
		triggers = { "ENTER_REGION_11016" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 11017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 11018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 11019 },
		regions = { 11022 },
		triggers = { "ENTER_REGION_11022" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 11020 },
		regions = { 11024 },
		triggers = { "ENTER_REGION_11024" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 11023 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_11001(context, evt)
	if evt.param1 ~= 11001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11002(context, evt)
	if evt.param1 ~= 11002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"KeyU"为0
	if ScriptLib.GetGroupVariableValue(context, "KeyU") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11004(context, evt)
	if evt.param1 ~= 11004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"KeyFlower"为0
	if ScriptLib.GetGroupVariableValue(context, "KeyFlower") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132009, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11010(context, evt)
	if evt.param1 ~= 11010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11011(context, evt)
	if evt.param1 ~= 11011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组220132001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220132001, 1003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220132014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11016(context, evt)
	if evt.param1 ~= 11016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11021(context, evt)
	if evt.param1 ~= 11021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11021(context, evt)
	-- 调用提示id为 201320301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201320301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11022(context, evt)
	if evt.param1 ~= 11022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 12 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11024(context, evt)
	if evt.param1 ~= 11024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220132011, suite = 13 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end