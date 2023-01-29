-- 基础信息
local base_info = {
	group_id = 133307166
}

-- Trigger变量
local defs = {
	gadget_1 = 166001,
	gadget_2 = 166002,
	gadget_3 = 166003
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
	{ config_id = 166001, gadget_id = 70330227, pos = { x = -1420.638, y = 34.590, z = 5751.028 }, rot = { x = 0.081, y = 15.712, z = 359.568 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 166002, gadget_id = 70330227, pos = { x = -1386.755, y = 10.744, z = 5767.105 }, rot = { x = 359.500, y = 15.393, z = 359.862 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 166003, gadget_id = 70330227, pos = { x = -1426.946, y = 9.965, z = 5753.379 }, rot = { x = 0.000, y = 14.429, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	--  教学
	{ config_id = 166010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1386.788, y = 12.230, z = 5765.652 }, area_id = 32 },
	--  教学
	{ config_id = 166011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1420.033, y = 35.251, z = 5750.508 }, area_id = 32 },
	--  教学
	{ config_id = 166012, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1426.245, y = 11.172, z = 5752.123 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1166006, name = "VARIABLE_CHANGE_166006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_166006", action = "action_EVENT_VARIABLE_CHANGE_166006" },
	-- 加载成功
	{ config_id = 1166009, name = "GROUP_LOAD_166009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_166009", action = "action_EVENT_GROUP_LOAD_166009", trigger_count = 0 },
	--  教学
	{ config_id = 1166010, name = "ENTER_REGION_166010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_166010", action = "action_EVENT_ENTER_REGION_166010" },
	--  教学
	{ config_id = 1166011, name = "ENTER_REGION_166011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_166011", action = "action_EVENT_ENTER_REGION_166011" },
	--  教学
	{ config_id = 1166012, name = "ENTER_REGION_166012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_166012", action = "action_EVENT_ENTER_REGION_166012" }
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
		gadgets = { 166001, 166002, 166003 },
		regions = { 166010, 166011, 166012 },
		triggers = { "VARIABLE_CHANGE_166006", "GROUP_LOAD_166009", "ENTER_REGION_166010", "ENTER_REGION_166011", "ENTER_REGION_166012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 166001, 166002, 166003 },
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
function condition_EVENT_VARIABLE_CHANGE_166006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_166006(context, evt)
	-- 改变指定group组133307163中， configid为163001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307163, 163001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_166009(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_166009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307166, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_166010(context, evt)
	if evt.param1 ~= 166010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_166010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_166011(context, evt)
	if evt.param1 ~= 166011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_166011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_166012(context, evt)
	if evt.param1 ~= 166012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_166012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"