-- 基础信息
local base_info = {
	group_id = 133008675
}

-- DEFS_MISCS
local defs = {
	--按想要的解谜顺序, 填子装置的config_id
	branch_gadgets = {675012, 675013, 675014}, 
	--主装置的config_id,可填一个或多个
	main_gadget = {675011}, 
	--重置倒计时秒数
	limit_time = {25}, 
	--这组解谜在哪个suit里
	puzzle_suit = 1,
	--当前group
	group = 133008675,
	--营地内龙血矿石组
	mineral = {675015,675016,675017},
	--挑战操作台
	challenge_gadget = 675018,
	--怪物数量
	monster_count = 10,
	--Reminder提示用region
	banner_region =675038,
	--挑战时间
	time = 210,
	--怪物列表
	monster_array = {675001,675002,675003,675004,675005},
	monster_min = 4,
	monster_max = 4,
	monster_count = 10,
	target_point = 675019,
	optimiz_region=675033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 675001, monster_id = 21020401, pos = { x = 1409.753, y = 271.857, z = -494.094 }, rot = { x = 0.000, y = 260.862, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 675002, monster_id = 21011401, pos = { x = 1406.893, y = 272.580, z = -488.236 }, rot = { x = 0.000, y = 231.124, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 675003, monster_id = 20010802, pos = { x = 1395.482, y = 271.359, z = -493.541 }, rot = { x = 0.000, y = 94.102, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 675004, monster_id = 20010901, pos = { x = 1402.138, y = 272.065, z = -489.801 }, rot = { x = 0.000, y = 187.561, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 675005, monster_id = 20010802, pos = { x = 1399.563, y = 270.918, z = -501.205 }, rot = { x = 0.000, y = 14.178, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 675011, gadget_id = 70220079, pos = { x = 1402.861, y = 271.237, z = -496.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 675012, gadget_id = 70220082, pos = { x = 1395.152, y = 272.557, z = -486.268 }, rot = { x = 0.000, y = 92.081, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 675013, gadget_id = 70220082, pos = { x = 1390.369, y = 270.988, z = -501.995 }, rot = { x = 0.000, y = 40.060, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 675014, gadget_id = 70220082, pos = { x = 1415.663, y = 271.190, z = -501.640 }, rot = { x = 0.000, y = 299.295, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 675015, gadget_id = 70590025, pos = { x = 1406.021, y = 290.870, z = -460.735 }, rot = { x = 45.856, y = 187.040, z = 0.000 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 675016, gadget_id = 70590025, pos = { x = 1429.343, y = 267.523, z = -513.480 }, rot = { x = 0.000, y = 156.911, z = 0.000 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 675017, gadget_id = 70590025, pos = { x = 1387.339, y = 270.320, z = -517.315 }, rot = { x = 340.416, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 675018, gadget_id = 70360324, pos = { x = 1402.861, y = 271.237, z = -496.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 675019, gadget_id = 70360105, pos = { x = 1402.861, y = 272.188, z = -496.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 675031, gadget_id = 70620001, pos = { x = 1390.352, y = 268.041, z = -502.184 }, rot = { x = 0.000, y = 29.021, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	-- 性能优化圈
	{ config_id = 675033, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1402.861, y = 271.237, z = -496.835 }, area_id = 10 },
	{ config_id = 675037, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1402.861, y = 271.237, z = -496.835 }, area_id = 10 },
	-- reminder提示用
	{ config_id = 675038, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1403.091, y = 273.222, z = -496.775 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1675022, name = "VARIABLE_CHANGE_675022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_675022", action = "action_EVENT_VARIABLE_CHANGE_675022", trigger_count = 0 },
	{ config_id = 1675023, name = "GADGET_CREATE_675023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_675023", action = "action_EVENT_GADGET_CREATE_675023", trigger_count = 0 },
	{ config_id = 1675028, name = "SELECT_OPTION_675028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_675028", action = "action_EVENT_SELECT_OPTION_675028", trigger_count = 0 },
	{ config_id = 1675029, name = "CHALLENGE_SUCCESS_675029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_675029" },
	{ config_id = 1675032, name = "GADGET_STATE_CHANGE_675032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_675032", action = "action_EVENT_GADGET_STATE_CHANGE_675032" },
	{ config_id = 1675037, name = "LEAVE_REGION_675037", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_675037", action = "action_EVENT_LEAVE_REGION_675037", trigger_count = 0 }
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
	monsters = {
		{ config_id = 675006, monster_id = 21011401, pos = { x = 1396.070, y = 271.277, z = -495.353 }, rot = { x = 0.000, y = 84.483, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
		{ config_id = 675007, monster_id = 21011401, pos = { x = 1406.573, y = 271.081, z = -499.537 }, rot = { x = 0.000, y = 288.087, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
		{ config_id = 675008, monster_id = 21011401, pos = { x = 1407.466, y = 271.639, z = -494.188 }, rot = { x = 0.000, y = 286.810, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
		{ config_id = 675009, monster_id = 21011401, pos = { x = 1397.879, y = 271.392, z = -492.493 }, rot = { x = 0.000, y = 114.695, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
		{ config_id = 675010, monster_id = 21011401, pos = { x = 1403.988, y = 270.905, z = -499.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
	},
	gadgets = {
		{ config_id = 675020, gadget_id = 70310015, pos = { x = 1390.391, y = 281.290, z = -514.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 675021, gadget_id = 70310017, pos = { x = 1408.217, y = 273.026, z = -511.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 675034, gadget_id = 70310017, pos = { x = 1420.748, y = 272.065, z = -491.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
	},
	triggers = {
		{ config_id = 1675024, name = "GADGET_STATE_CHANGE_675024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_675024", action = "action_EVENT_GADGET_STATE_CHANGE_675024" },
		{ config_id = 1675025, name = "GADGET_STATE_CHANGE_675025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_675025", action = "action_EVENT_GADGET_STATE_CHANGE_675025" },
		{ config_id = 1675026, name = "GADGET_STATE_CHANGE_675026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_675026", action = "action_EVENT_GADGET_STATE_CHANGE_675026" },
		{ config_id = 1675027, name = "VARIABLE_CHANGE_675027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_675027", action = "action_EVENT_VARIABLE_CHANGE_675027", trigger_count = 0 },
		{ config_id = 1675030, name = "CHALLENGE_FAIL_675030", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_675030", trigger_count = 0 },
		{ config_id = 1675035, name = "GADGET_STATE_CHANGE_675035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_675035", action = "", trigger_count = 0 },
		{ config_id = 1675036, name = "GADGET_STATE_CHANGE_675036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_675036", action = "action_EVENT_GADGET_STATE_CHANGE_675036", trigger_count = 0 }
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
		gadgets = { 675011, 675012, 675013, 675014, 675015, 675016, 675017, 675018, 675031 },
		regions = { 675037, 675038 },
		triggers = { "VARIABLE_CHANGE_675022", "GADGET_CREATE_675023", "SELECT_OPTION_675028", "CHALLENGE_SUCCESS_675029", "GADGET_STATE_CHANGE_675032", "LEAVE_REGION_675037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 675033 },
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
function condition_EVENT_VARIABLE_CHANGE_675022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if 1 ~= evt.param2 or 2 ~= evt.param1 or "puzzle_state" ~= evt.source_name then
	  return false
	end
	
	ScriptLib.PrintContextLog(context, "玩法成功 创建隐形操作台")
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_675022(context, evt)
	-- 将configid为 675019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 675019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_675023(context, evt)
	if defs.challenge_gadget ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_675023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group, defs.challenge_gadget, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_675028(context, evt)
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
function action_EVENT_SELECT_OPTION_675028(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_675029(context, evt)
	-- 将configid为 675019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 675019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_675032(context, evt)
	if 675013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_675032(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008675, EntityType.GADGET, 675031 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_675037(context, evt)
	if evt.param1 ~=675037 then return false end
	return true
	
end

-- 触发操作
function action_EVENT_LEAVE_REGION_675037(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

require "V2_3/WinterCampDevice"