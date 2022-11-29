-- 基础信息
local base_info = {
	group_id = 220129019
}

-- Trigger变量
local defs = {
	pointarray = 4,
	portal = 19003,
	pointer = 19001,
	operation = 19002,
	time_group_id = 220129014,
	portal_group_id = 220129020,
	group_id = 220129019,
	pointarray_reverse = 4,
	pointarray_pointer = 8,
	pointarray_pointer_reverse = 8,
	otherRoom1_group_id = 220129016,
	otherRoom2_group_id = 220129017,
	otherRoom3_group_id = 220129018,
	door = 19009,
	l_compass = 0,
	s_compass = 19010,
	sky_compass = 19008
}

-- DEFS_MISCS
function SLC_Active_Portal(context)
        ScriptLib.PrintContextLog(context, "SLC_Active_Portal:run func")
        if ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id}) == defs.door then
                ScriptLib.PrintContextLog(context, "SLC_Active_Portal:触发传送")
                ScriptLib.CreateGadget(context, { config_id = defs.portal })
        end
        return 0
end

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
	{ config_id = 19001, gadget_id = 70800164, pos = { x = 534.067, y = 279.000, z = 102.000 }, rot = { x = 0.000, y = 269.100, z = 9.128 }, level = 1, is_use_point_array = true },
	{ config_id = 19002, gadget_id = 70800166, pos = { x = 318.690, y = 200.915, z = 42.520 }, rot = { x = 347.229, y = 20.623, z = 12.888 }, level = 1, is_use_point_array = true, worktop_config = { is_persistent = true, init_options = { 752, 753 } } },
	{ config_id = 19003, gadget_id = 70800172, pos = { x = 360.438, y = 200.344, z = 72.218 }, rot = { x = 0.000, y = 268.088, z = 0.000 }, level = 1 },
	{ config_id = 19008, gadget_id = 70800163, pos = { x = 550.900, y = 279.000, z = 102.000 }, rot = { x = 0.000, y = 269.100, z = 0.000 }, level = 1 },
	{ config_id = 19009, gadget_id = 70800140, pos = { x = 359.569, y = 200.367, z = 72.250 }, rot = { x = 0.000, y = 268.127, z = 0.000 }, level = 1 },
	{ config_id = 19010, gadget_id = 70800165, pos = { x = 318.574, y = 200.840, z = 42.209 }, rot = { x = 347.229, y = 20.623, z = 5.394 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 19011, shape = RegionShape.SPHERE, radius = 15, pos = { x = 358.926, y = 200.141, z = 71.898 } },
	{ config_id = 19016, shape = RegionShape.SPHERE, radius = 60, pos = { x = 328.629, y = 200.061, z = 73.428 } }
}

-- 触发器
triggers = {
	{ config_id = 1019004, name = "SELECT_OPTION_19004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19004", action = "action_EVENT_SELECT_OPTION_19004", trigger_count = 0 },
	-- 逆时针旋转时钟
	{ config_id = 1019005, name = "SELECT_OPTION_19005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_19005", action = "action_EVENT_SELECT_OPTION_19005", trigger_count = 0 },
	-- 判断是否移动到目标点阵
	{ config_id = 1019006, name = "PLATFORM_REACH_POINT_19006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19006", action = "action_EVENT_PLATFORM_REACH_POINT_19006", trigger_count = 0 },
	-- 时间变量同步
	{ config_id = 1019007, name = "VARIABLE_CHANGE_19007", event = EventType.EVENT_VARIABLE_CHANGE, source = "time", condition = "", action = "action_EVENT_VARIABLE_CHANGE_19007", trigger_count = 0 },
	{ config_id = 1019011, name = "ENTER_REGION_19011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19011", action = "action_EVENT_ENTER_REGION_19011", trigger_count = 0 },
	{ config_id = 1019012, name = "GADGET_CREATE_19012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19012", action = "action_EVENT_GADGET_CREATE_19012", trigger_count = 0 },
	{ config_id = 1019013, name = "GADGET_CREATE_19013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19013", action = "action_EVENT_GADGET_CREATE_19013", trigger_count = 0 },
	{ config_id = 1019014, name = "GADGET_CREATE_19014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_19014", action = "action_EVENT_GADGET_CREATE_19014", trigger_count = 0 },
	{ config_id = 1019016, name = "ENTER_REGION_19016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19016", action = "action_EVENT_ENTER_REGION_19016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "time", value = 3, no_refresh = true },
	{ config_id = 2, name = "min_time", value = 1, no_refresh = true },
	{ config_id = 3, name = "max_time", value = 4, no_refresh = true },
	{ config_id = 4, name = "last_time", value = 0, no_refresh = true }
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
		gadgets = { 19002, 19009, 19010 },
		regions = { 19011, 19016 },
		triggers = { "SELECT_OPTION_19004", "SELECT_OPTION_19005", "PLATFORM_REACH_POINT_19006", "VARIABLE_CHANGE_19007", "ENTER_REGION_19011", "GADGET_CREATE_19012", "GADGET_CREATE_19013", "GADGET_CREATE_19014", "ENTER_REGION_19016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 19001, 19008 },
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
function condition_EVENT_SELECT_OPTION_19004(context, evt)
	-- 判断是gadgetid 19002 option_id 752
	if 19002 ~= evt.param1 then
		return false	
	end
	
	if 752 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_19004(context, evt)
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	local temp_min=ScriptLib.GetGroupVariableValueByGroup(context, "min_time", defs.group_id)
	local temp_max=ScriptLib.GetGroupVariableValueByGroup(context, "max_time", defs.group_id)
	ScriptLib.SetGroupVariableValueByGroup(context, "last_time", temp_time, defs.group_id)
	
	if temp_time==5 then
	    temp_time=1
	else
	    temp_time=temp_time+1
	end
	
	--如果时限超过最大最小限制，则不能转动
	if temp_time<temp_min or temp_time>temp_max then
	  ScriptLib.PrintContextLog(context, "指针超过限制")
	  ScriptLib.ShowReminder(context, 400138) 
	  return 0
	end
	
	--设置时间管理变量
	ScriptLib.SetGroupVariableValueByGroup(context, "time", temp_time, defs.time_group_id)
	ScriptLib.SetGroupVariableValueByGroup(context, "time", temp_time, defs.group_id)
	ScriptLib.PrintContextLog(context, "变量设置成功")
	
	
	--删除操作选项
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.operation, 752)
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.operation, 753)
	
	
	return 0
	
	
	
	
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_19005(context, evt)
	-- 判断是gadgetid 19002 option_id 753
	if 19002 ~= evt.param1 then
		return false	
	end
	
	if 753 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_19005(context, evt)
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	local temp_min=ScriptLib.GetGroupVariableValueByGroup(context, "min_time", defs.group_id)
	local temp_max=ScriptLib.GetGroupVariableValueByGroup(context, "max_time", defs.group_id)
	ScriptLib.SetGroupVariableValueByGroup(context, "last_time", temp_time, defs.group_id)
	
	if temp_time==1 then
	    temp_time=5
	else
	    temp_time=temp_time-1
	end
	
	--如果时限超过最大最小限制，则不能转动
	if temp_time<temp_min or temp_time>temp_max then
	  ScriptLib.ShowReminder(context, 400138) 
	  ScriptLib.PrintContextLog(context, "指针超过限制")
	  return 0
	end
	
	--设置时间管理变量
	ScriptLib.SetGroupVariableValueByGroup(context, "time", temp_time, defs.time_group_id)
	ScriptLib.SetGroupVariableValueByGroup(context, "time", temp_time, defs.group_id)
	ScriptLib.PrintContextLog(context, "变量设置成功")
	
	--删除操作选项
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.operation, 752)
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.operation, 753)
	
	
	
	return 0
	
	
	
	
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19006(context, evt)
	-- 判断是gadgetid 为 508001的移动平台，是否到达了1 的点集中的 1 点
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	
	if defs.pointer ~= evt.param1 then
	  return false
	end
	
	if defs.pointarray ~= evt.param2 then
	  return false
	end
	
	if temp_time ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19006(context, evt)
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	--设置大门的state
	
	if temp_time==1 then
	    ScriptLib.SetGadgetStateByConfigId(context, defs.door, GadgetState.ChestLocked)
	
	end
	if temp_time==2 then
	    ScriptLib.SetGadgetStateByConfigId(context, defs.door, GadgetState.ChestOpened)
	
	end
	if temp_time==3 then
	    ScriptLib.SetGadgetStateByConfigId(context, defs.door, GadgetState.ChestTrap)
	
	end
	if temp_time==4 then
	    ScriptLib.SetGadgetStateByConfigId(context, defs.door, GadgetState.ChestBramble)
	
	end
	if temp_time==5 then
	    ScriptLib.SetGadgetStateByConfigId(context, defs.door, GadgetState.ChestFrozen)
	
	end
	--回复所有操作选项
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.operation, {752,753})
	--罗盘刻度特效
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.sky_compass, "SGV_Time", temp_time)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.s_compass, "SGV_Time", temp_time)
	
	return 0
	
	
	
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_19007(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	local temp_time1=ScriptLib.GetGroupVariableValueByGroup(context, "last_time", defs.group_id)
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.pointer, defs.pointarray, {temp_time1,temp_time}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	ScriptLib.PrintContextLog(context, "点阵移动成功")
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.operation, defs.pointarray_pointer, {temp_time1,temp_time}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	ScriptLib.PrintContextLog(context, "点阵移动成功")
	
	
	
	
	
	return 0
	
	
	
	
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19011(context, evt)
	if evt.param1 ~= 19011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19011(context, evt)
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	--设置时间通道的变量
	ScriptLib.SetGroupVariableValueByGroup(context, "time", temp_time, defs.time_group_id)
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_19012(context, evt)
	if defs.sky_compass ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19012(context, evt)
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	
	
	--罗盘刻度特效
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.sky_compass, "SGV_Time", temp_time)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_19013(context, evt)
	if defs.pointer ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19013(context, evt)
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.pointer, defs.pointarray, {temp_time}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	ScriptLib.PrintContextLog(context, "点阵移动成功")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_19014(context, evt)
	if defs.s_compass ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_19014(context, evt)
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	
	
	--罗盘刻度特效
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.s_compass, "SGV_Time", temp_time)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19016(context, evt)
	if evt.param1 ~= 19016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19016(context, evt)
	
	
	--创建天空罗盘
	ScriptLib.CreateGadget(context, { config_id = defs.sky_compass })
	
	
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	if temp_time==1 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=534.0672,y=279.0,z=102}, {x=0,y=269.1,z=230.1391})
	end
	if temp_time==2 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=534.0672,y=279.0,z=102}, {x=0,y=269.1,z=321.7924})
	end
	if temp_time==3 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=534.0672,y=279.0,z=102}, {x=0,y=269.1,z=8.711193})
	end
	if temp_time==4 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=534.0672,y=279.0,z=102}, {x=0,y=269.1,z=97.50916})
	end
	if temp_time==5 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=534.0672,y=279.0,z=102}, {x=0,y=269.1,z=142.5089})
	end
	
	
	return 0
	
end