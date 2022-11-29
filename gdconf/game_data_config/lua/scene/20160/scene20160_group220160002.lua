-- 基础信息
local base_info = {
	group_id = 220160002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 25410201, pos = { x = -35.140, y = 0.729, z = 72.844 }, rot = { x = 0.000, y = 90.196, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 2003, monster_id = 25210301, pos = { x = -27.114, y = 0.729, z = 77.640 }, rot = { x = 0.000, y = 121.463, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2004, monster_id = 25210401, pos = { x = -25.397, y = 0.729, z = 71.012 }, rot = { x = 0.000, y = 73.188, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2005, monster_id = 25210401, pos = { x = -25.280, y = 0.729, z = 75.232 }, rot = { x = 0.000, y = 113.071, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2007, monster_id = 25210501, pos = { x = -27.128, y = 0.729, z = 67.724 }, rot = { x = 0.000, y = 56.526, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2015, monster_id = 25210201, pos = { x = -29.334, y = 0.729, z = 67.706 }, rot = { x = 0.000, y = 59.581, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2016, monster_id = 25210201, pos = { x = -28.358, y = 0.917, z = 72.970 }, rot = { x = 0.000, y = 89.635, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2017, monster_id = 25210201, pos = { x = -29.196, y = 0.729, z = 77.830 }, rot = { x = 0.000, y = 122.704, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2018, monster_id = 25310301, pos = { x = -27.194, y = 0.890, z = 75.736 }, rot = { x = 0.000, y = 119.590, z = 0.000 }, level = 1, disableWander = true, affix = { 1042, 1027 } },
	{ config_id = 2019, monster_id = 25310201, pos = { x = -25.214, y = 0.729, z = 72.943 }, rot = { x = 0.000, y = 91.864, z = 0.000 }, level = 1, disableWander = true, affix = { 1042, 1029 }, pose_id = 1 },
	{ config_id = 2020, monster_id = 25210201, pos = { x = -30.178, y = 0.729, z = 77.700 }, rot = { x = 0.000, y = 116.395, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2021, monster_id = 25210201, pos = { x = -30.489, y = 0.729, z = 67.750 }, rot = { x = 0.000, y = 60.359, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2024, monster_id = 25210401, pos = { x = -27.106, y = 0.890, z = 73.700 }, rot = { x = 0.000, y = 93.169, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2025, monster_id = 25210401, pos = { x = -27.163, y = 0.890, z = 71.682 }, rot = { x = 0.000, y = 79.174, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2026, monster_id = 25310101, pos = { x = -27.375, y = 0.890, z = 69.799 }, rot = { x = 0.000, y = 50.498, z = 0.000 }, level = 1, disableWander = true, affix = { 1042, 1026 }, pose_id = 1 },
	{ config_id = 2029, monster_id = 25210202, pos = { x = -35.008, y = 0.928, z = 77.259 }, rot = { x = 0.000, y = 121.214, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2030, monster_id = 25210201, pos = { x = -35.239, y = 0.928, z = 67.826 }, rot = { x = 0.000, y = 59.106, z = 0.000 }, level = 1, disableWander = true, affix = { 1042 } },
	{ config_id = 2031, monster_id = 25410101, pos = { x = -31.748, y = 0.893, z = 72.691 }, rot = { x = 0.000, y = 90.100, z = 0.000 }, level = 1, disableWander = true, affix = { 6103 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70330334, pos = { x = -19.976, y = 0.592, z = 73.071 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70950010, pos = { x = -42.129, y = 0.672, z = 88.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70360001, pos = { x = -19.951, y = 1.925, z = 73.053 }, rot = { x = 0.000, y = 168.270, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70211021, pos = { x = -30.245, y = 0.939, z = 72.755 }, rot = { x = 0.000, y = 90.065, z = 0.000 }, level = 1, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true },
	{ config_id = 2014, gadget_id = 70330287, pos = { x = -30.299, y = -0.492, z = 72.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2022, gadget_id = 70900201, pos = { x = -19.976, y = 3.266, z = 73.042 }, rot = { x = 0.000, y = 168.270, z = 0.000 }, level = 1 },
	{ config_id = 2023, gadget_id = 70330417, pos = { x = -54.480, y = 2.960, z = 73.077 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2028, gadget_id = 70310016, pos = { x = -28.141, y = 0.270, z = 75.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2035, gadget_id = 70950011, pos = { x = 24.354, y = 2.909, z = 72.791 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2036, gadget_id = 70950011, pos = { x = -21.557, y = 0.986, z = 88.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2037, gadget_id = 70310016, pos = { x = -32.352, y = 0.270, z = 74.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2038, gadget_id = 70310016, pos = { x = -32.631, y = 0.270, z = 70.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2039, gadget_id = 70310016, pos = { x = -27.805, y = 0.270, z = 70.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2040, gadget_id = 70330452, pos = { x = -13.419, y = 0.038, z = 56.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2041, gadget_id = 70330452, pos = { x = -28.416, y = 0.038, z = 56.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2042, gadget_id = 70330452, pos = { x = -45.183, y = 0.038, z = 56.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2027, shape = RegionShape.SPHERE, radius = 5, pos = { x = 6.572, y = 0.668, z = 73.358 } }
}

-- 触发器
triggers = {
	{ config_id = 1002009, name = "GADGET_CREATE_2009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2009", action = "action_EVENT_GADGET_CREATE_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "SELECT_OPTION_2010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2010", action = "action_EVENT_SELECT_OPTION_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "CHALLENGE_SUCCESS_2011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2010074", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2011", trigger_count = 0 },
	{ config_id = 1002013, name = "CHALLENGE_FAIL_2013", event = EventType.EVENT_CHALLENGE_FAIL, source = "2010074", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2013", trigger_count = 0 },
	{ config_id = 1002027, name = "ENTER_REGION_2027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2027", action = "action_EVENT_ENTER_REGION_2027" },
	{ config_id = 1002032, name = "ANY_MONSTER_DIE_2032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2032", action = "action_EVENT_ANY_MONSTER_DIE_2032" },
	{ config_id = 1002033, name = "ANY_MONSTER_DIE_2033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2033", action = "action_EVENT_ANY_MONSTER_DIE_2033" },
	{ config_id = 1002034, name = "ANY_MONSTER_DIE_2034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2034", action = "action_EVENT_ANY_MONSTER_DIE_2034" }
}

-- 变量
variables = {
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
		gadgets = { 2001, 2006, 2008, 2014, 2022, 2023, 2028, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042 },
		regions = { 2027 },
		triggers = { "GADGET_CREATE_2009", "SELECT_OPTION_2010", "CHALLENGE_SUCCESS_2011", "CHALLENGE_FAIL_2013", "ENTER_REGION_2027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2003, 2004, 2005, 2007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2032" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2015, 2016, 2017, 2019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2018, 2020, 2021, 2024, 2025, 2026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2034" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 2002, 2029, 2030, 2031 },
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
function condition_EVENT_GADGET_CREATE_2009(context, evt)
	if 2008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220160002, 2008, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2010(context, evt)
	-- 判断是gadgetid 2008 option_id 177
	if 2008 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2010(context, evt)
	-- 创建编号为2010074（该挑战的识别id),挑战内容为2010074的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2010074, 2010074, 220160002, 18, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220160002, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2011(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2013(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220160002, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220160002, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220160002, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220160002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2027(context, evt)
	if evt.param1 ~= 2027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2027(context, evt)
	-- 将configid为 2014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2032(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220160002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220160002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220160002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2033(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220160002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220160002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220160002, 5)
	
	return 0
end