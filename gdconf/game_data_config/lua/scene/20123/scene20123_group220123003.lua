-- 基础信息
local base_info = {
	group_id = 220123003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 25080101, pos = { x = 24.703, y = -7.030, z = -30.134 }, rot = { x = 0.000, y = 337.005, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 1004 },
	{ config_id = 3003, monster_id = 25080101, pos = { x = 25.246, y = -7.030, z = -28.909 }, rot = { x = 0.000, y = 258.695, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 1004 },
	{ config_id = 3030, monster_id = 25080101, pos = { x = 24.698, y = -6.972, z = -27.287 }, rot = { x = 0.000, y = 211.125, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 1004 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70290138, pos = { x = 15.416, y = -7.079, z = -29.018 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, gadget_id = 70220066, pos = { x = 37.748, y = -3.960, z = -32.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3011, gadget_id = 70220014, pos = { x = 36.782, y = -3.960, z = -32.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70220070, pos = { x = 21.275, y = -7.030, z = -24.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70220070, pos = { x = 23.652, y = -7.000, z = -24.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70220065, pos = { x = 28.802, y = -6.890, z = -38.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3016, gadget_id = 70220048, pos = { x = 25.776, y = -6.970, z = -37.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70220065, pos = { x = 18.750, y = -7.030, z = -36.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3018, gadget_id = 70220048, pos = { x = 18.804, y = -7.030, z = -38.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70220065, pos = { x = 33.681, y = -6.970, z = -31.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3020, gadget_id = 70220048, pos = { x = 32.027, y = -7.034, z = -31.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70220062, pos = { x = 27.967, y = -7.008, z = -24.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3022, gadget_id = 70220062, pos = { x = 18.633, y = -7.009, z = -34.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3023, gadget_id = 70220062, pos = { x = 18.652, y = -7.022, z = -35.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3024, gadget_id = 70220062, pos = { x = 22.841, y = -6.986, z = -43.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3025, gadget_id = 70220050, pos = { x = 24.191, y = -7.030, z = -38.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70220050, pos = { x = 17.841, y = -7.042, z = -23.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3027, gadget_id = 70220062, pos = { x = 26.230, y = -6.986, z = -23.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3028, gadget_id = 71700226, pos = { x = 24.736, y = -6.959, z = -24.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3031, gadget_id = 70290141, pos = { x = 23.314, y = -7.030, z = -34.366 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70220070, pos = { x = 23.218, y = -7.030, z = -31.700 }, rot = { x = 0.000, y = 86.409, z = 0.000 }, level = 1 },
	{ config_id = 3033, gadget_id = 70220070, pos = { x = 22.815, y = -7.030, z = -28.558 }, rot = { x = 0.000, y = 268.214, z = 0.000 }, level = 1 },
	{ config_id = 3034, gadget_id = 70220065, pos = { x = 38.783, y = -3.960, z = -35.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 3035, gadget_id = 70220048, pos = { x = 38.783, y = -3.960, z = -33.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3004, shape = RegionShape.CUBIC, size = { x = 5.000, y = 1.000, z = 10.000 }, pos = { x = 14.685, y = -6.856, z = -28.787 } },
	{ config_id = 3008, shape = RegionShape.CUBIC, size = { x = 6.000, y = 2.000, z = 10.000 }, pos = { x = 34.246, y = -11.773, z = -25.795 } },
	{ config_id = 3009, shape = RegionShape.CUBIC, size = { x = 9.000, y = 4.000, z = 10.000 }, pos = { x = 12.103, y = -5.588, z = -49.694 } },
	-- 点完三盏灯之后玩家来到这，去掉怪物
	{ config_id = 3012, shape = RegionShape.CUBIC, size = { x = 15.000, y = 5.000, z = 15.000 }, pos = { x = 5.863, y = -6.981, z = -29.178 } }
}

-- 触发器
triggers = {
	{ config_id = 1003004, name = "ENTER_REGION_3004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3004", action = "action_EVENT_ENTER_REGION_3004" },
	{ config_id = 1003005, name = "ANY_MONSTER_DIE_3005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3005", action = "action_EVENT_ANY_MONSTER_DIE_3005" },
	-- 剧情结束时去掉怪物
	{ config_id = 1003006, name = "VARIABLE_CHANGE_3006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_3006", action = "action_EVENT_VARIABLE_CHANGE_3006" },
	{ config_id = 1003007, name = "GADGET_STATE_CHANGE_3007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3007", action = "action_EVENT_GADGET_STATE_CHANGE_3007" },
	{ config_id = 1003008, name = "ENTER_REGION_3008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3008", action = "action_EVENT_ENTER_REGION_3008" },
	{ config_id = 1003009, name = "ENTER_REGION_3009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3009", action = "action_EVENT_ENTER_REGION_3009" },
	-- 点完三盏灯之后玩家来到这，去掉怪物
	{ config_id = 1003012, name = "ENTER_REGION_3012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3012", action = "action_EVENT_ENTER_REGION_3012" },
	{ config_id = 1003029, name = "GROUP_LOAD_3029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3029" }
}

-- 变量
variables = {
	{ config_id = 1, name = "END", value = 0, no_refresh = false },
	{ config_id = 2, name = "BACKDOOR", value = 0, no_refresh = false }
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
		gadgets = { 3001, 3010, 3011, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3034, 3035 },
		regions = { 3012 },
		triggers = { "ANY_MONSTER_DIE_3005", "VARIABLE_CHANGE_3006", "ENTER_REGION_3012", "GROUP_LOAD_3029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 敌人触发条件,
		monsters = { },
		gadgets = { },
		regions = { 3008, 3009 },
		triggers = { "GADGET_STATE_CHANGE_3007", "ENTER_REGION_3008", "ENTER_REGION_3009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3002, 3003, 3030 },
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
function condition_EVENT_ENTER_REGION_3004(context, evt)
	if evt.param1 ~= 3004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220123003, 3001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3004(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"END"为1
	if ScriptLib.GetGroupVariableValue(context, "END") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220123003, 3001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123003, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3008(context, evt)
	if evt.param1 ~= 3008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123003, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3009(context, evt)
	if evt.param1 ~= 3009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123003, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3012(context, evt)
	if evt.param1 ~= 3012 then return false end
	
	-- 判断变量"BACKDOOR"为3
	if ScriptLib.GetGroupVariableValue(context, "BACKDOOR") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3012(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220123003, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_3029(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123003, 2)
	
	return 0
end