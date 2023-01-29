-- 基础信息
local base_info = {
	group_id = 133307396
}

-- Trigger变量
local defs = {
	gadget_1 = 396001,
	gadget_2 = 396002,
	gadget_3 = 396003
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
	-- end_suite
	{ config_id = 396001, gadget_id = 70330227, pos = { x = -1610.216, y = -7.758, z = 5795.892 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 396002, gadget_id = 70330227, pos = { x = -1619.402, y = -7.835, z = 5798.366 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 396003, gadget_id = 70330310, pos = { x = -1610.425, y = 2.572, z = 5770.072 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 32 },
	{ config_id = 396004, gadget_id = 70211111, pos = { x = -1602.251, y = 2.361, z = 5779.163 }, rot = { x = 0.000, y = 285.016, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 396005, gadget_id = 70330225, pos = { x = -1612.519, y = -0.998, z = 5787.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 教学
	{ config_id = 396011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1617.688, y = -8.969, z = 5802.679 }, area_id = 32 },
	-- 教学
	{ config_id = 396012, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1617.688, y = -8.969, z = 5802.679 }, area_id = 32 },
	-- 建筑教学
	{ config_id = 396013, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1617.688, y = -8.969, z = 5802.679 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1396007, name = "VARIABLE_CHANGE_396007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_396007", action = "action_EVENT_VARIABLE_CHANGE_396007" },
	-- 挑战失败
	{ config_id = 1396008, name = "VARIABLE_CHANGE_396008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_396008", action = "action_EVENT_VARIABLE_CHANGE_396008", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1396009, name = "VARIABLE_CHANGE_396009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_396009", action = "action_EVENT_VARIABLE_CHANGE_396009", trigger_count = 0 },
	-- 加载成功
	{ config_id = 1396010, name = "GROUP_LOAD_396010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_396010", action = "action_EVENT_GROUP_LOAD_396010", trigger_count = 0 },
	-- 教学
	{ config_id = 1396011, name = "ENTER_REGION_396011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_396011", action = "action_EVENT_ENTER_REGION_396011" },
	-- 教学
	{ config_id = 1396012, name = "ENTER_REGION_396012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_396012", action = "action_EVENT_ENTER_REGION_396012" },
	-- 建筑教学
	{ config_id = 1396013, name = "ENTER_REGION_396013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_396013", action = "action_EVENT_ENTER_REGION_396013" }
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
		gadgets = { 396001, 396002, 396003, 396005 },
		regions = { 396011, 396012, 396013 },
		triggers = { "VARIABLE_CHANGE_396007", "VARIABLE_CHANGE_396008", "VARIABLE_CHANGE_396009", "GROUP_LOAD_396010", "ENTER_REGION_396011", "ENTER_REGION_396012", "ENTER_REGION_396013" },
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
		gadgets = { 396001, 396002, 396003 },
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
function condition_EVENT_VARIABLE_CHANGE_396007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_396007(context, evt)
	-- 创建id为396004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 396004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_396008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_396008(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133307396, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_396009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InChallenge"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InChallenge") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_396009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307396, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_396010(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_396010(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307396, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_396011(context, evt)
	if evt.param1 ~= 396011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_396011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_396012(context, evt)
	if evt.param1 ~= 396012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_396012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_396013(context, evt)
	if evt.param1 ~= 396013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307396, 396003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_396013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"
require "V3_1/Engineer_Mark"