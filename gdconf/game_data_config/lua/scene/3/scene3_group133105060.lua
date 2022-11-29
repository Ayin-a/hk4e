-- 基础信息
local base_info = {
	group_id = 133105060
}

-- DEFS_MISCS
local defs = {
	--按想要的解谜顺序, 填子装置的config_id
	branch_gadgets = {60012, 60013, 60014}, 
	--主装置的config_id,可填一个或多个
	main_gadget = {60011}, 
	--重置倒计时秒数
	limit_time = {40}, 
	--这组解谜在哪个suit里
	puzzle_suit = 1,
	--当前group
	group = 133105060,
	--营地内龙血矿石组
	mineral = {60015,60016,60017},
	--挑战操作台
	challenge_gadget = 60018,
	--怪物数量
	monster_count = 14,
	--挑战时间
	time = 210,
	--目标点
	target_point = 60019,
	--性能优化
	optimiz_region = 60038,
	--Reminder提示用region
	banner_region =60039,
	--怪物列表
	monster_array = {60001,60002,60003,60004,60005,60006,60007,60008,60009,60010,60031,60035,60036,60037},
	monster_min = 5,
	monster_max = 5,
	monster_count =14
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 20010802, pos = { x = 671.986, y = 201.865, z = -818.477 }, rot = { x = 0.000, y = 289.211, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60002, monster_id = 21010901, pos = { x = 673.511, y = 201.238, z = -813.679 }, rot = { x = 0.000, y = 274.389, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60003, monster_id = 21010901, pos = { x = 658.632, y = 201.748, z = -820.622 }, rot = { x = 0.000, y = 11.245, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60004, monster_id = 21010902, pos = { x = 670.436, y = 201.211, z = -805.638 }, rot = { x = 0.000, y = 199.907, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60005, monster_id = 21010902, pos = { x = 658.994, y = 202.018, z = -813.461 }, rot = { x = 0.000, y = 93.178, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60006, monster_id = 20010802, pos = { x = 659.584, y = 201.293, z = -816.621 }, rot = { x = 0.000, y = 84.483, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60007, monster_id = 21011401, pos = { x = 670.087, y = 202.177, z = -820.805 }, rot = { x = 0.000, y = 288.087, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60008, monster_id = 21011401, pos = { x = 670.980, y = 201.461, z = -815.456 }, rot = { x = 0.000, y = 286.810, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60009, monster_id = 21010201, pos = { x = 661.393, y = 201.307, z = -813.761 }, rot = { x = 0.000, y = 114.695, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60010, monster_id = 21010201, pos = { x = 668.008, y = 201.244, z = -818.265 }, rot = { x = 0.000, y = 212.046, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60031, monster_id = 20010802, pos = { x = 660.172, y = 201.445, z = -815.772 }, rot = { x = 0.000, y = 146.045, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60035, monster_id = 21020601, pos = { x = 669.932, y = 201.315, z = -825.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60036, monster_id = 21020601, pos = { x = 657.444, y = 201.736, z = -824.027 }, rot = { x = 0.000, y = 59.487, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 60037, monster_id = 20010802, pos = { x = 665.148, y = 201.284, z = -808.764 }, rot = { x = 0.000, y = 181.675, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60011, gadget_id = 70220079, pos = { x = 663.354, y = 201.402, z = -823.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 60012, gadget_id = 70220082, pos = { x = 658.865, y = 202.453, z = -826.929 }, rot = { x = 0.000, y = 67.940, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 60013, gadget_id = 70220082, pos = { x = 686.346, y = 202.647, z = -823.032 }, rot = { x = 0.000, y = 273.169, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 60014, gadget_id = 70220082, pos = { x = 655.731, y = 203.356, z = -810.890 }, rot = { x = 0.000, y = 120.183, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 60015, gadget_id = 70590025, pos = { x = 653.255, y = 201.308, z = -826.430 }, rot = { x = 11.602, y = 286.782, z = 0.326 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 60016, gadget_id = 70590025, pos = { x = 660.893, y = 202.505, z = -803.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 60017, gadget_id = 70590025, pos = { x = 694.402, y = 202.907, z = -831.359 }, rot = { x = 0.000, y = 272.263, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 60018, gadget_id = 70360324, pos = { x = 663.354, y = 201.402, z = -823.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 60019, gadget_id = 70360105, pos = { x = 663.354, y = 203.105, z = -823.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 60034, shape = RegionShape.SPHERE, radius = 30, pos = { x = 665.096, y = 201.311, z = -816.201 }, area_id = 10 },
	-- 性能优化圈
	{ config_id = 60038, shape = RegionShape.SPHERE, radius = 30, pos = { x = 665.096, y = 201.311, z = -816.201 }, area_id = 10 },
	-- reminder提示用
	{ config_id = 60039, shape = RegionShape.SPHERE, radius = 55, pos = { x = 663.352, y = 202.041, z = -823.274 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1060022, name = "VARIABLE_CHANGE_60022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60022", action = "action_EVENT_VARIABLE_CHANGE_60022", trigger_count = 0 },
	{ config_id = 1060023, name = "GADGET_CREATE_60023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_60023", action = "action_EVENT_GADGET_CREATE_60023", trigger_count = 0 },
	{ config_id = 1060028, name = "SELECT_OPTION_60028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_60028", action = "action_EVENT_SELECT_OPTION_60028", trigger_count = 0 },
	{ config_id = 1060029, name = "CHALLENGE_SUCCESS_60029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_60029" },
	{ config_id = 1060034, name = "LEAVE_REGION_60034", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_60034", action = "action_EVENT_LEAVE_REGION_60034", trigger_count = 0 }
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
		{ config_id = 60020, gadget_id = 70310017, pos = { x = 644.376, y = 200.841, z = -829.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 60021, gadget_id = 70310017, pos = { x = 683.001, y = 201.465, z = -840.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
	},
	triggers = {
		{ config_id = 1060024, name = "GADGET_STATE_CHANGE_60024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60024", action = "action_EVENT_GADGET_STATE_CHANGE_60024" },
		{ config_id = 1060025, name = "GADGET_STATE_CHANGE_60025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60025", action = "action_EVENT_GADGET_STATE_CHANGE_60025" },
		{ config_id = 1060026, name = "GADGET_STATE_CHANGE_60026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60026", action = "action_EVENT_GADGET_STATE_CHANGE_60026" },
		{ config_id = 1060027, name = "VARIABLE_CHANGE_60027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_60027", action = "action_EVENT_VARIABLE_CHANGE_60027", trigger_count = 0 },
		{ config_id = 1060030, name = "CHALLENGE_FAIL_60030", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_60030", trigger_count = 0 },
		{ config_id = 1060032, name = "GADGET_STATE_CHANGE_60032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60032", action = "", trigger_count = 0 },
		{ config_id = 1060033, name = "GADGET_STATE_CHANGE_60033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60033", action = "action_EVENT_GADGET_STATE_CHANGE_60033", trigger_count = 0 }
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
		gadgets = { 60011, 60012, 60013, 60014, 60015, 60016, 60017, 60018 },
		regions = { 60034, 60039 },
		triggers = { "VARIABLE_CHANGE_60022", "GADGET_CREATE_60023", "SELECT_OPTION_60028", "CHALLENGE_SUCCESS_60029", "LEAVE_REGION_60034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 60038 },
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
function condition_EVENT_VARIABLE_CHANGE_60022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if 1 ~= evt.param2 or 2 ~= evt.param1 or "puzzle_state" ~= evt.source_name then
	  return false
	end
	
	ScriptLib.PrintContextLog(context, "玩法成功 创建隐形操作台")
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_60022(context, evt)
	-- 将configid为 60019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_60023(context, evt)
	if defs.challenge_gadget ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_60023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group, defs.challenge_gadget, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_60028(context, evt)
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
function action_EVENT_SELECT_OPTION_60028(context, evt)
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_60029(context, evt)
	-- 将configid为 60019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_60034(context, evt)
	if evt.param1 ~=60034 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_60034(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

require "V2_3/WinterCampDevice"