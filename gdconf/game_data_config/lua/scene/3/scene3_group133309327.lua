-- 基础信息
local base_info = {
	group_id = 133309327
}

-- Trigger变量
local defs = {
	point_camera = 327005,
	gadget_lookEntity = 327006,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
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
	[327001] = { config_id = 327001, gadget_id = 70330353, pos = { x = -2305.051, y = -4.692, z = 5418.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900118, start_route = false, persistent = true, area_id = 27 },
	[327004] = { config_id = 327004, gadget_id = 70290537, pos = { x = -2378.594, y = -3.752, z = 5465.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900186, start_route = false, persistent = true, area_id = 27 },
	-- 相机目标
	[327006] = { config_id = 327006, gadget_id = 70360001, pos = { x = -2379.867, y = -4.692, z = 5378.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 降水位
	{ config_id = 1327002, name = "VARIABLE_CHANGE_327002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_327002", action = "action_EVENT_VARIABLE_CHANGE_327002" },
	-- 降水位保底
	{ config_id = 1327003, name = "GROUP_LOAD_327003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_327003", action = "action_EVENT_GROUP_LOAD_327003", trigger_count = 0 },
	-- 相机
	{ config_id = 1327007, name = "VARIABLE_CHANGE_327007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_327007", action = "action_EVENT_VARIABLE_CHANGE_327007" },
	-- 水位抵达-刷小水片
	{ config_id = 1327012, name = "PLATFORM_ARRIVAL_327012", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_327012", action = "action_EVENT_PLATFORM_ARRIVAL_327012" }
}

-- 点位
points = {
	[327005] = { config_id = 327005, pos = { x = -2431.525, y = 24.309, z = 5378.037 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
	{ config_id = 1, name = "water", value = 0, no_refresh = true },
	{ config_id = 2, name = "arrive", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 327009, gadget_id = 70330434, pos = { x = -2357.213, y = -36.700, z = 5378.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 327011, gadget_id = 70211111, pos = { x = -2438.391, y = -28.268, z = 5380.767 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
		{ config_id = 327013, gadget_id = 70211111, pos = { x = -2438.391, y = -28.268, z = 5374.695 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
	},
	triggers = {
		{ config_id = 1327008, name = "PLATFORM_ARRIVAL_327008", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_327008", action = "action_EVENT_PLATFORM_ARRIVAL_327008" },
		{ config_id = 1327010, name = "GROUP_LOAD_327010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_327010", action = "action_EVENT_GROUP_LOAD_327010", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 327001, 327004, 327006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_327002", "GROUP_LOAD_327003", "VARIABLE_CHANGE_327007", "PLATFORM_ARRIVAL_327012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_327003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_327002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"water"为1
	if ScriptLib.GetGroupVariableValue(context, "water") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_327002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 327001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 327004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5018, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_327003(context, evt)
	-- 判断变量"water"为1
	if ScriptLib.GetGroupVariableValue(context, "water") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_327003(context, evt)
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133309055) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133309285) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309327, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5018, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_327007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"water"为1
	if ScriptLib.GetGroupVariableValue(context, "water") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_327007(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_327012(context, evt)
	-- 判断是gadgetid 为 327001的移动平台，是否到达了330900118 的路线中的 1 点
	
	if 327001 ~= evt.param1 then
	  return false
	end
	
	if 330900118 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_327012(context, evt)
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133309055) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "waterdown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "waterdown", 1, 133309285) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_0/CameraLook"