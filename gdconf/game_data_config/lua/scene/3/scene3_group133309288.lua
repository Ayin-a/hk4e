-- 基础信息
local base_info = {
	group_id = 133309288
}

-- DEFS_MISCS
local glassNum = 3
local HourGlass_ConfigIDList = {288001,288002,288003}

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
	{ config_id = 288001, gadget_id = 70330310, pos = { x = -2279.297, y = 191.612, z = 5583.557 }, rot = { x = 0.000, y = 45.026, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 288002, gadget_id = 70330227, pos = { x = -2289.334, y = 191.622, z = 5583.514 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 288003, gadget_id = 70330310, pos = { x = -2329.300, y = 189.612, z = 5603.467 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 288004, gadget_id = 70211111, pos = { x = -2285.832, y = 191.622, z = 5583.465 }, rot = { x = 0.000, y = 270.229, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
	--  教学
	{ config_id = 288007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2290.986, y = 191.622, z = 5583.514 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 挑战成功
	{ config_id = 1288005, name = "VARIABLE_CHANGE_288005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_288005", action = "action_EVENT_VARIABLE_CHANGE_288005" },
	-- 运营埋点
	{ config_id = 1288006, name = "GADGET_STATE_CHANGE_288006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_288006", action = "action_EVENT_GADGET_STATE_CHANGE_288006" },
	--  教学
	{ config_id = 1288007, name = "ENTER_REGION_288007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_288007", action = "action_EVENT_ENTER_REGION_288007" },
	-- 运营埋点
	{ config_id = 1288008, name = "GADGET_STATE_CHANGE_288008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_288008", action = "action_EVENT_GADGET_STATE_CHANGE_288008" }
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
		gadgets = { 288001, 288002, 288003 },
		regions = { 288007 },
		triggers = { "VARIABLE_CHANGE_288005", "GADGET_STATE_CHANGE_288006", "ENTER_REGION_288007", "GADGET_STATE_CHANGE_288008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_288005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_288005(context, evt)
	-- 创建id为288004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 288004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_288006(context, evt)
	-- 检测config_id为288001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 288001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_288006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_288007(context, evt)
	if evt.param1 ~= 288007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_288007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_288008(context, evt)
	-- 检测config_id为288003的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 288003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_288008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"