-- 基础信息
local base_info = {
	group_id = 133002083
}

-- DEFS_MISCS
local defs = {
        --按想要的解谜顺序, 填子装置的config_id
        branch_gadgets = {83012, 83013, 83014}, 
        --主装置的config_id,可填一个或多个
        main_gadget = {83011}, 
        --重置倒计时秒数
        limit_time = {40}, 
        --这组解谜在哪个suit里
        puzzle_suit = 1,
        --当前group
        group = 133002083,
        --营地内龙血矿石组
        mineral = {83015,83016,83017},
        --挑战操作台
        challenge_gadget = 83018,
        --挑战时间
        time = 210,
        --目标点
        target_point = 83005,
        --性能优化
        optimiz_region = 83010,
        --Reminder提示用region
        banner_region =83036,
        --怪物列表
        monster_array = {83001,83002,83003,83004,83007,83019,83031,83032,83033,83034,83035},
        monster_min = 4,
        monster_max = 4,
        monster_count =11
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83001, monster_id = 20010801, pos = { x = 1334.053, y = 313.255, z = -820.846 }, rot = { x = 0.000, y = 261.209, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 83002, monster_id = 20010802, pos = { x = 1321.760, y = 315.504, z = -817.688 }, rot = { x = 0.000, y = 129.530, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 83003, monster_id = 20010801, pos = { x = 1325.154, y = 315.920, z = -824.564 }, rot = { x = 0.000, y = 11.245, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 83004, monster_id = 20010902, pos = { x = 1332.161, y = 313.857, z = -817.359 }, rot = { x = 0.000, y = 214.406, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 83007, monster_id = 20010901, pos = { x = 1326.053, y = 317.212, z = -831.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 83019, monster_id = 21011401, pos = { x = 1333.435, y = 314.670, z = -829.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 83031, monster_id = 20010802, pos = { x = 1339.301, y = 312.840, z = -823.164 }, rot = { x = 0.000, y = 267.625, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 83032, monster_id = 21011401, pos = { x = 1330.040, y = 316.003, z = -828.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	-- 后续换回冰盾丘丘人
	{ config_id = 83033, monster_id = 20010802, pos = { x = 1336.515, y = 313.605, z = -826.184 }, rot = { x = 0.000, y = 294.344, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 83034, monster_id = 21020601, pos = { x = 1325.816, y = 317.574, z = -832.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 83035, monster_id = 21020601, pos = { x = 1332.002, y = 315.171, z = -833.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 83005, gadget_id = 70360105, pos = { x = 1328.376, y = 316.616, z = -821.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 83011, gadget_id = 70220079, pos = { x = 1328.375, y = 314.608, z = -821.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 83012, gadget_id = 70220082, pos = { x = 1320.678, y = 315.256, z = -808.191 }, rot = { x = 0.000, y = 182.181, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 83013, gadget_id = 70220082, pos = { x = 1343.199, y = 314.429, z = -826.618 }, rot = { x = 0.000, y = 293.327, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 83014, gadget_id = 70220082, pos = { x = 1337.913, y = 316.823, z = -843.938 }, rot = { x = 0.000, y = 321.824, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 83015, gadget_id = 70590025, pos = { x = 1308.961, y = 319.515, z = -810.711 }, rot = { x = 6.610, y = 61.128, z = 341.136 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 83016, gadget_id = 70590025, pos = { x = 1349.387, y = 315.113, z = -821.928 }, rot = { x = 3.762, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 83017, gadget_id = 70590025, pos = { x = 1337.636, y = 315.544, z = -861.388 }, rot = { x = 342.841, y = 355.011, z = 10.943 }, level = 30, area_id = 10 },
	{ config_id = 83018, gadget_id = 70360324, pos = { x = 1328.375, y = 314.608, z = -821.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 83009, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1335.253, y = 312.837, z = -820.531 }, area_id = 10 },
	-- 性能优化圈
	{ config_id = 83010, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1335.253, y = 312.837, z = -820.531 }, area_id = 10 },
	-- Reminder提示用
	{ config_id = 83036, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1329.825, y = 314.284, z = -824.877 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1083009, name = "LEAVE_REGION_83009", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_83009", action = "action_EVENT_LEAVE_REGION_83009", trigger_count = 0 },
	{ config_id = 1083022, name = "VARIABLE_CHANGE_83022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_83022", action = "action_EVENT_VARIABLE_CHANGE_83022", trigger_count = 0 },
	{ config_id = 1083023, name = "GADGET_CREATE_83023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_83023", action = "action_EVENT_GADGET_CREATE_83023", trigger_count = 0 },
	{ config_id = 1083028, name = "SELECT_OPTION_83028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_83028", action = "action_EVENT_SELECT_OPTION_83028", trigger_count = 0 },
	{ config_id = 1083029, name = "CHALLENGE_SUCCESS_83029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_83029" }
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
		{ config_id = 83020, gadget_id = 70310015, pos = { x = 1347.446, y = 310.286, z = -811.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 83021, gadget_id = 70310017, pos = { x = 1331.180, y = 316.161, z = -841.463 }, rot = { x = 0.000, y = 28.533, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
	},
	triggers = {
		{ config_id = 1083006, name = "GADGET_STATE_CHANGE_83006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83006", action = "", trigger_count = 0 },
		{ config_id = 1083008, name = "GADGET_STATE_CHANGE_83008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83008", action = "action_EVENT_GADGET_STATE_CHANGE_83008", trigger_count = 0 },
		{ config_id = 1083024, name = "GADGET_STATE_CHANGE_83024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83024", action = "action_EVENT_GADGET_STATE_CHANGE_83024" },
		{ config_id = 1083025, name = "GADGET_STATE_CHANGE_83025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83025", action = "action_EVENT_GADGET_STATE_CHANGE_83025" },
		{ config_id = 1083026, name = "GADGET_STATE_CHANGE_83026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83026", action = "action_EVENT_GADGET_STATE_CHANGE_83026" },
		{ config_id = 1083027, name = "VARIABLE_CHANGE_83027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_83027", action = "action_EVENT_VARIABLE_CHANGE_83027", trigger_count = 0 },
		{ config_id = 1083030, name = "CHALLENGE_FAIL_83030", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_83030", trigger_count = 0 }
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
		gadgets = { 83011, 83012, 83013, 83014, 83015, 83016, 83017, 83018 },
		regions = { 83009, 83036 },
		triggers = { "LEAVE_REGION_83009", "VARIABLE_CHANGE_83022", "GADGET_CREATE_83023", "SELECT_OPTION_83028", "CHALLENGE_SUCCESS_83029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 83010 },
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
function condition_EVENT_LEAVE_REGION_83009(context, evt)
	if evt.param1 ~=83009 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_83009(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_83022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if 1 ~= evt.param2 or 2 ~= evt.param1 or "puzzle_state" ~= evt.source_name then
	  return false
	end
	
	ScriptLib.PrintContextLog(context, "玩法成功 创建隐形操作台")
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_83022(context, evt)
	-- 将configid为 83005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 83005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_83023(context, evt)
	if defs.challenge_gadget ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_83023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group, defs.challenge_gadget, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_83028(context, evt)
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
function action_EVENT_SELECT_OPTION_83028(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_83029(context, evt)
	-- 将configid为 83005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 83005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_3/WinterCampDevice"