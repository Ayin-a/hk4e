-- 基础信息
local base_info = {
	group_id = 220129016
}

-- Trigger变量
local defs = {
	pointarray = 1,
	portal = 16003,
	pointer = 16001,
	operation = 16002,
	time_group_id = 220129014,
	portal_group_id = 220129020,
	group_id = 220129016,
	pointarray_reverse = 1,
	pointarray_pointer = 5,
	pointarray_pointer_reverse = 5,
	otherRoom1_group_id = 220129017,
	otherRoom2_group_id = 220129018,
	otherRoom3_group_id = 220129019,
	door = 16009,
	l_compass = 0,
	s_compass = 16010,
	sky_compass = 16008
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
	{ config_id = 16001, gadget_id = 70800164, pos = { x = 538.467, y = 279.000, z = 757.500 }, rot = { x = 0.000, y = 269.100, z = 231.725 }, level = 1, is_use_point_array = true },
	{ config_id = 16002, gadget_id = 70800166, pos = { x = 332.739, y = 202.100, z = 711.477 }, rot = { x = 0.000, y = 253.278, z = 231.321 }, level = 1, is_use_point_array = true, worktop_config = { is_persistent = true, init_options = { 752, 753 } } },
	{ config_id = 16003, gadget_id = 70800172, pos = { x = 360.360, y = 200.361, z = 725.450 }, rot = { x = 0.000, y = 268.088, z = 0.000 }, level = 1 },
	{ config_id = 16008, gadget_id = 70800163, pos = { x = 555.300, y = 279.000, z = 757.500 }, rot = { x = 0.000, y = 269.100, z = 0.000 }, level = 1 },
	{ config_id = 16009, gadget_id = 70800140, pos = { x = 359.615, y = 200.434, z = 725.419 }, rot = { x = 0.000, y = 269.009, z = 0.000 }, level = 1 },
	{ config_id = 16010, gadget_id = 70800165, pos = { x = 333.108, y = 202.100, z = 711.588 }, rot = { x = 0.000, y = 253.278, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 16011, shape = RegionShape.SPHERE, radius = 15, pos = { x = 359.622, y = 200.012, z = 725.386 } },
	{ config_id = 16015, shape = RegionShape.SPHERE, radius = 60, pos = { x = 327.156, y = 200.012, z = 723.382 } }
}

-- 触发器
triggers = {
	{ config_id = 1016004, name = "SELECT_OPTION_16004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16004", action = "action_EVENT_SELECT_OPTION_16004", trigger_count = 0 },
	-- 逆时针旋转时钟
	{ config_id = 1016005, name = "SELECT_OPTION_16005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16005", action = "action_EVENT_SELECT_OPTION_16005", trigger_count = 0 },
	-- 判断是否移动到目标点阵
	{ config_id = 1016006, name = "PLATFORM_REACH_POINT_16006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_16006", action = "action_EVENT_PLATFORM_REACH_POINT_16006", trigger_count = 0 },
	-- 时间变量同步
	{ config_id = 1016007, name = "VARIABLE_CHANGE_16007", event = EventType.EVENT_VARIABLE_CHANGE, source = "time", condition = "", action = "action_EVENT_VARIABLE_CHANGE_16007", trigger_count = 0 },
	{ config_id = 1016011, name = "ENTER_REGION_16011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16011", action = "action_EVENT_ENTER_REGION_16011", trigger_count = 0 },
	{ config_id = 1016012, name = "GADGET_CREATE_16012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_16012", action = "action_EVENT_GADGET_CREATE_16012", trigger_count = 0 },
	{ config_id = 1016013, name = "GADGET_CREATE_16013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_16013", action = "action_EVENT_GADGET_CREATE_16013", trigger_count = 0 },
	{ config_id = 1016014, name = "GADGET_CREATE_16014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_16014", action = "action_EVENT_GADGET_CREATE_16014", trigger_count = 0 },
	{ config_id = 1016015, name = "ENTER_REGION_16015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16015", action = "action_EVENT_ENTER_REGION_16015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "time", value = 1, no_refresh = true },
	{ config_id = 2, name = "min_time", value = 1, no_refresh = true },
	{ config_id = 3, name = "max_time", value = 5, no_refresh = true },
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
		gadgets = { 16002, 16009, 16010 },
		regions = { 16011, 16015 },
		triggers = { "SELECT_OPTION_16004", "SELECT_OPTION_16005", "PLATFORM_REACH_POINT_16006", "VARIABLE_CHANGE_16007", "ENTER_REGION_16011", "GADGET_CREATE_16012", "GADGET_CREATE_16013", "GADGET_CREATE_16014", "ENTER_REGION_16015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 16003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 16001, 16008 },
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
function condition_EVENT_SELECT_OPTION_16004(context, evt)
	-- 判断是gadgetid 16002 option_id 752
	if 16002 ~= evt.param1 then
		return false	
	end
	
	if 752 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16004(context, evt)
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
function condition_EVENT_SELECT_OPTION_16005(context, evt)
	-- 判断是gadgetid 16002 option_id 753
	if 16002 ~= evt.param1 then
		return false	
	end
	
	if 753 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16005(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_16006(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_16006(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_16007(context, evt)
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
function condition_EVENT_ENTER_REGION_16011(context, evt)
	if evt.param1 ~= 16011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16011(context, evt)
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	--设置时间通道的变量
	ScriptLib.SetGroupVariableValueByGroup(context, "time", temp_time, defs.time_group_id)
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_16012(context, evt)
	if defs.sky_compass ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_16012(context, evt)
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	
	
	--罗盘刻度特效
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.sky_compass, "SGV_Time", temp_time)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_16013(context, evt)
	if defs.pointer ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_16013(context, evt)
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
function condition_EVENT_GADGET_CREATE_16014(context, evt)
	if defs.s_compass ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_16014(context, evt)
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	
	
	--罗盘刻度特效
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.s_compass, "SGV_Time", temp_time)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16015(context, evt)
	if evt.param1 ~= 16015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16015(context, evt)
	
	
	--创建天空罗盘
	ScriptLib.CreateGadget(context, { config_id = defs.sky_compass })
	
	
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	if temp_time==1 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=538.4672,y=279.0,z=757.5}, {x=0,y=269.1,z=230.1391})
	end
	if temp_time==2 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=538.4672,y=279.0,z=757.5}, {x=0,y=269.1,z=321.7924})
	end
	if temp_time==3 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=538.4672,y=279.0,z=757.5}, {x=0,y=269.1,z=8.711193})
	end
	if temp_time==4 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=538.4672,y=279.0,z=757.5}, {x=0,y=269.1,z=97.50916})
	end
	if temp_time==5 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=538.4672,y=279.0,z=757.5}, {x=0,y=269.1,z=142.5089})
	end
	
	
	return 0
	
end