-- 基础信息
local base_info = {
	group_id = 199004215
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
	{ config_id = 215001, gadget_id = 70350292, pos = { x = -401.336, y = 226.447, z = -612.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 },
	{ config_id = 215002, gadget_id = 70900380, pos = { x = -393.794, y = 230.021, z = -609.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 215003, gadget_id = 70900380, pos = { x = -389.678, y = 238.516, z = -602.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 215005, gadget_id = 70900380, pos = { x = -382.697, y = 247.726, z = -589.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 215006, gadget_id = 70900380, pos = { x = -369.976, y = 253.664, z = -573.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 215008, gadget_id = 70350292, pos = { x = -368.387, y = 205.523, z = -612.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 },
	{ config_id = 215009, gadget_id = 70900380, pos = { x = -370.968, y = 212.539, z = -610.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 215010, gadget_id = 70900380, pos = { x = -374.938, y = 217.808, z = -610.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 215011, gadget_id = 70900380, pos = { x = -379.683, y = 225.264, z = -608.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 215012, shape = RegionShape.SPHERE, radius = 2, pos = { x = -368.351, y = 205.388, z = -611.997 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1215012, name = "ENTER_REGION_215012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_215012", action = "action_EVENT_ENTER_REGION_215012", trigger_count = 0 },
	{ config_id = 1215013, name = "TIME_AXIS_PASS_215013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_215013", action = "action_EVENT_TIME_AXIS_PASS_215013", trigger_count = 0 },
	{ config_id = 1215014, name = "GROUP_LOAD_215014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_215014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true }
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
		gadgets = { 215001, 215002, 215003, 215005, 215006, 215008 },
		regions = { 215012 },
		triggers = { "ENTER_REGION_215012", "TIME_AXIS_PASS_215013", "GROUP_LOAD_215014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 215009, 215010, 215011 },
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
function condition_EVENT_ENTER_REGION_215012(context, evt)
	if evt.param1 ~= 215012 then return false end
	
	-- 判断变量"temp"为0
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 0 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_215012(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004215, 2)
	
	-- 创建标识为"time"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "time", {10}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_215013(context, evt)
	if "time" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_215013(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004215, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_215014(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_0/ElectricCore"