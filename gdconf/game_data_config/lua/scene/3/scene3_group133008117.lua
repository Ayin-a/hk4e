-- 基础信息
local base_info = {
	group_id = 133008117
}

-- DEFS_MISCS
local defs = {
	--按想要的解谜顺序, 填子装置的config_id
	branch_gadgets = {117012, 117013, 117014}, 
	--主装置的config_id,可填一个或多个
	main_gadget = {117011}, 
	--重置倒计时秒数
	limit_time = {25}, 
	--这组解谜在哪个suit里
	puzzle_suit = 1,
	--当前group
	group = 133008117,
	--营地内龙血矿石组
	mineral = {117015, 117016, 117017},
	--挑战操作台
	challenge_gadget = 117018,
	--Reminder提示用region
	banner_region =117045,
	--怪物数量
	monster_count = 14,
	--挑战时间
	time = 210,
	--怪物列表
	monster_array = {117001,117002,117003,117004,117005,117006,117007,117008,117009,117010},
	monster_min = 5,
	monster_max = 5,
	monster_count =15,
	target_point = 117019,
	optimiz_region=117044

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117001, monster_id = 21030501, pos = { x = 1467.013, y = 267.206, z = -644.418 }, rot = { x = 0.000, y = 324.081, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 117002, monster_id = 20010802, pos = { x = 1469.882, y = 266.942, z = -637.321 }, rot = { x = 0.000, y = 259.958, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 117003, monster_id = 21010901, pos = { x = 1461.701, y = 267.355, z = -645.767 }, rot = { x = 0.000, y = 11.245, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 117004, monster_id = 20010802, pos = { x = 1467.396, y = 267.056, z = -633.408 }, rot = { x = 0.000, y = 199.907, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 117005, monster_id = 22010201, pos = { x = 1467.549, y = 267.095, z = -638.080 }, rot = { x = 0.000, y = 295.026, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 117006, monster_id = 21011401, pos = { x = 1459.226, y = 266.973, z = -632.486 }, rot = { x = 0.000, y = 112.628, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 117007, monster_id = 20010802, pos = { x = 1468.704, y = 267.069, z = -641.361 }, rot = { x = 0.000, y = 288.087, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 117008, monster_id = 21011401, pos = { x = 1465.741, y = 267.141, z = -632.568 }, rot = { x = 0.000, y = 226.553, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 117009, monster_id = 21010201, pos = { x = 1456.970, y = 267.075, z = -636.528 }, rot = { x = 0.000, y = 120.733, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 117010, monster_id = 21020601, pos = { x = 1468.106, y = 267.126, z = -632.739 }, rot = { x = 0.000, y = 231.198, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 117011, gadget_id = 70220079, pos = { x = 1461.370, y = 267.254, z = -639.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 117012, gadget_id = 70220082, pos = { x = 1464.941, y = 267.621, z = -653.082 }, rot = { x = 0.000, y = 92.245, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 117013, gadget_id = 70220082, pos = { x = 1484.448, y = 266.077, z = -631.039 }, rot = { x = 0.000, y = 156.035, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 117014, gadget_id = 70220082, pos = { x = 1448.027, y = 267.392, z = -633.489 }, rot = { x = 0.000, y = 72.528, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 117015, gadget_id = 70590025, pos = { x = 1490.503, y = 266.553, z = -660.537 }, rot = { x = 22.837, y = 68.448, z = 346.868 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 117016, gadget_id = 70590025, pos = { x = 1493.911, y = 267.939, z = -611.465 }, rot = { x = 341.382, y = 77.445, z = 336.011 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 117017, gadget_id = 70590025, pos = { x = 1451.817, y = 266.735, z = -617.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 117018, gadget_id = 70360324, pos = { x = 1461.370, y = 267.254, z = -639.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 117019, gadget_id = 70360105, pos = { x = 1461.370, y = 268.071, z = -639.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 117020, gadget_id = 70310015, pos = { x = 1448.793, y = 269.426, z = -645.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 117031, gadget_id = 70360103, pos = { x = 1485.730, y = 266.100, z = -626.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 117032, gadget_id = 70360103, pos = { x = 1487.589, y = 266.100, z = -623.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 117033, gadget_id = 70360103, pos = { x = 1489.053, y = 266.100, z = -618.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 117043, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1461.370, y = 267.254, z = -639.560 }, area_id = 10 },
	-- 性能优化圈
	{ config_id = 117044, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1461.370, y = 267.254, z = -639.560 }, area_id = 10 },
	-- reminder提示用
	{ config_id = 117045, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1461.318, y = 269.346, z = -639.570 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1117022, name = "VARIABLE_CHANGE_117022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_117022", action = "action_EVENT_VARIABLE_CHANGE_117022", trigger_count = 0 },
	{ config_id = 1117023, name = "GADGET_CREATE_117023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_117023", action = "action_EVENT_GADGET_CREATE_117023", trigger_count = 0 },
	{ config_id = 1117028, name = "SELECT_OPTION_117028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_117028", action = "action_EVENT_SELECT_OPTION_117028", trigger_count = 0 },
	{ config_id = 1117029, name = "CHALLENGE_SUCCESS_117029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_117029" },
	{ config_id = 1117043, name = "LEAVE_REGION_117043", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_117043", action = "action_EVENT_LEAVE_REGION_117043", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "w1", value = 0, no_refresh = false },
	{ config_id = 2, name = "w2", value = 0, no_refresh = false },
	{ config_id = 3, name = "w3", value = 0, no_refresh = false },
	{ config_id = 4, name = "lastID", value = 0, no_refresh = false },
	{ config_id = 5, name = "killID", value = 0, no_refresh = false },
	{ config_id = 6, name = "challenge_state", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 117021, gadget_id = 70310017, pos = { x = 1466.444, y = 269.150, z = -654.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 117034, gadget_id = 70360103, pos = { x = 1457.406, y = 266.100, z = -613.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 117035, gadget_id = 70360103, pos = { x = 1456.703, y = 266.100, z = -608.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 117036, gadget_id = 70360103, pos = { x = 1455.437, y = 266.100, z = -604.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 117037, gadget_id = 70360103, pos = { x = 1456.652, y = 266.100, z = -600.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 117038, gadget_id = 70360103, pos = { x = 1453.454, y = 266.100, z = -596.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 117039, gadget_id = 70360103, pos = { x = 1448.619, y = 266.100, z = -594.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
		{ config_id = 117040, gadget_id = 70310017, pos = { x = 1478.975, y = 266.549, z = -640.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
	},
	triggers = {
		{ config_id = 1117024, name = "GADGET_STATE_CHANGE_117024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117024", action = "action_EVENT_GADGET_STATE_CHANGE_117024" },
		{ config_id = 1117025, name = "GADGET_STATE_CHANGE_117025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117025", action = "action_EVENT_GADGET_STATE_CHANGE_117025" },
		{ config_id = 1117026, name = "GADGET_STATE_CHANGE_117026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117026", action = "action_EVENT_GADGET_STATE_CHANGE_117026" },
		{ config_id = 1117027, name = "VARIABLE_CHANGE_117027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_117027", action = "action_EVENT_VARIABLE_CHANGE_117027", trigger_count = 0 },
		{ config_id = 1117030, name = "CHALLENGE_FAIL_117030", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_117030", trigger_count = 0 },
		{ config_id = 1117041, name = "GADGET_STATE_CHANGE_117041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117041", action = "", trigger_count = 0 },
		{ config_id = 1117042, name = "GADGET_STATE_CHANGE_117042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_117042", action = "action_EVENT_GADGET_STATE_CHANGE_117042", trigger_count = 0 }
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
		gadgets = { 117011, 117012, 117013, 117014, 117015, 117016, 117017, 117018, 117020, 117031, 117032, 117033 },
		regions = { 117043, 117045 },
		triggers = { "VARIABLE_CHANGE_117022", "GADGET_CREATE_117023", "SELECT_OPTION_117028", "CHALLENGE_SUCCESS_117029", "LEAVE_REGION_117043" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 117044 },
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
function condition_EVENT_VARIABLE_CHANGE_117022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if 1 ~= evt.param2 or 2 ~= evt.param1 or "puzzle_state" ~= evt.source_name then
	  return false
	end
	
	ScriptLib.PrintContextLog(context, "玩法成功 创建隐形操作台")
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_117022(context, evt)
	-- 将configid为 117019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 117019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_117023(context, evt)
	if defs.challenge_gadget ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_117023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group, defs.challenge_gadget, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_117028(context, evt)
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
function action_EVENT_SELECT_OPTION_117028(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_117029(context, evt)
	-- 将configid为 117019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 117019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_117043(context, evt)
	if evt.param1 ~=117043 then return false end
	return true
	
end

-- 触发操作
function action_EVENT_LEAVE_REGION_117043(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

require "V2_3/WinterCampDevice"