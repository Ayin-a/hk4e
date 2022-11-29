-- 基础信息
local base_info = {
	group_id = 144002078
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
	-- 触发靶标出现的开关
	{ config_id = 78001, gadget_id = 70360006, pos = { x = 458.388, y = 120.919, z = -721.806 }, rot = { x = 11.224, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 78002, gadget_id = 70211102, pos = { x = 459.041, y = 121.833, z = -727.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 78003, gadget_id = 70360001, pos = { x = 467.440, y = 120.570, z = -721.274 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 78007, gadget_id = 70950079, pos = { x = 467.440, y = 124.033, z = -721.274 }, rot = { x = 0.000, y = 239.273, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 78008, gadget_id = 70350243, pos = { x = 467.440, y = 120.350, z = -721.274 }, rot = { x = 0.000, y = 132.420, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 78009, gadget_id = 70950079, pos = { x = 474.029, y = 124.566, z = -732.000 }, rot = { x = 0.000, y = 121.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 78010, gadget_id = 70350243, pos = { x = 474.107, y = 120.591, z = -732.069 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 78011, gadget_id = 70360001, pos = { x = 474.107, y = 120.799, z = -732.069 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 78015, gadget_id = 70950078, pos = { x = 468.918, y = 125.000, z = -740.988 }, rot = { x = 0.000, y = 219.078, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 78016, gadget_id = 70350242, pos = { x = 468.922, y = 120.946, z = -740.870 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 78024, gadget_id = 70350085, pos = { x = 466.076, y = 124.689, z = -746.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 78028, gadget_id = 70950075, pos = { x = 466.076, y = 124.689, z = -746.083 }, rot = { x = 0.000, y = 219.728, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1078004, name = "GADGET_CREATE_78004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_78004", action = "action_EVENT_GADGET_CREATE_78004", trigger_count = 0 },
	{ config_id = 1078005, name = "SELECT_OPTION_78005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78005", action = "action_EVENT_SELECT_OPTION_78005", trigger_count = 0 },
	{ config_id = 1078006, name = "PLATFORM_REACH_POINT_78006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_78006", action = "action_EVENT_PLATFORM_REACH_POINT_78006", trigger_count = 0 },
	{ config_id = 1078012, name = "SELECT_OPTION_78012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78012", action = "action_EVENT_SELECT_OPTION_78012", trigger_count = 0 },
	{ config_id = 1078013, name = "SELECT_OPTION_78013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78013", action = "action_EVENT_SELECT_OPTION_78013", trigger_count = 0 },
	{ config_id = 1078014, name = "SELECT_OPTION_78014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78014", action = "action_EVENT_SELECT_OPTION_78014", trigger_count = 0 },
	{ config_id = 1078017, name = "VARIABLE_CHANGE_78017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_78017", action = "action_EVENT_VARIABLE_CHANGE_78017", trigger_count = 0 },
	{ config_id = 1078018, name = "SELECT_OPTION_78018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78018", action = "action_EVENT_SELECT_OPTION_78018", trigger_count = 0 },
	{ config_id = 1078019, name = "SELECT_OPTION_78019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78019", action = "action_EVENT_SELECT_OPTION_78019", trigger_count = 0 },
	{ config_id = 1078020, name = "SELECT_OPTION_78020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78020", action = "action_EVENT_SELECT_OPTION_78020", trigger_count = 0 },
	{ config_id = 1078021, name = "SELECT_OPTION_78021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78021", action = "action_EVENT_SELECT_OPTION_78021", trigger_count = 0 },
	{ config_id = 1078022, name = "VARIABLE_CHANGE_78022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_78022", action = "action_EVENT_VARIABLE_CHANGE_78022", trigger_count = 0 },
	{ config_id = 1078029, name = "GROUP_LOAD_78029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_78029", trigger_count = 0 },
	{ config_id = 1078034, name = "GADGET_STATE_CHANGE_78034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78034", action = "action_EVENT_GADGET_STATE_CHANGE_78034", trigger_count = 0 },
	{ config_id = 1078035, name = "GADGET_STATE_CHANGE_78035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78035", action = "action_EVENT_GADGET_STATE_CHANGE_78035", trigger_count = 0 },
	{ config_id = 1078036, name = "GADGET_STATE_CHANGE_78036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78036", action = "action_EVENT_GADGET_STATE_CHANGE_78036", trigger_count = 0 },
	{ config_id = 1078037, name = "GADGET_STATE_CHANGE_78037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78037", action = "action_EVENT_GADGET_STATE_CHANGE_78037", trigger_count = 0 },
	{ config_id = 1078038, name = "GADGET_CREATE_78038", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_78038", action = "action_EVENT_GADGET_CREATE_78038", trigger_count = 0 },
	{ config_id = 1078045, name = "GADGET_STATE_CHANGE_78045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78045", action = "action_EVENT_GADGET_STATE_CHANGE_78045", trigger_count = 0 },
	{ config_id = 1078046, name = "GADGET_STATE_CHANGE_78046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78046", action = "action_EVENT_GADGET_STATE_CHANGE_78046", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1078060, name = "ANY_GADGET_DIE_78060", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_78060", action = "action_EVENT_ANY_GADGET_DIE_78060" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1078061, name = "GADGET_STATE_CHANGE_78061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78061", action = "action_EVENT_GADGET_STATE_CHANGE_78061" },
	{ config_id = 1078062, name = "GADGET_STATE_CHANGE_78062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78062", action = "action_EVENT_GADGET_STATE_CHANGE_78062", trigger_count = 0 },
	{ config_id = 1078063, name = "GADGET_STATE_CHANGE_78063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78063", action = "action_EVENT_GADGET_STATE_CHANGE_78063", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "turncount", value = 0, no_refresh = false },
	{ config_id = 5, name = "turncount1", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		-- description = [默认加载的Entities],
		monsters = { },
		gadgets = { 78001, 78002, 78028 },
		regions = { },
		triggers = { "GROUP_LOAD_78029", "ANY_GADGET_DIE_78060", "GADGET_STATE_CHANGE_78061", "GADGET_STATE_CHANGE_78062", "GADGET_STATE_CHANGE_78063" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { 78024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [加载羽球元素靶标&判定玩法成功的方法2],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [玩法完成后的空Suite],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 78003, 78007, 78008 },
		regions = { },
		triggers = { "GADGET_CREATE_78004", "SELECT_OPTION_78005", "PLATFORM_REACH_POINT_78006", "SELECT_OPTION_78012", "SELECT_OPTION_78013", "SELECT_OPTION_78014", "VARIABLE_CHANGE_78017", "GADGET_STATE_CHANGE_78034", "GADGET_STATE_CHANGE_78035" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 78009, 78010, 78011 },
		regions = { },
		triggers = { "SELECT_OPTION_78018", "SELECT_OPTION_78019", "SELECT_OPTION_78020", "SELECT_OPTION_78021", "VARIABLE_CHANGE_78022", "GADGET_STATE_CHANGE_78036", "GADGET_STATE_CHANGE_78037", "GADGET_CREATE_78038" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 78015, 78016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78045", "GADGET_STATE_CHANGE_78046" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_78004(context, evt)
	if 78003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_78004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002078, 78003, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_78005(context, evt)
	-- 判断是gadgetid 78003 option_id 211
	if 78003 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78005(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 78007, 400200002, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_78006(context, evt)
	-- 判断是gadgetid 为 78007的移动平台，是否到达了400200002 的点集中的 2 点
	
	if 78007 ~= evt.param1 then
	  return false
	end
	
	if 400200002 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_78006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002078, 78003, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_78012(context, evt)
	-- 判断是gadgetid 78003 option_id 211
	if 78003 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78012(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 78007, 400200002, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_78013(context, evt)
	-- 判断是gadgetid 78003 option_id 211
	if 78003 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78013(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 78007, 400200002, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_78014(context, evt)
	-- 判断是gadgetid 78003 option_id 211
	if 78003 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78014(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 78007, 400200002, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_78017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_78017(context, evt)
	-- 变量"turncount"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_78018(context, evt)
	-- 判断是gadgetid 78011 option_id 211
	if 78011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78018(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 78009, 400200003, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_78019(context, evt)
	-- 判断是gadgetid 78011 option_id 211
	if 78011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78019(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 78009, 400200003, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_78020(context, evt)
	-- 判断是gadgetid 78011 option_id 211
	if 78011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78020(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 78009, 400200003, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_78021(context, evt)
	-- 判断是gadgetid 78011 option_id 211
	if 78011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount1"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78021(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 78009, 400200003, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_78022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount1") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_78022(context, evt)
	-- 变量"turncount1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount1", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_78029(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002078, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002078, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002078, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78034(context, evt)
	if 78001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78034(context, evt)
	-- 将configid为 78007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78035(context, evt)
	if 78001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78035(context, evt)
	-- 将configid为 78007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78036(context, evt)
	if 78001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78036(context, evt)
	-- 将configid为 78009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78037(context, evt)
	if 78001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78037(context, evt)
	-- 将configid为 78009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_78038(context, evt)
	if 78011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_78038(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002078, 78011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78045(context, evt)
	if 78001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78045(context, evt)
	-- 将configid为 78015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 78016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78046(context, evt)
	if 78001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78046(context, evt)
	-- 将configid为 78015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 78016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_78060(context, evt)
	if 78028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_78060(context, evt)
	-- 将configid为 78002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 78002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002078, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78061(context, evt)
	if 78002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78061(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002078, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78062(context, evt)
	if 78001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78062(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002078, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78063(context, evt)
	if 78001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78063(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002078, 2)
	
	return 0
end