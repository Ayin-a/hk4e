-- 基础信息
local base_info = {
	group_id = 144001145
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
	{ config_id = 145001, gadget_id = 70360006, pos = { x = 132.326, y = 124.544, z = 285.749 }, rot = { x = 2.828, y = 0.514, z = 10.285 }, level = 1, area_id = 102 },
	{ config_id = 145002, gadget_id = 70211112, pos = { x = 135.919, y = 125.012, z = 285.538 }, rot = { x = 12.335, y = 278.474, z = 0.001 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 145004, gadget_id = 70350085, pos = { x = 67.726, y = 143.110, z = 266.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 145007, gadget_id = 70950079, pos = { x = 80.950, y = 123.750, z = 268.550 }, rot = { x = 327.884, y = 79.640, z = 270.833 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 145009, gadget_id = 70950079, pos = { x = 120.364, y = 121.381, z = 271.224 }, rot = { x = 356.191, y = 357.001, z = 356.248 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 145010, gadget_id = 70350243, pos = { x = 120.472, y = 117.939, z = 271.189 }, rot = { x = 0.000, y = 33.776, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 145015, gadget_id = 70950078, pos = { x = 104.519, y = 121.695, z = 269.827 }, rot = { x = 0.000, y = 268.162, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 145016, gadget_id = 70350242, pos = { x = 104.679, y = 116.563, z = 269.690 }, rot = { x = 0.000, y = 306.429, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 145028, gadget_id = 70950075, pos = { x = 67.726, y = 143.110, z = 266.589 }, rot = { x = 0.000, y = 75.485, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145005, name = "ANY_GADGET_DIE_145005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145005", action = "action_EVENT_ANY_GADGET_DIE_145005", trigger_count = 0 },
	{ config_id = 1145030, name = "GROUP_LOAD_145030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_145030", trigger_count = 0 },
	{ config_id = 1145036, name = "GADGET_STATE_CHANGE_145036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_145036", action = "action_EVENT_GADGET_STATE_CHANGE_145036", trigger_count = 0 },
	{ config_id = 1145037, name = "GADGET_STATE_CHANGE_145037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_145037", action = "action_EVENT_GADGET_STATE_CHANGE_145037", trigger_count = 0 },
	{ config_id = 1145039, name = "GADGET_STATE_CHANGE_145039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_145039", action = "action_EVENT_GADGET_STATE_CHANGE_145039", trigger_count = 0 },
	{ config_id = 1145040, name = "GADGET_STATE_CHANGE_145040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_145040", action = "action_EVENT_GADGET_STATE_CHANGE_145040", trigger_count = 0 },
	{ config_id = 1145050, name = "GADGET_STATE_CHANGE_145050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_145050", action = "action_EVENT_GADGET_STATE_CHANGE_145050", trigger_count = 0 },
	{ config_id = 1145051, name = "GADGET_STATE_CHANGE_145051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_145051", action = "action_EVENT_GADGET_STATE_CHANGE_145051", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1145065, name = "ANY_GADGET_DIE_145065", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145065", action = "action_EVENT_ANY_GADGET_DIE_145065" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1145066, name = "GADGET_STATE_CHANGE_145066", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_145066", action = "action_EVENT_GADGET_STATE_CHANGE_145066", trigger_count = 0 },
	{ config_id = 1145067, name = "GADGET_STATE_CHANGE_145067", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_145067", action = "action_EVENT_GADGET_STATE_CHANGE_145067", trigger_count = 0 },
	{ config_id = 1145068, name = "GADGET_STATE_CHANGE_145068", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_145068", action = "action_EVENT_GADGET_STATE_CHANGE_145068", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1145041, name = "GADGET_CREATE_145041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_145041", action = "", trigger_count = 0 }
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
	end_suite = 4,
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
		gadgets = { 145001, 145002, 145028 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_145005", "GROUP_LOAD_145030", "ANY_GADGET_DIE_145065", "GADGET_STATE_CHANGE_145066", "GADGET_STATE_CHANGE_145067", "GADGET_STATE_CHANGE_145068" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { 145004 },
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
		gadgets = { 145007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_145036", "GADGET_STATE_CHANGE_145037" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 145009, 145010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_145039", "GADGET_STATE_CHANGE_145040" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 145015, 145016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_145050", "GADGET_STATE_CHANGE_145051" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145005(context, evt)
	if 145028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 145004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_145030(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001145, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001145, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001145, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_145036(context, evt)
	if 145001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_145036(context, evt)
	-- 将configid为 145007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_145037(context, evt)
	if 145001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_145037(context, evt)
	-- 将configid为 145007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_145039(context, evt)
	if 145001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_145039(context, evt)
	-- 将configid为 145009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_145040(context, evt)
	if 145001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_145040(context, evt)
	-- 将configid为 145009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_145050(context, evt)
	if 145001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_145050(context, evt)
	-- 将configid为 145015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 145015, 400100004, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_145051(context, evt)
	if 145001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_145051(context, evt)
	-- 将configid为 145015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 145015, 400100004, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145065(context, evt)
	if 145028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145065(context, evt)
	-- 将configid为 145002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145002, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_145066(context, evt)
	if 145002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_145066(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001145, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_145067(context, evt)
	if 145001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_145067(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001145, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_145068(context, evt)
	if 145001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_145068(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001145, 2)
	
	return 0
end