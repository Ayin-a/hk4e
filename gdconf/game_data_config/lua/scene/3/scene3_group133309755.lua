-- 基础信息
local base_info = {
	group_id = 133309755
}

-- Trigger变量
local defs = {
	gadget_1 = 755001,
	gadget_2 = 755002,
	gadget_3 = 755003
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
	{ config_id = 755001, gadget_id = 70330228, pos = { x = -2687.656, y = 20.926, z = 5728.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 755002, gadget_id = 70330228, pos = { x = -2713.384, y = -1.858, z = 5765.156 }, rot = { x = 0.000, y = 95.777, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 755003, gadget_id = 70330228, pos = { x = -2668.182, y = 27.387, z = 5787.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 755004, gadget_id = 70211101, pos = { x = -2666.900, y = 5.536, z = 5752.428 }, rot = { x = 16.383, y = 274.512, z = 356.314 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 755005, gadget_id = 70220103, pos = { x = -2670.487, y = 17.642, z = 5730.775 }, rot = { x = 0.000, y = 188.381, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 755010, gadget_id = 70220103, pos = { x = -2669.906, y = 6.995, z = 5754.538 }, rot = { x = 0.000, y = 188.381, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 755011, gadget_id = 70220103, pos = { x = -2705.557, y = -0.453, z = 5760.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 755012, gadget_id = 70220103, pos = { x = -2668.453, y = 28.251, z = 5783.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 教学
	{ config_id = 755013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2687.656, y = 20.926, z = 5728.106 }, area_id = 27 },
	-- 教学
	{ config_id = 755014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2713.384, y = -1.858, z = 5765.156 }, area_id = 27 },
	-- 教学
	{ config_id = 755015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2668.182, y = 27.387, z = 5787.179 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1755006, name = "VARIABLE_CHANGE_755006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_755006", action = "action_EVENT_VARIABLE_CHANGE_755006" },
	-- 挑战失败
	{ config_id = 1755007, name = "VARIABLE_CHANGE_755007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_755007", action = "action_EVENT_VARIABLE_CHANGE_755007", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1755008, name = "VARIABLE_CHANGE_755008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_755008", action = "action_EVENT_VARIABLE_CHANGE_755008", trigger_count = 0 },
	-- 加载成功
	{ config_id = 1755009, name = "GROUP_LOAD_755009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_755009", action = "action_EVENT_GROUP_LOAD_755009", trigger_count = 0 },
	-- 教学
	{ config_id = 1755013, name = "ENTER_REGION_755013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_755013", action = "action_EVENT_ENTER_REGION_755013" },
	-- 教学
	{ config_id = 1755014, name = "ENTER_REGION_755014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_755014", action = "action_EVENT_ENTER_REGION_755014" },
	-- 教学
	{ config_id = 1755015, name = "ENTER_REGION_755015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_755015", action = "action_EVENT_ENTER_REGION_755015" }
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
		gadgets = { 755001, 755002, 755003 },
		regions = { 755013, 755014, 755015 },
		triggers = { "VARIABLE_CHANGE_755006", "VARIABLE_CHANGE_755007", "VARIABLE_CHANGE_755008", "GROUP_LOAD_755009", "ENTER_REGION_755013", "ENTER_REGION_755014", "ENTER_REGION_755015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 755005, 755010, 755011, 755012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 755001, 755002, 755003, 755005, 755010, 755011, 755012 },
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
function condition_EVENT_VARIABLE_CHANGE_755006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_755006(context, evt)
	-- 创建id为755004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 755004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_755007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_755007(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133309755, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_755008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InChallenge"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_755008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309755, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_755009(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_755009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309755, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_755013(context, evt)
	if evt.param1 ~= 755013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_755013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_755014(context, evt)
	if evt.param1 ~= 755014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_755014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_755015(context, evt)
	if evt.param1 ~= 755015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_755015(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"