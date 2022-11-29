-- 基础信息
local base_info = {
	group_id = 133221066
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
	{ config_id = 66001, gadget_id = 70710517, pos = { x = -3330.441, y = 290.254, z = -4537.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 66002, gadget_id = 70710517, pos = { x = -3322.066, y = 290.260, z = -4549.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 66003, gadget_id = 70710517, pos = { x = -3297.732, y = 280.201, z = -4559.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 66004, gadget_id = 70710517, pos = { x = -3295.409, y = 278.416, z = -4581.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 66005, gadget_id = 70710517, pos = { x = -3268.326, y = 269.710, z = -4544.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 66006, gadget_id = 70710517, pos = { x = -3289.138, y = 269.317, z = -4526.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 66007, gadget_id = 70710517, pos = { x = -3301.346, y = 278.854, z = -4534.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 66008, gadget_id = 70710517, pos = { x = -3292.532, y = 269.344, z = -4506.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 66009, gadget_id = 70710517, pos = { x = -3283.310, y = 268.682, z = -4527.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 66010, gadget_id = 70710517, pos = { x = -3264.423, y = 270.008, z = -4506.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 66011, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3343.021, y = 296.634, z = -4552.529 }, area_id = 11 },
	{ config_id = 66012, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3337.344, y = 295.787, z = -4548.407 }, area_id = 11 },
	{ config_id = 66013, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3314.932, y = 288.541, z = -4547.378 }, area_id = 11 },
	{ config_id = 66014, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3309.139, y = 284.892, z = -4554.285 }, area_id = 11 },
	{ config_id = 66015, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3287.350, y = 278.903, z = -4559.740 }, area_id = 11 },
	{ config_id = 66016, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3284.218, y = 278.903, z = -4551.752 }, area_id = 11 },
	{ config_id = 66017, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3288.944, y = 277.748, z = -4540.064 }, area_id = 11 },
	{ config_id = 66018, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3299.851, y = 269.764, z = -4516.410 }, area_id = 11 },
	{ config_id = 66019, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3289.538, y = 269.764, z = -4513.634 }, area_id = 11 },
	{ config_id = 66020, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3266.320, y = 269.764, z = -4518.605 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1066011, name = "ENTER_REGION_66011", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66011", action = "action_EVENT_ENTER_REGION_66011" },
	{ config_id = 1066012, name = "ENTER_REGION_66012", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66012", action = "action_EVENT_ENTER_REGION_66012" },
	{ config_id = 1066013, name = "ENTER_REGION_66013", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66013", action = "action_EVENT_ENTER_REGION_66013" },
	{ config_id = 1066014, name = "ENTER_REGION_66014", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66014", action = "action_EVENT_ENTER_REGION_66014" },
	{ config_id = 1066015, name = "ENTER_REGION_66015", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66015", action = "action_EVENT_ENTER_REGION_66015" },
	{ config_id = 1066016, name = "ENTER_REGION_66016", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66016", action = "action_EVENT_ENTER_REGION_66016" },
	{ config_id = 1066017, name = "ENTER_REGION_66017", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66017", action = "action_EVENT_ENTER_REGION_66017" },
	{ config_id = 1066018, name = "ENTER_REGION_66018", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66018", action = "action_EVENT_ENTER_REGION_66018" },
	{ config_id = 1066019, name = "ENTER_REGION_66019", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66019", action = "action_EVENT_ENTER_REGION_66019" },
	{ config_id = 1066020, name = "ENTER_REGION_66020", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_66020", action = "action_EVENT_ENTER_REGION_66020" }
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
		gadgets = { },
		regions = { 66011, 66012, 66013, 66014, 66015, 66016, 66017, 66018, 66019, 66020 },
		triggers = { "ENTER_REGION_66011", "ENTER_REGION_66012", "ENTER_REGION_66013", "ENTER_REGION_66014", "ENTER_REGION_66015", "ENTER_REGION_66016", "ENTER_REGION_66017", "ENTER_REGION_66018", "ENTER_REGION_66019", "ENTER_REGION_66020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_66011(context, evt)
	if evt.param1 ~= 66011 then return false end
	
	-- 判断是区域66011
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66011 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66011(context, evt)
	-- 创建id为66001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66012(context, evt)
	if evt.param1 ~= 66012 then return false end
	
	-- 判断是区域66012
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66012 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66012(context, evt)
	-- 创建id为66002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66013(context, evt)
	if evt.param1 ~= 66013 then return false end
	
	-- 判断是区域66013
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66013 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66013(context, evt)
	-- 创建id为66003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66014(context, evt)
	if evt.param1 ~= 66014 then return false end
	
	-- 判断是区域66014
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66014 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66014(context, evt)
	-- 创建id为66004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66015(context, evt)
	if evt.param1 ~= 66015 then return false end
	
	-- 判断是区域66015
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66015 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66015(context, evt)
	-- 创建id为66005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66016(context, evt)
	if evt.param1 ~= 66016 then return false end
	
	-- 判断是区域66016
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66016 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66016(context, evt)
	-- 创建id为66006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66017(context, evt)
	if evt.param1 ~= 66017 then return false end
	
	-- 判断是区域66017
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66017 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66017(context, evt)
	-- 创建id为66007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66018(context, evt)
	if evt.param1 ~= 66018 then return false end
	
	-- 判断是区域66018
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66018 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66018(context, evt)
	-- 创建id为66008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66019(context, evt)
	if evt.param1 ~= 66019 then return false end
	
	-- 判断是区域66019
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66019 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66019(context, evt)
	-- 创建id为66009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66020(context, evt)
	if evt.param1 ~= 66020 then return false end
	
	-- 判断是区域66020
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66020 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66020(context, evt)
	-- 创建id为66010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 66010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end