-- 基础信息
local base_info = {
	group_id = 133310350
}

-- Trigger变量
local defs = {
	gadget_1 = 350001,
	gadget_2 = 350002,
	gadget_3 = 350003
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
	{ config_id = 350001, gadget_id = 70330227, pos = { x = -2286.008, y = 106.514, z = 5269.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 350002, gadget_id = 70330227, pos = { x = -2276.001, y = 114.608, z = 5258.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 350003, gadget_id = 70330227, pos = { x = -2297.998, y = 114.608, z = 5278.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 350004, gadget_id = 70211101, pos = { x = -2285.982, y = 121.220, z = 5285.609 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 350005, gadget_id = 70220103, pos = { x = -2276.710, y = 110.069, z = 5249.098 }, rot = { x = 0.000, y = 41.099, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 350006, gadget_id = 70220103, pos = { x = -2276.032, y = 116.914, z = 5253.479 }, rot = { x = 0.000, y = 41.099, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 350007, gadget_id = 70220103, pos = { x = -2276.375, y = 117.108, z = 5278.873 }, rot = { x = 0.000, y = 41.099, z = 0.000 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 350012, gadget_id = 70220103, pos = { x = -2297.732, y = 116.914, z = 5265.225 }, rot = { x = 0.000, y = 41.099, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 350013, gadget_id = 70220103, pos = { x = -2290.186, y = 113.604, z = 5263.396 }, rot = { x = 0.000, y = 251.821, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 350017, gadget_id = 70220103, pos = { x = -2285.964, y = 123.957, z = 5282.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 教学
	{ config_id = 350014, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2286.008, y = 106.514, z = 5269.181 }, area_id = 27 },
	-- 教学
	{ config_id = 350015, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2276.001, y = 114.608, z = 5258.029 }, area_id = 27 },
	-- 教学
	{ config_id = 350016, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2297.998, y = 114.608, z = 5278.988 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1350008, name = "VARIABLE_CHANGE_350008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_350008", action = "action_EVENT_VARIABLE_CHANGE_350008" },
	-- 挑战失败
	{ config_id = 1350009, name = "VARIABLE_CHANGE_350009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_350009", action = "action_EVENT_VARIABLE_CHANGE_350009", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1350010, name = "VARIABLE_CHANGE_350010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_350010", action = "action_EVENT_VARIABLE_CHANGE_350010", trigger_count = 0 },
	-- 加载成功
	{ config_id = 1350011, name = "GROUP_LOAD_350011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_350011", action = "action_EVENT_GROUP_LOAD_350011", trigger_count = 0 },
	-- 教学
	{ config_id = 1350014, name = "ENTER_REGION_350014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_350014", action = "action_EVENT_ENTER_REGION_350014" },
	-- 教学
	{ config_id = 1350015, name = "ENTER_REGION_350015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_350015", action = "action_EVENT_ENTER_REGION_350015" },
	-- 教学
	{ config_id = 1350016, name = "ENTER_REGION_350016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_350016", action = "action_EVENT_ENTER_REGION_350016" }
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
		gadgets = { 350001, 350002, 350003 },
		regions = { 350014, 350015, 350016 },
		triggers = { "VARIABLE_CHANGE_350008", "VARIABLE_CHANGE_350009", "VARIABLE_CHANGE_350010", "GROUP_LOAD_350011", "ENTER_REGION_350014", "ENTER_REGION_350015", "ENTER_REGION_350016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 350005, 350006, 350007, 350012, 350013, 350017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 350001, 350002, 350003, 350004, 350005, 350006, 350007, 350012, 350013, 350017 },
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
function condition_EVENT_VARIABLE_CHANGE_350008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_350008(context, evt)
	-- 创建id为350004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 350004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310350, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_350009(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_350009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310350, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_350010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InChallenge"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_350010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310350, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_350011(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_350011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310350, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_350014(context, evt)
	if evt.param1 ~= 350014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_350014(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_350015(context, evt)
	if evt.param1 ~= 350015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_350015(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_350016(context, evt)
	if evt.param1 ~= 350016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_350016(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"