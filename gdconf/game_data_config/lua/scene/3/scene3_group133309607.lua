-- 基础信息
local base_info = {
	group_id = 133309607
}

-- Trigger变量
local defs = {
	gadget_1 = 607001,
	gadget_2 = 607002,
	gadget_3 = 607003
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {defs.gadget_1,defs.gadget_2,defs.gadget_3}

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
	{ config_id = 607001, gadget_id = 70330227, pos = { x = -2419.841, y = 46.592, z = 5357.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607002, gadget_id = 70330227, pos = { x = -2380.257, y = 46.592, z = 5398.636 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607003, gadget_id = 70330227, pos = { x = -2340.319, y = 46.592, z = 5356.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607004, gadget_id = 70211101, pos = { x = -2345.171, y = 46.897, z = 5360.861 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 607005, gadget_id = 70220103, pos = { x = -2420.202, y = 49.113, z = 5360.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 607013, gadget_id = 70220103, pos = { x = -2380.134, y = 49.113, z = 5360.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607014, gadget_id = 70220103, pos = { x = -2340.138, y = 49.113, z = 5360.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607015, gadget_id = 70220103, pos = { x = -2420.202, y = 49.113, z = 5394.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607016, gadget_id = 70220103, pos = { x = -2380.134, y = 49.113, z = 5394.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607017, gadget_id = 70220103, pos = { x = -2340.138, y = 49.113, z = 5394.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607018, gadget_id = 70220103, pos = { x = -2420.202, y = -2.783, z = 5364.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607019, gadget_id = 70220103, pos = { x = -2380.134, y = -2.783, z = 5364.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607020, gadget_id = 70220103, pos = { x = -2340.138, y = -2.783, z = 5364.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607021, gadget_id = 70220103, pos = { x = -2420.202, y = -2.720, z = 5391.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607022, gadget_id = 70220103, pos = { x = -2380.134, y = -2.783, z = 5391.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607023, gadget_id = 70220103, pos = { x = -2340.138, y = -2.783, z = 5391.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607024, gadget_id = 70220103, pos = { x = -2325.157, y = 24.340, z = 5360.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607025, gadget_id = 70220103, pos = { x = -2325.409, y = 24.397, z = 5395.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607026, gadget_id = 70220103, pos = { x = -2339.916, y = 36.397, z = 5377.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607027, gadget_id = 70220103, pos = { x = -2421.473, y = 36.397, z = 5377.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607028, gadget_id = 70220103, pos = { x = -2421.473, y = 14.410, z = 5377.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607029, gadget_id = 70220103, pos = { x = -2339.916, y = 9.020, z = 5377.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607030, gadget_id = 70220103, pos = { x = -2435.204, y = 24.397, z = 5349.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607031, gadget_id = 70220103, pos = { x = -2435.204, y = 24.397, z = 5405.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 607032, gadget_id = 70220103, pos = { x = -2358.781, y = -16.075, z = 5377.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	--  教学
	{ config_id = 607010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2365.874, y = 49.222, z = 5355.764 }, area_id = 27 },
	--  教学
	{ config_id = 607011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2365.874, y = 49.222, z = 5355.764 }, area_id = 27 },
	--  教学
	{ config_id = 607012, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2365.874, y = 49.222, z = 5355.764 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1607006, name = "VARIABLE_CHANGE_607006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_607006", action = "action_EVENT_VARIABLE_CHANGE_607006" },
	-- 挑战失败
	{ config_id = 1607007, name = "VARIABLE_CHANGE_607007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_607007", action = "action_EVENT_VARIABLE_CHANGE_607007", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1607008, name = "VARIABLE_CHANGE_607008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_607008", action = "action_EVENT_VARIABLE_CHANGE_607008", trigger_count = 0 },
	-- 加载成功
	{ config_id = 1607009, name = "GROUP_LOAD_607009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_607009", action = "action_EVENT_GROUP_LOAD_607009", trigger_count = 0 },
	--  教学
	{ config_id = 1607010, name = "ENTER_REGION_607010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_607010", action = "action_EVENT_ENTER_REGION_607010" },
	--  教学
	{ config_id = 1607011, name = "ENTER_REGION_607011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_607011", action = "action_EVENT_ENTER_REGION_607011" },
	--  教学
	{ config_id = 1607012, name = "ENTER_REGION_607012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_607012", action = "action_EVENT_ENTER_REGION_607012" }
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
		gadgets = { 607001, 607002, 607003 },
		regions = { 607010, 607011, 607012 },
		triggers = { "VARIABLE_CHANGE_607006", "VARIABLE_CHANGE_607007", "VARIABLE_CHANGE_607008", "GROUP_LOAD_607009", "ENTER_REGION_607010", "ENTER_REGION_607011", "ENTER_REGION_607012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 607005, 607013, 607014, 607015, 607016, 607017, 607018, 607019, 607020, 607021, 607022, 607023, 607024, 607025, 607026, 607027, 607028, 607029, 607030, 607031, 607032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 607001, 607002, 607003, 607005, 607013, 607014, 607015, 607016, 607017, 607018, 607019, 607020, 607021, 607022, 607023, 607024, 607025, 607026, 607027, 607028, 607029, 607030, 607031, 607032 },
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
function condition_EVENT_VARIABLE_CHANGE_607006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_607006(context, evt)
	-- 创建id为607004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 607004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_607007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 0 then
			return false
	end
	
	-- 判断变量"HourGlass_InChallenge"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_607007(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133309607, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_607008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InChallenge"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_607008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309607, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_607009(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_607009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309607, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_607010(context, evt)
	if evt.param1 ~= 607010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_607010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_607011(context, evt)
	if evt.param1 ~= 607011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_607011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_607012(context, evt)
	if evt.param1 ~= 607012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_607012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"