-- 基础信息
local base_info = {
	group_id = 220129018
}

-- Trigger变量
local defs = {
	pointarray = 3,
	portal = 18003,
	pointer = 18001,
	operation = 18002,
	time_group_id = 220129014,
	portal_group_id = 220129020,
	group_id = 220129018,
	pointarray_reverse = 3,
	pointarray_pointer = 7,
	pointarray_pointer_reverse = 7,
	otherRoom1_group_id = 220129016,
	otherRoom2_group_id = 220129017,
	otherRoom3_group_id = 220129019,
	door = 18009,
	l_compass = 0,
	s_compass = 18010,
	sky_compass = 18008
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
	{ config_id = 18001, gadget_id = 70800164, pos = { x = 549.167, y = 279.000, z = 309.100 }, rot = { x = 0.000, y = 269.100, z = 10.881 }, level = 1, is_use_point_array = true },
	{ config_id = 18002, gadget_id = 70800166, pos = { x = 330.726, y = 200.525, z = 259.198 }, rot = { x = 342.425, y = 269.677, z = 10.844 }, level = 1, is_use_point_array = true, worktop_config = { is_persistent = true, init_options = { 752, 753 } } },
	{ config_id = 18003, gadget_id = 70800172, pos = { x = 360.351, y = 200.329, z = 273.615 }, rot = { x = 0.000, y = 268.088, z = 0.000 }, level = 1 },
	{ config_id = 18008, gadget_id = 70800163, pos = { x = 566.000, y = 279.000, z = 309.100 }, rot = { x = 0.000, y = 269.100, z = 0.000 }, level = 1 },
	{ config_id = 18009, gadget_id = 70800140, pos = { x = 359.556, y = 200.404, z = 273.625 }, rot = { x = 0.000, y = 269.402, z = 0.000 }, level = 1 },
	{ config_id = 18010, gadget_id = 70800165, pos = { x = 331.121, y = 200.400, z = 259.200 }, rot = { x = 342.425, y = 269.677, z = 1.351 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 18011, shape = RegionShape.SPHERE, radius = 15, pos = { x = 359.608, y = 200.204, z = 274.328 } },
	{ config_id = 18015, shape = RegionShape.SPHERE, radius = 60, pos = { x = 329.748, y = 200.147, z = 276.040 } }
}

-- 触发器
triggers = {
	{ config_id = 1018004, name = "SELECT_OPTION_18004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18004", action = "action_EVENT_SELECT_OPTION_18004", trigger_count = 0 },
	-- 逆时针旋转时钟
	{ config_id = 1018005, name = "SELECT_OPTION_18005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_18005", action = "action_EVENT_SELECT_OPTION_18005", trigger_count = 0 },
	-- 判断是否移动到目标点阵
	{ config_id = 1018006, name = "PLATFORM_REACH_POINT_18006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_18006", action = "action_EVENT_PLATFORM_REACH_POINT_18006", trigger_count = 0 },
	-- 时间变量同步
	{ config_id = 1018007, name = "VARIABLE_CHANGE_18007", event = EventType.EVENT_VARIABLE_CHANGE, source = "time", condition = "", action = "action_EVENT_VARIABLE_CHANGE_18007", trigger_count = 0 },
	{ config_id = 1018011, name = "ENTER_REGION_18011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18011", action = "action_EVENT_ENTER_REGION_18011", trigger_count = 0 },
	{ config_id = 1018012, name = "GADGET_CREATE_18012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_18012", action = "action_EVENT_GADGET_CREATE_18012", trigger_count = 0 },
	{ config_id = 1018013, name = "GADGET_CREATE_18013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_18013", action = "action_EVENT_GADGET_CREATE_18013", trigger_count = 0 },
	{ config_id = 1018014, name = "GADGET_CREATE_18014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_18014", action = "action_EVENT_GADGET_CREATE_18014", trigger_count = 0 },
	{ config_id = 1018015, name = "ENTER_REGION_18015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18015", action = "action_EVENT_ENTER_REGION_18015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "time", value = 3, no_refresh = true },
	{ config_id = 2, name = "min_time", value = 2, no_refresh = true },
	{ config_id = 3, name = "max_time", value = 3, no_refresh = true },
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
		gadgets = { 18002, 18009, 18010 },
		regions = { 18011, 18015 },
		triggers = { "SELECT_OPTION_18004", "SELECT_OPTION_18005", "PLATFORM_REACH_POINT_18006", "VARIABLE_CHANGE_18007", "ENTER_REGION_18011", "GADGET_CREATE_18012", "GADGET_CREATE_18013", "GADGET_CREATE_18014", "ENTER_REGION_18015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 18003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 18001, 18008 },
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
function condition_EVENT_SELECT_OPTION_18004(context, evt)
	-- 判断是gadgetid 18002 option_id 752
	if 18002 ~= evt.param1 then
		return false	
	end
	
	if 752 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_18004(context, evt)
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
		if temp_time == 4 then
			ScriptLib.PrintContextLog(context, "指针被树卡住")
	  		ScriptLib.ShowReminder(context, 400152) 
	  		return 0
	  	else
			ScriptLib.PrintContextLog(context, "指针超过限制")
	  		ScriptLib.ShowReminder(context, 400138) 
	  		return 0
	  	end
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
function condition_EVENT_SELECT_OPTION_18005(context, evt)
	-- 判断是gadgetid 18002 option_id 753
	if 18002 ~= evt.param1 then
		return false	
	end
	
	if 753 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_18005(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_18006(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_18006(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_18007(context, evt)
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
function condition_EVENT_ENTER_REGION_18011(context, evt)
	if evt.param1 ~= 18011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18011(context, evt)
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	--设置时间通道的变量
	ScriptLib.SetGroupVariableValueByGroup(context, "time", temp_time, defs.time_group_id)
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_18012(context, evt)
	if defs.sky_compass ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_18012(context, evt)
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	
	
	--罗盘刻度特效
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.sky_compass, "SGV_Time", temp_time)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_18013(context, evt)
	if defs.pointer ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_18013(context, evt)
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
function condition_EVENT_GADGET_CREATE_18014(context, evt)
	if defs.s_compass ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_18014(context, evt)
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	
	
	--罗盘刻度特效
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.s_compass, "SGV_Time", temp_time)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18015(context, evt)
	if evt.param1 ~= 18015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18015(context, evt)
	
	
	--创建天空罗盘
	ScriptLib.CreateGadget(context, { config_id = defs.sky_compass })
	
	
	-- 取变量"time"
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", defs.group_id)
	if temp_time==1 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=549.1672,y=279.0,z=309.1}, {x=0,y=269.1,z=230.1391})
	end
	if temp_time==2 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=549.1672,y=279.0,z=309.1}, {x=0,y=269.1,z=321.7924})
	end
	if temp_time==3 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=549.1672,y=279.0,z=309.1}, {x=0,y=269.1,z=8.711193})
	end
	if temp_time==4 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=549.1672,y=279.0,z=309.1}, {x=0,y=269.1,z=97.50916})
	end
	if temp_time==5 then
		--创建指针
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.pointer, {x=549.1672,y=279.0,z=309.1}, {x=0,y=269.1,z=142.5089})
	end
	
	
	return 0
	
end