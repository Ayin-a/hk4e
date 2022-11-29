-- 基础信息
local base_info = {
	group_id = 133209035
}

-- Trigger变量
local defs = {
	inner_region = 35029,
	outer_region = 35029,
	related_region = 35029,
	group_id = 133209035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 21011001, pos = { x = -2325.600, y = 200.554, z = -3618.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35002, monster_id = 21010201, pos = { x = -2327.848, y = 200.471, z = -3616.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35003, monster_id = 21030601, pos = { x = -2323.066, y = 200.566, z = -3618.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35004, monster_id = 21011001, pos = { x = -2320.296, y = 200.366, z = -3617.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35005, monster_id = 21010201, pos = { x = -2317.942, y = 200.160, z = -3616.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35006, monster_id = 21010201, pos = { x = -2329.549, y = 200.288, z = -3615.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35007, monster_id = 21010201, pos = { x = -2316.021, y = 200.163, z = -3615.407 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35008, monster_id = 21011601, pos = { x = -2330.855, y = 200.121, z = -3613.930 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35009, monster_id = 21011601, pos = { x = -2314.634, y = 200.378, z = -3613.460 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35019, monster_id = 21020701, pos = { x = -2332.030, y = 200.138, z = -3611.722 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35020, monster_id = 21010201, pos = { x = -2313.584, y = 200.496, z = -3611.807 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35021, monster_id = 21030601, pos = { x = -2313.152, y = 200.451, z = -3609.763 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35022, monster_id = 21010201, pos = { x = -2332.856, y = 200.174, z = -3609.233 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35023, monster_id = 21010201, pos = { x = -2325.699, y = 200.570, z = -3599.200 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35024, monster_id = 21010501, pos = { x = -2332.842, y = 200.319, z = -3607.114 }, rot = { x = 0.000, y = 115.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35025, monster_id = 21010501, pos = { x = -2327.330, y = 200.616, z = -3599.831 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35026, monster_id = 21010201, pos = { x = -2331.373, y = 200.540, z = -3604.944 }, rot = { x = 0.000, y = 125.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 },
	{ config_id = 35027, monster_id = 21020701, pos = { x = -2329.887, y = 200.667, z = -3601.605 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35010, gadget_id = 70330062, pos = { x = -2322.069, y = 200.629, z = -3615.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 35011, gadget_id = 70330062, pos = { x = -2318.117, y = 200.533, z = -3606.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 35012, gadget_id = 70330062, pos = { x = -2327.864, y = 200.510, z = -3606.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 35013, gadget_id = 70350082, pos = { x = -2322.162, y = 200.455, z = -3609.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 35014, gadget_id = 70330064, pos = { x = -2324.534, y = 200.513, z = -3604.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 35029, shape = RegionShape.SPHERE, radius = 30, pos = { x = -2322.769, y = 200.498, z = -3607.074 }, area_id = 11, team_ability_group_list = { "RoleElectricPowerSource_Play_TeamBuff" } }
}

-- 触发器
triggers = {
	{ config_id = 1035015, name = "SELECT_OPTION_35015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_35015", action = "action_EVENT_SELECT_OPTION_35015", trigger_count = 0 },
	{ config_id = 1035016, name = "GADGET_CREATE_35016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_35016", action = "action_EVENT_GADGET_CREATE_35016", trigger_count = 0 },
	{ config_id = 1035017, name = "CHALLENGE_FAIL_35017", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_35017", trigger_count = 0 },
	{ config_id = 1035018, name = "CHALLENGE_SUCCESS_35018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_35018" },
	{ config_id = 1035028, name = "GROUP_LOAD_35028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_35028" },
	{ config_id = 1035030, name = "GROUP_LOAD_35030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_35030", trigger_count = 0 }
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
	suite = 3,
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
		gadgets = { 35010, 35011, 35012, 35013, 35014 },
		regions = { },
		triggers = { "SELECT_OPTION_35015", "GADGET_CREATE_35016", "CHALLENGE_FAIL_35017", "CHALLENGE_SUCCESS_35018", "GROUP_LOAD_35030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 35029 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_35028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_35015(context, evt)
	-- 判断是gadgetid 35013 option_id 175
	if 35013 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_35015(context, evt)
	-- 删除指定group： 133209035 ；指定config：35013；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133209035, 35013, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为101（该挑战的识别id),挑战内容为111170的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 111170, 180, 133209035, 18, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为18，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133209035, {35001,35002,35003,35004,35005,35006,35007,35008,35009,35019,35020,35021,35022,35023,35024,35025,35026,35027}, 18, 5, 5) then
		return -1
	end
	
	-- 将configid为 35010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209035, 2)
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133209035, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_35016(context, evt)
	if 35013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_35016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133209035, 35013, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_35017(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 133209035, EntityType.REGION, 35029)
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209035, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_35018(context, evt)
	-- 将configid为 35010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 35013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133209035, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_35028(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_35030(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209035, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_Event_V2.0"
require "V2_0/ExhibitionRoleElectricPowerSource"