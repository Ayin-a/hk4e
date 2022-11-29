-- 基础信息
local base_info = {
	group_id = 144001151
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
	{ config_id = 151001, gadget_id = 70360006, pos = { x = 340.924, y = 119.624, z = 448.499 }, rot = { x = 2.560, y = 308.975, z = 356.567 }, level = 1, area_id = 102 },
	{ config_id = 151002, gadget_id = 70211112, pos = { x = 339.877, y = 123.939, z = 434.926 }, rot = { x = 7.766, y = 351.961, z = 4.281 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 151003, gadget_id = 70950076, pos = { x = 346.883, y = 123.577, z = 445.713 }, rot = { x = 0.000, y = 29.283, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 151004, gadget_id = 70350240, pos = { x = 346.834, y = 119.699, z = 445.816 }, rot = { x = 0.000, y = 67.550, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 151005, gadget_id = 70950079, pos = { x = 343.827, y = 124.057, z = 440.659 }, rot = { x = 0.000, y = 304.243, z = 357.542 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 151006, gadget_id = 70350243, pos = { x = 343.936, y = 120.615, z = 440.624 }, rot = { x = 0.000, y = 162.510, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 102 },
	{ config_id = 151007, gadget_id = 70950079, pos = { x = 334.030, y = 122.820, z = 437.680 }, rot = { x = 358.493, y = 202.960, z = 328.022 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 151008, gadget_id = 70350243, pos = { x = 334.827, y = 119.446, z = 437.265 }, rot = { x = 0.000, y = 195.164, z = 345.453 }, level = 1, area_id = 102 },
	{ config_id = 151009, gadget_id = 70950079, pos = { x = 335.368, y = 121.778, z = 453.717 }, rot = { x = 0.000, y = 198.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 151010, gadget_id = 70350243, pos = { x = 335.477, y = 118.244, z = 453.682 }, rot = { x = 4.129, y = 307.350, z = 354.839 }, level = 1, state = GadgetState.GearStop, area_id = 102 },
	{ config_id = 151011, gadget_id = 70360001, pos = { x = 335.477, y = 118.233, z = 453.682 }, rot = { x = 4.129, y = 307.350, z = 354.839 }, level = 1, area_id = 102 },
	{ config_id = 151012, gadget_id = 70360001, pos = { x = 343.936, y = 120.603, z = 440.624 }, rot = { x = 0.000, y = 162.510, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 151026, gadget_id = 70950073, pos = { x = 347.121, y = 130.443, z = 433.523 }, rot = { x = 20.440, y = 314.586, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 151027, gadget_id = 70950079, pos = { x = 349.290, y = 123.490, z = 450.320 }, rot = { x = 5.139, y = 18.790, z = 6.760 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 151028, gadget_id = 70350243, pos = { x = 349.330, y = 119.340, z = 450.165 }, rot = { x = 4.677, y = 43.846, z = 4.671 }, level = 1, area_id = 102 },
	{ config_id = 151038, gadget_id = 70350085, pos = { x = 347.121, y = 130.443, z = 433.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 151073, gadget_id = 70360001, pos = { x = 349.330, y = 119.328, z = 450.165 }, rot = { x = 4.677, y = 43.846, z = 4.671 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 跟按钮交互后顺时针旋转台座
	{ config_id = 1151013, name = "SELECT_OPTION_151013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151013", action = "action_EVENT_SELECT_OPTION_151013", trigger_count = 0 },
	{ config_id = 1151014, name = "GADGET_STATE_CHANGE_151014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151014", action = "action_EVENT_GADGET_STATE_CHANGE_151014", trigger_count = 0 },
	{ config_id = 1151015, name = "GADGET_STATE_CHANGE_151015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151015", action = "action_EVENT_GADGET_STATE_CHANGE_151015", trigger_count = 0 },
	-- 隐形操作台创建时添加按钮
	{ config_id = 1151016, name = "GADGET_CREATE_151016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_151016", action = "action_EVENT_GADGET_CREATE_151016", trigger_count = 0 },
	{ config_id = 1151017, name = "SELECT_OPTION_151017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151017", action = "action_EVENT_SELECT_OPTION_151017", trigger_count = 0 },
	{ config_id = 1151018, name = "GADGET_STATE_CHANGE_151018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151018", action = "action_EVENT_GADGET_STATE_CHANGE_151018", trigger_count = 0 },
	{ config_id = 1151019, name = "GADGET_STATE_CHANGE_151019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151019", action = "action_EVENT_GADGET_STATE_CHANGE_151019", trigger_count = 0 },
	{ config_id = 1151020, name = "GADGET_CREATE_151020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_151020", action = "action_EVENT_GADGET_CREATE_151020", trigger_count = 0 },
	-- 跟按钮交互后顺时针旋转台座
	{ config_id = 1151021, name = "SELECT_OPTION_151021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151021", action = "action_EVENT_SELECT_OPTION_151021", trigger_count = 0 },
	-- 跟按钮交互后顺时针旋转台座
	{ config_id = 1151022, name = "SELECT_OPTION_151022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151022", action = "action_EVENT_SELECT_OPTION_151022", trigger_count = 0 },
	-- 跟按钮交互后顺时针旋转台座
	{ config_id = 1151023, name = "SELECT_OPTION_151023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151023", action = "action_EVENT_SELECT_OPTION_151023", trigger_count = 0 },
	{ config_id = 1151024, name = "VARIABLE_CHANGE_151024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_151024", action = "action_EVENT_VARIABLE_CHANGE_151024", trigger_count = 0 },
	{ config_id = 1151025, name = "SELECT_OPTION_151025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151025", action = "action_EVENT_SELECT_OPTION_151025", trigger_count = 0 },
	{ config_id = 1151029, name = "SELECT_OPTION_151029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151029", action = "action_EVENT_SELECT_OPTION_151029", trigger_count = 0 },
	-- 加载此玩法所需的Suites，必须要在Suite2/3中选一个
	{ config_id = 1151030, name = "GROUP_LOAD_151030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_151030", trigger_count = 0 },
	{ config_id = 1151031, name = "GADGET_STATE_CHANGE_151031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151031", action = "action_EVENT_GADGET_STATE_CHANGE_151031", trigger_count = 0 },
	{ config_id = 1151032, name = "GADGET_STATE_CHANGE_151032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151032", action = "action_EVENT_GADGET_STATE_CHANGE_151032", trigger_count = 0 },
	{ config_id = 1151033, name = "VARIABLE_CHANGE_151033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_151033", action = "action_EVENT_VARIABLE_CHANGE_151033", trigger_count = 0 },
	{ config_id = 1151034, name = "SELECT_OPTION_151034", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151034", action = "action_EVENT_SELECT_OPTION_151034", trigger_count = 0 },
	{ config_id = 1151036, name = "GADGET_STATE_CHANGE_151036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151036", action = "action_EVENT_GADGET_STATE_CHANGE_151036", trigger_count = 0 },
	{ config_id = 1151037, name = "GADGET_STATE_CHANGE_151037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151037", action = "action_EVENT_GADGET_STATE_CHANGE_151037", trigger_count = 0 },
	{ config_id = 1151039, name = "ANY_GADGET_DIE_151039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_151039", action = "action_EVENT_ANY_GADGET_DIE_151039", trigger_count = 0 },
	{ config_id = 1151049, name = "ANY_GADGET_DIE_151049", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_151049", action = "action_EVENT_ANY_GADGET_DIE_151049", trigger_count = 0 },
	{ config_id = 1151050, name = "VARIABLE_CHANGE_151050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_151050", action = "action_EVENT_VARIABLE_CHANGE_151050", trigger_count = 0 },
	{ config_id = 1151051, name = "TIMER_EVENT_151051", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "condition_EVENT_TIMER_EVENT_151051", action = "action_EVENT_TIMER_EVENT_151051", trigger_count = 0 },
	{ config_id = 1151058, name = "VARIABLE_CHANGE_151058", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_151058", action = "action_EVENT_VARIABLE_CHANGE_151058", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1151069, name = "ANY_GADGET_DIE_151069", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_151069", action = "action_EVENT_ANY_GADGET_DIE_151069" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1151070, name = "GADGET_STATE_CHANGE_151070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151070", action = "action_EVENT_GADGET_STATE_CHANGE_151070" },
	{ config_id = 1151071, name = "GADGET_STATE_CHANGE_151071", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151071", action = "action_EVENT_GADGET_STATE_CHANGE_151071", trigger_count = 0 },
	{ config_id = 1151072, name = "GADGET_STATE_CHANGE_151072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151072", action = "action_EVENT_GADGET_STATE_CHANGE_151072", trigger_count = 0 },
	{ config_id = 1151074, name = "SELECT_OPTION_151074", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151074", action = "action_EVENT_SELECT_OPTION_151074", trigger_count = 0 },
	{ config_id = 1151075, name = "GADGET_STATE_CHANGE_151075", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151075", action = "action_EVENT_GADGET_STATE_CHANGE_151075", trigger_count = 0 },
	{ config_id = 1151076, name = "GADGET_STATE_CHANGE_151076", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151076", action = "action_EVENT_GADGET_STATE_CHANGE_151076", trigger_count = 0 },
	{ config_id = 1151077, name = "GADGET_CREATE_151077", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_151077", action = "action_EVENT_GADGET_CREATE_151077", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "killedHoops", value = 0, no_refresh = false },
	{ config_id = 5, name = "turncount", value = 0, no_refresh = false },
	{ config_id = 6, name = "turncount1", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 10,
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
		gadgets = { 151001, 151002, 151026 },
		regions = { },
		triggers = { "GROUP_LOAD_151030", "ANY_GADGET_DIE_151039", "GADGET_STATE_CHANGE_151070", "GADGET_STATE_CHANGE_151071", "GADGET_STATE_CHANGE_151072" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球元素靶标],
		monsters = { },
		gadgets = { 151038 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [需销毁1个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_151069" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [需销毁多个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_151049", "VARIABLE_CHANGE_151050", "TIMER_EVENT_151051", "VARIABLE_CHANGE_151058" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 151003, 151004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_151031", "GADGET_STATE_CHANGE_151032" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 151007, 151008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_151036", "GADGET_STATE_CHANGE_151037" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [完成玩法后的空Suite],
		monsters = { },
		gadgets = { 151027, 151028, 151073 },
		regions = { },
		triggers = { "SELECT_OPTION_151074", "GADGET_STATE_CHANGE_151075", "GADGET_STATE_CHANGE_151076", "GADGET_CREATE_151077" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 151005, 151006, 151012 },
		regions = { },
		triggers = { "SELECT_OPTION_151013", "GADGET_STATE_CHANGE_151014", "GADGET_STATE_CHANGE_151015", "GADGET_CREATE_151016", "SELECT_OPTION_151021", "SELECT_OPTION_151022", "SELECT_OPTION_151023", "VARIABLE_CHANGE_151024" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 151009, 151010, 151011 },
		regions = { },
		triggers = { "SELECT_OPTION_151017", "GADGET_STATE_CHANGE_151018", "GADGET_STATE_CHANGE_151019", "GADGET_CREATE_151020", "SELECT_OPTION_151025", "SELECT_OPTION_151029", "VARIABLE_CHANGE_151033", "SELECT_OPTION_151034" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_SELECT_OPTION_151013(context, evt)
	-- 判断是gadgetid 151012 option_id 211
	if 151012 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_151013(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 151005, 400100006, {1}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_151014(context, evt)
	if 151001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151014(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151015(context, evt)
	if 151001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151015(context, evt)
	-- 将configid为 151005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001151, 151011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_151016(context, evt)
	if 151012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_151016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001151, 151012, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_151017(context, evt)
	-- 判断是gadgetid 151011 option_id 211
	if 151011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_151017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 151009, 400100005, {1}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_151018(context, evt)
	if 151001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151018(context, evt)
	-- 将configid为 151009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151019(context, evt)
	if 151001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151019(context, evt)
	-- 将configid为 151009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001151, 151011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_151020(context, evt)
	if 151011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_151020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001151, 151011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_151021(context, evt)
	-- 判断是gadgetid 151012 option_id 211
	if 151012 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_151021(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 151005, 400100006, {2}, tempParam) then
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
function condition_EVENT_SELECT_OPTION_151022(context, evt)
	-- 判断是gadgetid 151012 option_id 211
	if 151012 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_151022(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 151005, 400100006, {3}, tempParam) then
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
function condition_EVENT_SELECT_OPTION_151023(context, evt)
	-- 判断是gadgetid 151012 option_id 211
	if 151012 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_151023(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 151005, 400100006, {4}, tempParam) then
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
function condition_EVENT_VARIABLE_CHANGE_151024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_151024(context, evt)
	-- 变量"turncount"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_151025(context, evt)
	-- 判断是gadgetid 151011 option_id 211
	if 151011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_151025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 151009, 400100005, {2}, tempParam) then
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
function condition_EVENT_SELECT_OPTION_151029(context, evt)
	-- 判断是gadgetid 151011 option_id 211
	if 151011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_151029(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 151009, 400100005, {3}, tempParam) then
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

-- 触发操作
function action_EVENT_GROUP_LOAD_151030(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001151, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001151, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001151, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001151, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001151, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001151, 10)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001151, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151031(context, evt)
	if 151001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151031(context, evt)
	-- 将configid为 151003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 151004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151032(context, evt)
	if 151001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151032(context, evt)
	-- 将configid为 151003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 151004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_151033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount1"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount1") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_151033(context, evt)
	-- 变量"turncount1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "turncount1", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_151034(context, evt)
	-- 判断是gadgetid 151011 option_id 211
	if 151011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_151034(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 151009, 400100005, {4}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_151036(context, evt)
	if 151001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151036(context, evt)
	-- 将configid为 151007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 151008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151037(context, evt)
	if 151001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151037(context, evt)
	-- 将configid为 151007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 151008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_151039(context, evt)
	if 151026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_151039(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 151038 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_151049(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_151049(context, evt)
	-- 针对当前group内变量名为 "killedHoops" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedHoops", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_151050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_151050(context, evt)
	-- 延迟3秒后,向groupId为：144001151的对象,请求一次调用,并将string参数："waitForRecreateHoops" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001151, "waitForRecreateHoops", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_151051(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_151051(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001151, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001151, 2)
	
	-- 将本组内变量名为 "killedHoops" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killedHoops", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_151058(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为2
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_151058(context, evt)
	-- 将configid为 151002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_151069(context, evt)
	if 151026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_151069(context, evt)
	-- 将configid为 151002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151070(context, evt)
	if 151002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151070(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001151, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151071(context, evt)
	if 151001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151071(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001151, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151072(context, evt)
	if 151001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151072(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001151, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_151074(context, evt)
	-- 判断是gadgetid 151011 option_id 211
	if 151011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_151074(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 151009, 110100018, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151075(context, evt)
	if 151001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151075(context, evt)
	-- 将configid为 151027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_151076(context, evt)
	if 151001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151076(context, evt)
	-- 将configid为 151027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001151, 151011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_151077(context, evt)
	if 151011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_151077(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001151, 151011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end