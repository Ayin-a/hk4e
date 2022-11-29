-- 基础信息
local base_info = {
	group_id = 133309229
}

-- Trigger变量
local defs = {
	gadget_1 = 229001,
	gadget_2 = 229002,
	gadget_3 = 229003
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
	{ config_id = 229001, gadget_id = 70330310, pos = { x = -2226.875, y = 3.407, z = 5549.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 229002, gadget_id = 70330227, pos = { x = -2225.337, y = 3.592, z = 5588.438 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 229003, gadget_id = 70330310, pos = { x = -2203.441, y = 2.292, z = 5598.521 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 229004, gadget_id = 70211101, pos = { x = -2208.682, y = 3.302, z = 5578.589 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
	-- 建筑教学
	{ config_id = 229005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2203.441, y = 2.292, z = 5598.521 }, area_id = 27 },
	-- 教学
	{ config_id = 229006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2225.337, y = 3.592, z = 5588.438 }, area_id = 27 },
	-- 建筑教学
	{ config_id = 229007, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2226.875, y = 3.407, z = 5549.704 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 建筑教学
	{ config_id = 1229005, name = "ENTER_REGION_229005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_229005", action = "action_EVENT_ENTER_REGION_229005" },
	-- 教学
	{ config_id = 1229006, name = "ENTER_REGION_229006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_229006", action = "action_EVENT_ENTER_REGION_229006" },
	-- 建筑教学
	{ config_id = 1229007, name = "ENTER_REGION_229007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_229007", action = "action_EVENT_ENTER_REGION_229007" },
	{ config_id = 1229008, name = "VARIABLE_CHANGE_229008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_229008", action = "action_EVENT_VARIABLE_CHANGE_229008" },
	-- 运营埋点
	{ config_id = 1229009, name = "GADGET_STATE_CHANGE_229009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229009", action = "action_EVENT_GADGET_STATE_CHANGE_229009" },
	-- 运营埋点
	{ config_id = 1229010, name = "GADGET_STATE_CHANGE_229010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_229010", action = "action_EVENT_GADGET_STATE_CHANGE_229010" },
	{ config_id = 1229011, name = "GROUP_LOAD_229011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_229011", action = "action_EVENT_GROUP_LOAD_229011", trigger_count = 0 }
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
		gadgets = { 229001, 229002, 229003 },
		regions = { 229005, 229006, 229007 },
		triggers = { "ENTER_REGION_229005", "ENTER_REGION_229006", "ENTER_REGION_229007", "VARIABLE_CHANGE_229008", "GADGET_STATE_CHANGE_229009", "GADGET_STATE_CHANGE_229010", "GROUP_LOAD_229011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_229005(context, evt)
	if evt.param1 ~= 229005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309229, 229003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_229005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_229006(context, evt)
	if evt.param1 ~= 229006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_229006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_229007(context, evt)
	if evt.param1 ~= 229007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309229, 229001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_229007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_229008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_229008(context, evt)
	-- 创建id为229004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 229004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "create" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "create", 1, 133309312) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229009(context, evt)
	-- 检测config_id为229001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 229001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_229010(context, evt)
	-- 检测config_id为229003的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 229003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_229010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_229011(context, evt)
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_229011(context, evt)
	-- 将本组内变量名为 "create" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "create", 1, 133309312) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_1/Desert_HourGlass"