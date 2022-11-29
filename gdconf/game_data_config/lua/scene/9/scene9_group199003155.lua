-- 基础信息
local base_info = {
	group_id = 199003155
}

-- Trigger变量
local defs = {
	point_sum = 9,
	route_2 = 900300043,
	gadget_seelie = 155003
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
	{ config_id = 155001, gadget_id = 70310456, pos = { x = -702.885, y = 138.728, z = 19.410 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155002, gadget_id = 70360001, pos = { x = -701.400, y = 138.405, z = 17.609 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, persistent = true, worktop_config = { init_options = { 411 } }, area_id = 403 },
	{ config_id = 155003, gadget_id = 70310244, pos = { x = -700.835, y = 138.504, z = 18.057 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, area_id = 403 },
	{ config_id = 155008, gadget_id = 70310456, pos = { x = -702.021, y = 138.909, z = 18.281 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155009, gadget_id = 70310456, pos = { x = -701.919, y = 140.944, z = 17.700 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155010, gadget_id = 70310456, pos = { x = -701.123, y = 139.668, z = 16.980 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155011, gadget_id = 70310456, pos = { x = -700.618, y = 139.648, z = 16.348 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155012, gadget_id = 70310456, pos = { x = -700.099, y = 138.061, z = 16.046 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155013, gadget_id = 70310456, pos = { x = -703.089, y = 137.760, z = 19.531 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	-- 1
	{ config_id = 155014, gadget_id = 70310456, pos = { x = -701.400, y = 138.405, z = 17.609 }, rot = { x = 7.856, y = 231.576, z = 1.424 }, level = 20, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155015, gadget_id = 70310457, pos = { x = -703.404, y = 138.258, z = 19.037 }, rot = { x = 345.132, y = 212.957, z = 103.037 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155016, gadget_id = 70310457, pos = { x = -702.893, y = 138.755, z = 19.011 }, rot = { x = 0.049, y = 209.506, z = 172.248 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155017, gadget_id = 70310457, pos = { x = -702.371, y = 138.837, z = 18.716 }, rot = { x = 0.049, y = 209.506, z = 172.249 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155018, gadget_id = 70310457, pos = { x = -701.943, y = 139.325, z = 18.225 }, rot = { x = 357.276, y = 208.561, z = 104.233 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155019, gadget_id = 70310457, pos = { x = -701.771, y = 140.162, z = 18.127 }, rot = { x = 0.049, y = 209.506, z = 102.781 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155020, gadget_id = 70310457, pos = { x = -701.713, y = 140.456, z = 18.093 }, rot = { x = 0.049, y = 209.506, z = 102.781 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155021, gadget_id = 70310457, pos = { x = -701.386, y = 140.521, z = 17.882 }, rot = { x = 353.564, y = 200.941, z = 58.646 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155022, gadget_id = 70310457, pos = { x = -701.134, y = 140.048, z = 17.728 }, rot = { x = 353.564, y = 200.941, z = 58.646 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155023, gadget_id = 70310457, pos = { x = -700.739, y = 139.661, z = 16.823 }, rot = { x = 353.445, y = 232.812, z = 358.366 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155024, gadget_id = 70310457, pos = { x = -700.398, y = 139.106, z = 16.267 }, rot = { x = 353.445, y = 232.812, z = 71.110 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155025, gadget_id = 70310457, pos = { x = -700.315, y = 138.399, z = 16.024 }, rot = { x = 353.445, y = 232.812, z = 71.110 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 403 },
	{ config_id = 155027, gadget_id = 70211001, pos = { x = -707.170, y = 140.273, z = -142.654 }, rot = { x = 347.652, y = 0.000, z = 354.591 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 155028, gadget_id = 70360001, pos = { x = -707.220, y = 140.425, z = -142.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, worktop_config = { init_options = { 169 } }, area_id = 403 },
	{ config_id = 155030, gadget_id = 70500000, pos = { x = -716.588, y = 134.131, z = -81.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9306, isOneoff = true, persistent = true, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 155007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -702.930, y = 136.135, z = 16.531 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1155004, name = "SELECT_OPTION_155004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_155004", action = "action_EVENT_SELECT_OPTION_155004", trigger_count = 0 },
	{ config_id = 1155005, name = "PLATFORM_REACH_POINT_155005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_155005", action = "action_EVENT_PLATFORM_REACH_POINT_155005", trigger_count = 0 },
	{ config_id = 1155006, name = "AVATAR_NEAR_PLATFORM_155006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_155006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_155006", trigger_count = 0 },
	{ config_id = 1155007, name = "ENTER_REGION_155007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_155007", action = "action_EVENT_ENTER_REGION_155007", trigger_count = 0 },
	{ config_id = 1155029, name = "SELECT_OPTION_155029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_155029", action = "action_EVENT_SELECT_OPTION_155029", trigger_count = 0 },
	{ config_id = 1155031, name = "GROUP_LOAD_155031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_155031", action = "action_EVENT_GROUP_LOAD_155031", trigger_count = 0 },
	{ config_id = 1155032, name = "GROUP_LOAD_155032", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_155032", action = "action_EVENT_GROUP_LOAD_155032", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "touch", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1155026, name = "PLATFORM_REACH_POINT_155026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_155026", action = "action_EVENT_PLATFORM_REACH_POINT_155026", trigger_count = 0 }
	}
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
		gadgets = { 155001, 155002, 155008, 155009, 155010, 155011, 155012, 155013, 155014, 155015, 155016, 155017, 155018, 155019, 155020, 155021, 155022, 155023, 155024, 155025 },
		regions = { 155007 },
		triggers = { "SELECT_OPTION_155004", "PLATFORM_REACH_POINT_155005", "AVATAR_NEAR_PLATFORM_155006", "ENTER_REGION_155007", "SELECT_OPTION_155029", "GROUP_LOAD_155031", "GROUP_LOAD_155032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 155003, 155027, 155028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 155030 },
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
function condition_EVENT_SELECT_OPTION_155004(context, evt)
	-- 判断是gadgetid 155002 option_id 411
	if 155002 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_155004(context, evt)
	ScriptLib.SetGroupVariableValue(context, "touch", 1)
	ScriptLib.RemoveEntityByConfigId(context, 199003155, EntityType.GADGET, 155014 )
	ScriptLib.RemoveEntityByConfigId(context, 199003155, EntityType.GADGET, 155002 )
	 ScriptLib.CreateGadget(context, { config_id = 155003 })
	 ScriptLib.SetPlatformRouteId(context, 155003, 900300043) 
	
	 ScriptLib.StartPlatform(context, 155003) 
	
	 ScriptLib.CreateGadget(context, { config_id = 155028 }) 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_155005(context, evt)
	-- 判断是gadgetid 为 155003的移动平台，是否到达了900300043 的路线中的 5 点
	
	if 155003 ~= evt.param1 then
	  return false
	end
	
	if 900300043 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_155005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 155003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为155030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 155030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_155006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_155006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 155003) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_155007(context, evt)
	if evt.param1 ~= 155007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_155007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 155003, 900300043) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 155003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_155029(context, evt)
	-- 判断是gadgetid 155028 option_id 169
	if 155028 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_155029(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为155027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 155027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除指定group： 199003155 ；指定config：155028；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199003155, 155028, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_155031(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_155031(context, evt)
	ScriptLib.RefreshGroup(context, { group_id = 199003155, suite = 1 }) 
	
	if ScriptLib.GetGroupVariableValue(context, "touch") == 1 then
	 ScriptLib.CreateGadget(context, { config_id = 155028 }) 
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_155032(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_155032(context, evt)
	ScriptLib.CreateGadget(context, { config_id = 155027 })
	ScriptLib.CreateGadget(context, { config_id = 155030 })
	 ScriptLib.RemoveEntityByConfigId(context, 199003155, EntityType.GADGET, 155028 )
	ScriptLib.RemoveEntityByConfigId(context, 199003155, EntityType.GADGET, 155002 )
	 ScriptLib.RemoveEntityByConfigId(context, 199003155, EntityType.GADGET, 155014 ) 
	
	return 0
end