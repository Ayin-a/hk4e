-- 基础信息
local base_info = {
	group_id = 133001060
}

-- DEFS_MISCS
local defs = {
	--按想要的解谜顺序, 填子装置的config_id
	branch_gadgets = {60002, 60003, 60004}, 
	--主装置的config_id,可填一个或多个
	main_gadget = {60001}, 
	--重置倒计时秒数
	limit_time = {40}, 
	--这组解谜在哪个suit里
	puzzle_suit = 1,
	--当前group
	group = 133001060,
	--营地内龙血矿石组
	mineral = {60005,60006,60007},
	--挑战操作台
	challenge_gadget = 60009,
	--怪物数量
	monster_count = 18,
	--目标点
	target_point = 60035,
	--挑战时间
	time = 210,
	--教学Region
	guide_regionID = 60018,
	--Reminder提示用region
	banner_region =60012,
	--性能优化
	optimiz_region = 60011,
	--怪物列表
	monster_array = {60021,60022,60023,60026,60019,60027,60014,60015,60016,60040,60036,60037,60038,60044,60020},
	monster_min = 5,
	monster_max = 5,
	monster_count =18,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60014, monster_id = 21030501, pos = { x = 1500.980, y = 267.366, z = -1005.989 }, rot = { x = 0.000, y = 289.211, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60015, monster_id = 21010901, pos = { x = 1502.505, y = 266.740, z = -1001.191 }, rot = { x = 0.000, y = 274.389, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60016, monster_id = 20010802, pos = { x = 1488.791, y = 267.504, z = -1011.023 }, rot = { x = 0.000, y = 11.245, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60019, monster_id = 21020601, pos = { x = 1498.540, y = 266.272, z = -998.272 }, rot = { x = 0.000, y = 199.907, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60020, monster_id = 21011401, pos = { x = 1493.119, y = 267.446, z = -1008.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60021, monster_id = 21011401, pos = { x = 1488.578, y = 266.794, z = -1004.133 }, rot = { x = 0.000, y = 84.483, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60022, monster_id = 21011401, pos = { x = 1499.081, y = 267.678, z = -1008.317 }, rot = { x = 0.000, y = 288.087, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60023, monster_id = 20010802, pos = { x = 1499.974, y = 266.962, z = -1002.968 }, rot = { x = 0.000, y = 286.810, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60026, monster_id = 21011401, pos = { x = 1490.387, y = 266.809, z = -1001.273 }, rot = { x = 0.000, y = 114.695, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60027, monster_id = 21030501, pos = { x = 1496.496, y = 267.545, z = -1008.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60036, monster_id = 21010901, pos = { x = 1500.980, y = 267.366, z = -1005.989 }, rot = { x = 0.000, y = 289.211, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60037, monster_id = 21010901, pos = { x = 1502.505, y = 266.740, z = -1001.191 }, rot = { x = 0.000, y = 274.389, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60038, monster_id = 20010802, pos = { x = 1488.791, y = 267.504, z = -1011.023 }, rot = { x = 0.000, y = 11.245, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60040, monster_id = 20010802, pos = { x = 1493.119, y = 267.446, z = -1008.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60044, monster_id = 21010901, pos = { x = 1490.387, y = 266.809, z = -1001.273 }, rot = { x = 0.000, y = 114.695, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60001, gadget_id = 70220079, pos = { x = 1494.090, y = 266.812, z = -1003.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 60002, gadget_id = 70220082, pos = { x = 1486.914, y = 269.221, z = -997.955 }, rot = { x = 0.000, y = 138.973, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 60003, gadget_id = 70220082, pos = { x = 1483.183, y = 265.965, z = -1023.162 }, rot = { x = 0.000, y = 25.623, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 60004, gadget_id = 70220082, pos = { x = 1510.234, y = 266.102, z = -997.945 }, rot = { x = 0.000, y = 312.428, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 60005, gadget_id = 70590025, pos = { x = 1482.687, y = 267.501, z = -1010.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 60006, gadget_id = 70590025, pos = { x = 1482.449, y = 276.822, z = -992.550 }, rot = { x = 0.000, y = 342.127, z = 0.000 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 60007, gadget_id = 70590025, pos = { x = 1504.663, y = 265.952, z = -1003.185 }, rot = { x = 0.000, y = 285.902, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 60009, gadget_id = 70360324, pos = { x = 1494.090, y = 266.812, z = -1003.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 60028, gadget_id = 70310015, pos = { x = 1472.303, y = 275.611, z = -1017.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 60035, gadget_id = 70360105, pos = { x = 1494.090, y = 266.812, z = -1003.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 60008, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1494.090, y = 266.812, z = -1003.713 }, area_id = 10 },
	-- 性能优化圈
	{ config_id = 60011, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1494.090, y = 266.812, z = -1003.713 }, area_id = 10 },
	-- reminder提示用
	{ config_id = 60012, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1485.003, y = 267.543, z = -999.162 }, area_id = 10 },
	{ config_id = 60018, shape = RegionShape.SPHERE, radius = 40.5, pos = { x = 1494.090, y = 266.812, z = -1003.713 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1060008, name = "LEAVE_REGION_60008", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_60008", action = "action_EVENT_LEAVE_REGION_60008", trigger_count = 0 },
	{ config_id = 1060010, name = "GADGET_CREATE_60010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60010", action = "action_EVENT_GADGET_CREATE_60010", trigger_count = 0 },
	{ config_id = 1060024, name = "CHALLENGE_SUCCESS_60024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_60024" },
	{ config_id = 1060031, name = "SELECT_OPTION_60031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_60031", action = "action_EVENT_SELECT_OPTION_60031", trigger_count = 0 },
	{ config_id = 1060034, name = "VARIABLE_CHANGE_60034", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60034", action = "action_EVENT_VARIABLE_CHANGE_60034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "w1", value = 0, no_refresh = false },
	{ config_id = 2, name = "w2", value = 0, no_refresh = false },
	{ config_id = 3, name = "w3", value = 0, no_refresh = false },
	{ config_id = 4, name = "lastID", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 60029, gadget_id = 70310017, pos = { x = 1490.129, y = 267.347, z = -1014.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 60030, gadget_id = 70310017, pos = { x = 1506.357, y = 266.386, z = -993.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
	},
	triggers = {
		{ config_id = 1060017, name = "VARIABLE_CHANGE_60017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60017", action = "action_EVENT_VARIABLE_CHANGE_60017", trigger_count = 0 },
		{ config_id = 1060025, name = "CHALLENGE_FAIL_60025", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_60025", trigger_count = 0 },
		{ config_id = 1060032, name = "GADGET_STATE_CHANGE_60032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60032", action = "action_EVENT_GADGET_STATE_CHANGE_60032", trigger_count = 0 },
		{ config_id = 1060033, name = "GADGET_STATE_CHANGE_60033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60033", action = "", trigger_count = 0 }
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
		gadgets = { 60001, 60002, 60003, 60004, 60005, 60006, 60007, 60009, 60028 },
		regions = { 60008, 60012, 60018 },
		triggers = { "LEAVE_REGION_60008", "GADGET_CREATE_60010", "CHALLENGE_SUCCESS_60024", "SELECT_OPTION_60031", "VARIABLE_CHANGE_60034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 60011 },
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
function condition_EVENT_LEAVE_REGION_60008(context, evt)
	if evt.param1 ~=60008 then return false end
	return true
	
end

-- 触发操作
function action_EVENT_LEAVE_REGION_60008(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_60010(context, evt)
	if defs.challenge_gadget ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group, defs.challenge_gadget, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_60024(context, evt)
	-- 将configid为 60035 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60035, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_60031(context, evt)
	-- 判断是gadgetid 60009 option_id 7
	if defs.challenge_gadget ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_60031(context, evt)
		--判断是否激活
		if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group, defs.main_gadget[1]) then
			ScriptLib.PrintContextLog(context, "没有激活成功，创建暴风雪")
			ScriptLib.ActiveChallenge(context, 1, 2003010,defs.time, defs.group, defs.monster_count, 0)
			ScriptLib.ShowReminder(context, 400098)
			ScriptLib.CreateGadget(context, { config_id = defs.target_point })
		else
			ScriptLib.PrintContextLog(context, "激活成功，添加能力")
			ScriptLib.ActiveChallenge(context, 1, 2003014,defs.time, defs.group, defs.monster_count, 0)
			ScriptLib.ShowReminder(context, 400097)
		end
		
		-- 删除指定group： 133001060 ；指定config：60009；物件身上指定option：7；
		if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group, defs.challenge_gadget, 7) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		  return -1
		end
		
		--启动怪物潮
		
		if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group, defs.monster_array, defs.monster_count, defs.monster_min, defs.monster_max) then
		 return -1
		end
		
		
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_60034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if 1 ~= evt.param2 or 2 ~= evt.param1 or "puzzle_state" ~= evt.source_name then
	  return false
	end
	
	ScriptLib.PrintContextLog(context, "玩法成功 创建隐形操作台")
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_60034(context, evt)
		-- 将configid为 83005 的物件更改为状态 GadgetState.GearStop
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60035, GadgetState.GearStop) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
				return -1
			end 
		
		return 0
end

require "V2_3/WinterCampDevice"