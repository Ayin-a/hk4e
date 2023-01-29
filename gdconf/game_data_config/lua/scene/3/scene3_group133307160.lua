-- 基础信息
local base_info = {
	group_id = 133307160
}

-- Trigger变量
local defs = {
	gadget_1 = 160001,
	gadget_2 = 160002,
	gadget_3 = 160003
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
	{ config_id = 160001, gadget_id = 70330227, pos = { x = -1466.541, y = 18.893, z = 5667.917 }, rot = { x = 0.000, y = 284.608, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 160002, gadget_id = 70330227, pos = { x = -1488.569, y = 25.972, z = 5647.154 }, rot = { x = 0.711, y = 13.360, z = 0.069 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 160003, gadget_id = 70330227, pos = { x = -1509.711, y = 45.002, z = 5647.288 }, rot = { x = 0.000, y = 104.270, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 160004, gadget_id = 70211101, pos = { x = -1482.946, y = 26.713, z = 5673.303 }, rot = { x = 0.000, y = 284.224, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
	--  教学
	{ config_id = 160010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1508.486, y = 45.660, z = 5647.727 }, area_id = 32 },
	--  教学
	{ config_id = 160011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1486.719, y = 25.972, z = 5650.456 }, area_id = 32 },
	--  教学
	{ config_id = 160012, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1465.774, y = 21.594, z = 5668.703 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1160006, name = "VARIABLE_CHANGE_160006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_160006", action = "action_EVENT_VARIABLE_CHANGE_160006" },
	-- 挑战失败
	{ config_id = 1160007, name = "VARIABLE_CHANGE_160007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_160007", action = "action_EVENT_VARIABLE_CHANGE_160007", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1160008, name = "VARIABLE_CHANGE_160008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_160008", action = "action_EVENT_VARIABLE_CHANGE_160008", trigger_count = 0 },
	-- 加载成功
	{ config_id = 1160009, name = "GROUP_LOAD_160009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_160009", action = "action_EVENT_GROUP_LOAD_160009", trigger_count = 0 },
	--  教学
	{ config_id = 1160010, name = "ENTER_REGION_160010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_160010", action = "action_EVENT_ENTER_REGION_160010" },
	--  教学
	{ config_id = 1160011, name = "ENTER_REGION_160011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_160011", action = "action_EVENT_ENTER_REGION_160011" },
	--  教学
	{ config_id = 1160012, name = "ENTER_REGION_160012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_160012", action = "action_EVENT_ENTER_REGION_160012" }
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
		gadgets = { 160001, 160002, 160003 },
		regions = { 160010, 160011, 160012 },
		triggers = { "VARIABLE_CHANGE_160006", "VARIABLE_CHANGE_160007", "VARIABLE_CHANGE_160008", "GROUP_LOAD_160009", "ENTER_REGION_160010", "ENTER_REGION_160011", "ENTER_REGION_160012" },
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
		gadgets = { 160001, 160002, 160003 },
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
function condition_EVENT_VARIABLE_CHANGE_160006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_160006(context, evt)
	-- 创建id为160004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 160004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_160007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_160007(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133307160, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_160008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InChallenge"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_160008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307160, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_160009(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_160009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307160, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_160010(context, evt)
	if evt.param1 ~= 160010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_160010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_160011(context, evt)
	if evt.param1 ~= 160011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_160011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_160012(context, evt)
	if evt.param1 ~= 160012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_160012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"