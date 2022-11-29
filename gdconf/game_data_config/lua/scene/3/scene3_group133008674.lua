-- 基础信息
local base_info = {
	group_id = 133008674
}

-- DEFS_MISCS
local defs = {
    --按想要的解谜顺序, 填子装置的config_id
    branch_gadgets = {674012, 674013, 674014}, 
    --主装置的config_id,可填一个或多个
    main_gadget = {674011}, 
    --重置倒计时秒数
    limit_time = {40}, 
    --这组解谜在哪个suit里
    puzzle_suit = 1,
    --当前group
    group = 133008674,
    --营地内龙血矿石组
    mineral = {674015,674016,674017},
    --挑战操作台
    challenge_gadget = 674018,
    --怪物数量
    monster_count = 20,
    --挑战时间
    time = 210,
    --Reminder提示用region
    banner_region =674049,
    --怪物列表
    monster_array = {674001,674002,674003,674004,674005,674006,674007,674008,674009,674010,674035,674036,674040,674041,674042,674043,674037,674038,674039,674047},
    monster_min = 5,
    monster_max = 5,
    monster_count =20,
    target_point = 674033,
    optimiz_region = 674048,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 674001, monster_id = 21010901, pos = { x = 1290.615, y = 272.953, z = -1219.344 }, rot = { x = 0.000, y = 289.211, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674002, monster_id = 21010901, pos = { x = 1292.140, y = 273.237, z = -1214.546 }, rot = { x = 0.000, y = 274.389, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674003, monster_id = 21010901, pos = { x = 1290.035, y = 272.709, z = -1211.451 }, rot = { x = 0.000, y = 236.501, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674004, monster_id = 20010802, pos = { x = 1288.175, y = 272.215, z = -1211.627 }, rot = { x = 0.000, y = 199.907, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674005, monster_id = 21010901, pos = { x = 1282.754, y = 273.349, z = -1221.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674006, monster_id = 21011401, pos = { x = 1278.213, y = 272.680, z = -1217.488 }, rot = { x = 0.000, y = 84.483, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674007, monster_id = 21011401, pos = { x = 1288.716, y = 272.946, z = -1221.672 }, rot = { x = 0.000, y = 288.087, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674008, monster_id = 20010802, pos = { x = 1284.952, y = 273.034, z = -1222.734 }, rot = { x = 0.000, y = 336.404, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674009, monster_id = 21011401, pos = { x = 1280.022, y = 272.651, z = -1214.628 }, rot = { x = 0.000, y = 114.695, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674010, monster_id = 21011401, pos = { x = 1286.131, y = 272.897, z = -1222.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674035, monster_id = 20010802, pos = { x = 1281.333, y = 273.263, z = -1222.018 }, rot = { x = 0.000, y = 26.042, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674036, monster_id = 21011401, pos = { x = 1279.321, y = 272.903, z = -1222.018 }, rot = { x = 0.000, y = 34.803, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674037, monster_id = 21030501, pos = { x = 1290.549, y = 272.981, z = -1215.344 }, rot = { x = 0.000, y = 258.179, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674038, monster_id = 21010902, pos = { x = 1291.713, y = 272.960, z = -1218.457 }, rot = { x = 0.000, y = 258.179, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674039, monster_id = 20010802, pos = { x = 1292.981, y = 273.277, z = -1214.909 }, rot = { x = 0.000, y = 258.179, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674040, monster_id = 21030501, pos = { x = 1284.836, y = 271.808, z = -1209.168 }, rot = { x = 0.000, y = 160.465, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674041, monster_id = 21010902, pos = { x = 1287.443, y = 271.774, z = -1209.479 }, rot = { x = 0.000, y = 160.465, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674042, monster_id = 20010802, pos = { x = 1282.493, y = 272.289, z = -1209.479 }, rot = { x = 0.000, y = 160.465, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674043, monster_id = 21010902, pos = { x = 1280.475, y = 272.730, z = -1209.479 }, rot = { x = 0.000, y = 160.465, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 674047, monster_id = 21010902, pos = { x = 1291.240, y = 273.081, z = -1212.922 }, rot = { x = 0.000, y = 258.179, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 674011, gadget_id = 70220079, pos = { x = 1284.704, y = 272.385, z = -1217.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 674012, gadget_id = 70220082, pos = { x = 1273.183, y = 272.812, z = -1230.888 }, rot = { x = 0.000, y = 27.382, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 674013, gadget_id = 70220082, pos = { x = 1279.611, y = 275.719, z = -1186.820 }, rot = { x = 0.000, y = 173.157, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 674014, gadget_id = 70220082, pos = { x = 1300.177, y = 272.817, z = -1216.836 }, rot = { x = 0.000, y = 261.562, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 674015, gadget_id = 70590025, pos = { x = 1305.259, y = 273.821, z = -1227.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 674016, gadget_id = 70590025, pos = { x = 1264.682, y = 273.266, z = -1212.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 674017, gadget_id = 70590025, pos = { x = 1259.272, y = 273.445, z = -1194.012 }, rot = { x = 340.416, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 674018, gadget_id = 70360324, pos = { x = 1284.809, y = 272.456, z = -1217.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 674019, gadget_id = 70310015, pos = { x = 1303.203, y = 273.382, z = -1228.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 674031, gadget_id = 70310015, pos = { x = 1264.250, y = 273.374, z = -1214.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 674032, gadget_id = 70310015, pos = { x = 1261.798, y = 272.762, z = -1192.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 674033, gadget_id = 70360105, pos = { x = 1284.787, y = 272.382, z = -1217.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 674046, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1283.771, y = 272.238, z = -1212.122 }, area_id = 10 },
	-- 性能优化圈
	{ config_id = 674048, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1284.871, y = 272.481, z = -1217.074 }, area_id = 10 },
	-- reminder提示用
	{ config_id = 674049, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1283.771, y = 272.238, z = -1212.122 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1674022, name = "VARIABLE_CHANGE_674022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_674022", action = "action_EVENT_VARIABLE_CHANGE_674022", trigger_count = 0 },
	{ config_id = 1674023, name = "GADGET_CREATE_674023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_674023", action = "action_EVENT_GADGET_CREATE_674023", trigger_count = 0 },
	{ config_id = 1674028, name = "SELECT_OPTION_674028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_674028", action = "action_EVENT_SELECT_OPTION_674028", trigger_count = 0 },
	{ config_id = 1674029, name = "CHALLENGE_SUCCESS_674029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_674029" },
	{ config_id = 1674046, name = "LEAVE_REGION_674046", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_674046", action = "action_EVENT_LEAVE_REGION_674046", trigger_count = 0 }
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
		{ config_id = 674020, gadget_id = 70310017, pos = { x = 1272.575, y = 273.110, z = -1212.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 674021, gadget_id = 70310017, pos = { x = 1292.294, y = 272.280, z = -1208.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 674034, gadget_id = 70360105, pos = { x = 1293.958, y = 272.382, z = -1221.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
	},
	triggers = {
		{ config_id = 1674024, name = "GADGET_STATE_CHANGE_674024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674024", action = "action_EVENT_GADGET_STATE_CHANGE_674024" },
		{ config_id = 1674025, name = "GADGET_STATE_CHANGE_674025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674025", action = "action_EVENT_GADGET_STATE_CHANGE_674025" },
		{ config_id = 1674026, name = "GADGET_STATE_CHANGE_674026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674026", action = "action_EVENT_GADGET_STATE_CHANGE_674026" },
		{ config_id = 1674027, name = "VARIABLE_CHANGE_674027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_674027", action = "action_EVENT_VARIABLE_CHANGE_674027", trigger_count = 0 },
		{ config_id = 1674030, name = "CHALLENGE_FAIL_674030", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_674030", trigger_count = 0 },
		{ config_id = 1674044, name = "GADGET_STATE_CHANGE_674044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674044", action = "", trigger_count = 0 },
		{ config_id = 1674045, name = "GADGET_STATE_CHANGE_674045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_674045", action = "action_EVENT_GADGET_STATE_CHANGE_674045", trigger_count = 0 }
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
		gadgets = { 674011, 674012, 674013, 674014, 674015, 674016, 674017, 674018, 674019, 674031, 674032 },
		regions = { 674046, 674049 },
		triggers = { "VARIABLE_CHANGE_674022", "GADGET_CREATE_674023", "SELECT_OPTION_674028", "CHALLENGE_SUCCESS_674029", "LEAVE_REGION_674046" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 674048 },
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
function condition_EVENT_VARIABLE_CHANGE_674022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if 1 ~= evt.param2 or 2 ~= evt.param1 or "puzzle_state" ~= evt.source_name then
	  return false
	end
	
	ScriptLib.PrintContextLog(context, "玩法成功 创建隐形操作台")
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_674022(context, evt)
	-- 将configid为 674033 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 674033, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_674023(context, evt)
	if defs.challenge_gadget ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_674023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group, defs.challenge_gadget, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_674028(context, evt)
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
function action_EVENT_SELECT_OPTION_674028(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_674029(context, evt)
	-- 将configid为 674033 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 674033, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_674046(context, evt)
	if evt.param1 ~=674046 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_674046(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

require "V2_3/WinterCampDevice"