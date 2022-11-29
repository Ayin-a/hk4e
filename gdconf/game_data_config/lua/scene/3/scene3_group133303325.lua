-- 基础信息
local base_info = {
	group_id = 133303325
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
	{ config_id = 325001, gadget_id = 70330197, pos = { x = -1808.370, y = 185.448, z = 3635.042 }, rot = { x = 351.870, y = 260.827, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 325002, gadget_id = 70330197, pos = { x = -1818.870, y = 185.984, z = 3630.058 }, rot = { x = 353.567, y = 342.997, z = 2.490 }, level = 30, area_id = 23 },
	{ config_id = 325003, gadget_id = 70330197, pos = { x = -1821.155, y = 179.877, z = 3614.858 }, rot = { x = 352.407, y = 318.955, z = 1.085 }, level = 30, area_id = 23 },
	{ config_id = 325004, gadget_id = 70211001, pos = { x = -1816.798, y = 175.353, z = 3605.841 }, rot = { x = 348.069, y = 356.137, z = 341.300 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 325005, shape = RegionShape.SPHERE, radius = 1, pos = { x = -1808.108, y = 186.893, z = 3635.070 }, area_id = 23 },
	{ config_id = 325006, shape = RegionShape.SPHERE, radius = 1, pos = { x = -1819.086, y = 187.373, z = 3629.747 }, area_id = 23 },
	{ config_id = 325007, shape = RegionShape.SPHERE, radius = 1, pos = { x = -1821.155, y = 181.084, z = 3614.858 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1325005, name = "ENTER_REGION_325005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_325005", action = "action_EVENT_ENTER_REGION_325005" },
	{ config_id = 1325006, name = "ENTER_REGION_325006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_325006", action = "action_EVENT_ENTER_REGION_325006" },
	{ config_id = 1325007, name = "ENTER_REGION_325007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_325007", action = "action_EVENT_ENTER_REGION_325007" },
	{ config_id = 1325008, name = "VARIABLE_CHANGE_325008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_325008", action = "action_EVENT_VARIABLE_CHANGE_325008" }
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
		gadgets = { 325001, 325002, 325003 },
		regions = { 325005, 325006, 325007 },
		triggers = { "ENTER_REGION_325005", "ENTER_REGION_325006", "ENTER_REGION_325007", "VARIABLE_CHANGE_325008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_325005(context, evt)
	if evt.param1 ~= 325005 then return false end
	
	-- 判断是区域325005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 325005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_325005(context, evt)
	-- 针对当前group内变量名为 "sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_325006(context, evt)
	if evt.param1 ~= 325006 then return false end
	
	-- 判断是区域325006
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 325006 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_325006(context, evt)
	-- 针对当前group内变量名为 "sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_325007(context, evt)
	if evt.param1 ~= 325007 then return false end
	
	-- 判断是区域325007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 325007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_325007(context, evt)
	-- 针对当前group内变量名为 "sum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_325008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"sum"为3
	if ScriptLib.GetGroupVariableValue(context, "sum") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_325008(context, evt)
	-- 创建id为325004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 325004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end