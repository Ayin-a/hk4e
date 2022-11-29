-- 基础信息
local base_info = {
	group_id = 133303457
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
	{ config_id = 457001, gadget_id = 70330197, pos = { x = -1919.935, y = 13.481, z = 3235.004 }, rot = { x = 0.000, y = 152.167, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 457002, gadget_id = 70330197, pos = { x = -1916.806, y = 14.235, z = 3243.337 }, rot = { x = 0.000, y = 61.814, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 457003, gadget_id = 70330197, pos = { x = -1923.834, y = 15.056, z = 3252.229 }, rot = { x = 0.000, y = 20.160, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 457004, gadget_id = 70211001, pos = { x = -1921.951, y = 15.304, z = 3253.522 }, rot = { x = 2.011, y = 146.528, z = 353.338 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 457005, shape = RegionShape.SPHERE, radius = 1, pos = { x = -1919.771, y = 14.630, z = 3235.000 }, area_id = 23 },
	{ config_id = 457006, shape = RegionShape.SPHERE, radius = 1, pos = { x = -1916.879, y = 15.418, z = 3243.427 }, area_id = 23 },
	{ config_id = 457007, shape = RegionShape.SPHERE, radius = 1, pos = { x = -1923.961, y = 15.990, z = 3252.411 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1457005, name = "ENTER_REGION_457005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_457005", action = "action_EVENT_ENTER_REGION_457005" },
	{ config_id = 1457006, name = "ENTER_REGION_457006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_457006", action = "action_EVENT_ENTER_REGION_457006" },
	{ config_id = 1457007, name = "ENTER_REGION_457007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_457007", action = "action_EVENT_ENTER_REGION_457007" },
	{ config_id = 1457008, name = "VARIABLE_CHANGE_457008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_457008", action = "action_EVENT_VARIABLE_CHANGE_457008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "sum", value = 0, no_refresh = false }
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
		gadgets = { 457001, 457002, 457003 },
		regions = { 457005, 457006, 457007 },
		triggers = { "ENTER_REGION_457005", "ENTER_REGION_457006", "ENTER_REGION_457007", "VARIABLE_CHANGE_457008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_457005(context, evt)
	if evt.param1 ~= 457005 then return false end
	
	-- 判断是区域457005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 457005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_457005(context, evt)
	-- 针对当前group内变量名为 "sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_457006(context, evt)
	if evt.param1 ~= 457006 then return false end
	
	-- 判断是区域457006
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 457006 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_457006(context, evt)
	-- 针对当前group内变量名为 "sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_457007(context, evt)
	if evt.param1 ~= 457007 then return false end
	
	-- 判断是区域457007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 457007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_457007(context, evt)
	-- 针对当前group内变量名为 "sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_457008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"sum"为3
	if ScriptLib.GetGroupVariableValue(context, "sum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_457008(context, evt)
	-- 创建id为457004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 457004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end