-- 基础信息
local base_info = {
	group_id = 133008676
}

-- DEFS_MISCS
local defs = {
	--按想要的解谜顺序, 填子装置的config_id
	branch_gadgets = {676012, 676013, 676014}, 
	--主装置的config_id,可填一个或多个
	main_gadget = {676011}, 
	--重置倒计时秒数
	limit_time = {25}, 
	--这组解谜在哪个suit里
	puzzle_suit = 1,
	--当前group
	group = 133008676,
	--营地内龙血矿石组
	mineral = {676015,676016,676017},
	--挑战操作台
	challenge_gadget = 676018,
	--怪物数量
	monster_count = 10,
	--挑战时间
	time = 210,
	--Reminder提示用region
	banner_region =676036,
	--怪物列表
	monster_array = {676001,676002,676003,676004,676005,676006,676007,676008,676009,676010},
	monster_min = 3,
	monster_max = 3,
	monster_count =10,
	target_point = 676031,
	optimiz_region=676035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 676001, monster_id = 21020401, pos = { x = 1406.448, y = 284.245, z = -1031.875 }, rot = { x = 0.000, y = 60.922, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 676002, monster_id = 21011401, pos = { x = 1410.043, y = 283.480, z = -1033.158 }, rot = { x = 0.000, y = 42.437, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 676003, monster_id = 20010802, pos = { x = 1405.557, y = 284.109, z = -1034.051 }, rot = { x = 0.000, y = 99.383, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 676004, monster_id = 21011301, pos = { x = 1423.367, y = 281.353, z = -1029.753 }, rot = { x = 0.000, y = 278.356, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 676005, monster_id = 20010802, pos = { x = 1423.908, y = 281.056, z = -1026.609 }, rot = { x = 0.000, y = 222.081, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 676006, monster_id = 21010901, pos = { x = 1421.631, y = 281.538, z = -1027.323 }, rot = { x = 0.000, y = 191.203, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 676007, monster_id = 21010901, pos = { x = 1407.896, y = 283.873, z = -1034.034 }, rot = { x = 0.000, y = 16.225, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 676008, monster_id = 20010802, pos = { x = 1408.512, y = 284.273, z = -1029.618 }, rot = { x = 0.000, y = 14.948, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 676009, monster_id = 21011301, pos = { x = 1422.460, y = 281.429, z = -1025.169 }, rot = { x = 0.000, y = 221.414, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 676010, monster_id = 20010802, pos = { x = 1407.163, y = 284.843, z = -1028.477 }, rot = { x = 0.000, y = 88.138, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 676011, gadget_id = 70220079, pos = { x = 1416.172, y = 282.556, z = -1031.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 676012, gadget_id = 70220082, pos = { x = 1412.517, y = 285.233, z = -1038.935 }, rot = { x = 0.000, y = 31.151, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 676013, gadget_id = 70220082, pos = { x = 1425.913, y = 281.873, z = -1037.628 }, rot = { x = 0.000, y = 308.049, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 676014, gadget_id = 70220082, pos = { x = 1412.246, y = 286.105, z = -1019.159 }, rot = { x = 0.000, y = 163.658, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 676015, gadget_id = 70590025, pos = { x = 1408.612, y = 287.538, z = -1054.281 }, rot = { x = 2.983, y = 175.887, z = 8.665 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 676016, gadget_id = 70590025, pos = { x = 1427.751, y = 278.474, z = -1043.079 }, rot = { x = 7.027, y = 163.985, z = 6.361 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 676017, gadget_id = 70590025, pos = { x = 1407.824, y = 288.856, z = -1013.925 }, rot = { x = 0.000, y = 195.406, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 676018, gadget_id = 70360324, pos = { x = 1416.172, y = 282.556, z = -1031.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 676031, gadget_id = 70360105, pos = { x = 1416.172, y = 283.486, z = -1031.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 676034, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1416.172, y = 282.556, z = -1031.705 }, area_id = 10 },
	-- 性能优化圈
	{ config_id = 676035, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1416.172, y = 282.556, z = -1031.705 }, area_id = 10 },
	-- reminder提示用
	{ config_id = 676036, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1416.085, y = 284.631, z = -1031.698 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1676022, name = "VARIABLE_CHANGE_676022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_676022", action = "action_EVENT_VARIABLE_CHANGE_676022", trigger_count = 0 },
	{ config_id = 1676023, name = "GADGET_CREATE_676023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_676023", action = "action_EVENT_GADGET_CREATE_676023", trigger_count = 0 },
	{ config_id = 1676028, name = "SELECT_OPTION_676028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_676028", action = "action_EVENT_SELECT_OPTION_676028", trigger_count = 0 },
	{ config_id = 1676029, name = "CHALLENGE_SUCCESS_676029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_676029" },
	{ config_id = 1676034, name = "LEAVE_REGION_676034", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_676034", action = "action_EVENT_LEAVE_REGION_676034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "w1", value = 0, no_refresh = false },
	{ config_id = 2, name = "w2", value = 0, no_refresh = false },
	{ config_id = 3, name = "w3", value = 0, no_refresh = false },
	{ config_id = 4, name = "lastID", value = 0, no_refresh = false },
	{ config_id = 5, name = "challenge_state", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 676019, gadget_id = 70310015, pos = { x = 1392.562, y = 285.935, z = -1041.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 676020, gadget_id = 70310017, pos = { x = 1410.393, y = 284.725, z = -1038.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 676021, gadget_id = 70310017, pos = { x = 1422.920, y = 283.502, z = -1018.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
	},
	triggers = {
		{ config_id = 1676024, name = "GADGET_STATE_CHANGE_676024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_676024", action = "action_EVENT_GADGET_STATE_CHANGE_676024" },
		{ config_id = 1676025, name = "GADGET_STATE_CHANGE_676025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_676025", action = "action_EVENT_GADGET_STATE_CHANGE_676025" },
		{ config_id = 1676026, name = "GADGET_STATE_CHANGE_676026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_676026", action = "action_EVENT_GADGET_STATE_CHANGE_676026" },
		{ config_id = 1676027, name = "VARIABLE_CHANGE_676027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_676027", action = "action_EVENT_VARIABLE_CHANGE_676027", trigger_count = 0 },
		{ config_id = 1676030, name = "CHALLENGE_FAIL_676030", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_676030", trigger_count = 0 },
		{ config_id = 1676032, name = "GADGET_STATE_CHANGE_676032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_676032", action = "", trigger_count = 0 },
		{ config_id = 1676033, name = "GADGET_STATE_CHANGE_676033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_676033", action = "action_EVENT_GADGET_STATE_CHANGE_676033", trigger_count = 0 }
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
		gadgets = { 676011, 676012, 676013, 676014, 676015, 676016, 676017, 676018 },
		regions = { 676034, 676036 },
		triggers = { "VARIABLE_CHANGE_676022", "GADGET_CREATE_676023", "SELECT_OPTION_676028", "CHALLENGE_SUCCESS_676029", "LEAVE_REGION_676034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 676035 },
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
function condition_EVENT_VARIABLE_CHANGE_676022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if 1 ~= evt.param2 or 2 ~= evt.param1 or "puzzle_state" ~= evt.source_name then
	  return false
	end
	
	ScriptLib.PrintContextLog(context, "玩法成功 创建隐形操作台")
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_676022(context, evt)
	-- 将configid为 676031 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 676031, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_676023(context, evt)
	if defs.challenge_gadget ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_676023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group, defs.challenge_gadget, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_676028(context, evt)
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
function action_EVENT_SELECT_OPTION_676028(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_676029(context, evt)
	-- 将configid为 676031 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 676031, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_676034(context, evt)
	if evt.param1 ~=676034 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_676034(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

require "V2_3/WinterCampDevice"