-- 基础信息
local base_info = {
	group_id = 133223358
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
	{ config_id = 358007, gadget_id = 70360005, pos = { x = -6250.565, y = 232.139, z = -2940.387 }, rot = { x = 13.400, y = 279.747, z = 14.205 }, level = 19, persistent = true, area_id = 18 },
	{ config_id = 358008, gadget_id = 70360025, pos = { x = -6232.999, y = 277.857, z = -2927.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 18 },
	{ config_id = 358009, gadget_id = 70350085, pos = { x = -6248.335, y = 245.759, z = -2956.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 18 },
	{ config_id = 358011, gadget_id = 70350085, pos = { x = -6236.830, y = 258.680, z = -2957.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 18 },
	{ config_id = 358013, gadget_id = 70350085, pos = { x = -6229.174, y = 269.246, z = -2948.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 18 },
	{ config_id = 358014, gadget_id = 70900380, pos = { x = -6230.285, y = 273.571, z = -2941.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 358015, gadget_id = 70350085, pos = { x = -6232.999, y = 279.284, z = -2927.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 18 },
	{ config_id = 358016, gadget_id = 70350085, pos = { x = -6250.553, y = 233.015, z = -2940.329 }, rot = { x = 8.166, y = 253.112, z = 0.818 }, level = 19, area_id = 18 },
	{ config_id = 358017, gadget_id = 70710126, pos = { x = -6248.334, y = 245.013, z = -2956.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 18 },
	{ config_id = 358018, gadget_id = 70710126, pos = { x = -6236.758, y = 257.928, z = -2957.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 18 },
	{ config_id = 358019, gadget_id = 70710126, pos = { x = -6229.174, y = 269.246, z = -2948.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 18 },
	{ config_id = 358025, gadget_id = 70330064, pos = { x = -6253.745, y = 230.761, z = -2940.619 }, rot = { x = 0.000, y = 0.000, z = 14.667 }, level = 1, interact_id = 35, area_id = 18 },
	{ config_id = 358027, gadget_id = 70900380, pos = { x = -6251.879, y = 239.517, z = -2948.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 358031, gadget_id = 70900380, pos = { x = -6248.415, y = 255.228, z = -2956.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 358033, gadget_id = 70900380, pos = { x = -6236.454, y = 268.315, z = -2955.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 358036, gadget_id = 70330064, pos = { x = -6227.150, y = 269.505, z = -2949.909 }, rot = { x = 17.430, y = 8.512, z = 355.621 }, level = 1, interact_id = 35, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 358010, shape = RegionShape.SPHERE, radius = 3, pos = { x = -6248.003, y = 244.833, z = -2956.802 }, area_id = 18 },
	{ config_id = 358023, shape = RegionShape.SPHERE, radius = 2, pos = { x = -6233.037, y = 277.868, z = -2927.557 }, area_id = 18 },
	{ config_id = 358026, shape = RegionShape.SPHERE, radius = 3, pos = { x = -6236.773, y = 257.926, z = -2957.674 }, area_id = 18 },
	{ config_id = 358028, shape = RegionShape.SPHERE, radius = 3, pos = { x = -6229.193, y = 269.245, z = -2948.892 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1358010, name = "ENTER_REGION_358010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_358010", action = "action_EVENT_ENTER_REGION_358010" },
	{ config_id = 1358020, name = "GADGET_STATE_CHANGE_358020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_358020", action = "action_EVENT_GADGET_STATE_CHANGE_358020", trigger_count = 0 },
	{ config_id = 1358021, name = "CHALLENGE_SUCCESS_358021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_358021", trigger_count = 0 },
	{ config_id = 1358022, name = "CHALLENGE_FAIL_358022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_358022", trigger_count = 0 },
	{ config_id = 1358023, name = "ENTER_REGION_358023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_358023", action = "action_EVENT_ENTER_REGION_358023", trigger_count = 0, tag = "888" },
	{ config_id = 1358026, name = "ENTER_REGION_358026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_358026", action = "action_EVENT_ENTER_REGION_358026" },
	{ config_id = 1358028, name = "ENTER_REGION_358028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_358028", action = "action_EVENT_ENTER_REGION_358028" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 358030, gadget_id = 70330064, pos = { x = -6250.226, y = 244.718, z = -2959.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 18 },
		{ config_id = 358035, gadget_id = 70330064, pos = { x = -6236.025, y = 258.604, z = -2959.939 }, rot = { x = 24.596, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 18 }
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
		-- description = 起点,
		monsters = { },
		gadgets = { 358007, 358016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_358020", "CHALLENGE_SUCCESS_358021", "CHALLENGE_FAIL_358022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 358008, 358014, 358015 },
		regions = { 358023 },
		triggers = { "ENTER_REGION_358023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 事件完成空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 节点1,
		monsters = { },
		gadgets = { 358009, 358017 },
		regions = { 358010 },
		triggers = { "ENTER_REGION_358010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { },
		gadgets = { 358011, 358018, 358031 },
		regions = { 358026 },
		triggers = { "ENTER_REGION_358026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 358013, 358019, 358033, 358036 },
		regions = { 358028 },
		triggers = { "ENTER_REGION_358028" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 通用物件,
		monsters = { },
		gadgets = { 358025, 358027 },
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
function condition_EVENT_ENTER_REGION_358010(context, evt)
	if evt.param1 ~= 358010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_358010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223358, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_358020(context, evt)
	if 358007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasStarted"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStarted") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_358020(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为241的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 241, 30, 4, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将configid为 358016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223358, 4)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223358, 7)
	
	-- 将本组内变量名为 "hasStarted" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_358021(context, evt)
	-- 将configid为 358007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 7)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223358, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_358022(context, evt)
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasStarted", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 358007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 358016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_358023(context, evt)
	if evt.param1 ~= 358023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_358023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_358026(context, evt)
	if evt.param1 ~= 358026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_358026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223358, 6)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_358028(context, evt)
	if evt.param1 ~= 358028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_358028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 358019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223358, 2)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223358, 5)
	
	return 0
end

require "V2_0/ElectricCore"