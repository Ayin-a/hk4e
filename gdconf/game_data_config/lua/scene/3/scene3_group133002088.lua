-- 基础信息
local base_info = {
	group_id = 133002088
}

-- DEFS_MISCS
local defs = {
	--按想要的解谜顺序, 填子装置的config_id
	branch_gadgets = {88012, 88013, 88014}, 
	--主装置的config_id,可填一个或多个
	main_gadget = {88011}, 
	--重置倒计时秒数
	limit_time = {40}, 
	--这组解谜在哪个suit里
	puzzle_suit = 1,
	--当前group
	group = 133002088,
	--营地内龙血矿石组
	mineral = {88015,88016,88017},
	--挑战操作台
	challenge_gadget = 88018,
	--挑战时间
	time = 210,
	--目标点
	target_point = 88004,
	--性能优化
	optimiz_region = 88035,
	--Reminder提示用region
	banner_region =88036,
	--怪物列表
	monster_array = {88006,88020,88021,88031,88032,88033,88001,88003,88002,88019,88034},
	monster_min = 3,
	monster_max = 3,
	monster_count =11
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 88001, monster_id = 21020401, pos = { x = 1526.207, y = 272.605, z = -833.483 }, rot = { x = 0.000, y = 155.206, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 88002, monster_id = 21010902, pos = { x = 1521.024, y = 272.679, z = -834.700 }, rot = { x = 0.000, y = 126.624, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 88003, monster_id = 21010902, pos = { x = 1531.627, y = 272.147, z = -825.998 }, rot = { x = 0.000, y = 219.310, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 88006, monster_id = 21020601, pos = { x = 1527.021, y = 272.168, z = -844.508 }, rot = { x = 0.000, y = 31.147, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	-- 后续换回冰盾丘丘人
	{ config_id = 88019, monster_id = 20010802, pos = { x = 1533.107, y = 274.176, z = -835.611 }, rot = { x = 0.000, y = 345.601, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 88020, monster_id = 20010802, pos = { x = 1529.305, y = 272.305, z = -831.030 }, rot = { x = 0.000, y = 126.624, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 88021, monster_id = 20010802, pos = { x = 1534.791, y = 272.590, z = -840.878 }, rot = { x = 0.000, y = 345.601, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 88031, monster_id = 22010201, pos = { x = 1525.649, y = 272.791, z = -837.241 }, rot = { x = 0.000, y = 31.147, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007 }, climate_area_id = 1, area_id = 10 },
	-- 后续换回冰盾丘丘人
	{ config_id = 88032, monster_id = 20010802, pos = { x = 1523.680, y = 272.309, z = -828.475 }, rot = { x = 0.000, y = 126.624, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	-- 后续换回冰盾丘丘人
	{ config_id = 88033, monster_id = 20010802, pos = { x = 1514.933, y = 274.176, z = -836.603 }, rot = { x = 0.000, y = 93.673, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 },
	-- 后续换回冰盾丘丘人
	{ config_id = 88034, monster_id = 20010802, pos = { x = 1519.397, y = 274.176, z = -831.774 }, rot = { x = 0.000, y = 130.488, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1007, 1039 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 88004, gadget_id = 70360105, pos = { x = 1531.225, y = 272.282, z = -843.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 88011, gadget_id = 70220079, pos = { x = 1531.225, y = 272.282, z = -843.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 88012, gadget_id = 70220082, pos = { x = 1542.106, y = 270.864, z = -862.293 }, rot = { x = 0.000, y = 284.903, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 88013, gadget_id = 70220082, pos = { x = 1521.747, y = 271.771, z = -854.060 }, rot = { x = 0.000, y = 52.778, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 88014, gadget_id = 70220082, pos = { x = 1532.751, y = 272.216, z = -831.718 }, rot = { x = 0.000, y = 261.085, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 88015, gadget_id = 70590025, pos = { x = 1553.784, y = 271.129, z = -860.464 }, rot = { x = 0.000, y = 210.830, z = 0.000 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 88016, gadget_id = 70590025, pos = { x = 1517.330, y = 272.237, z = -859.641 }, rot = { x = 0.000, y = 203.980, z = 14.435 }, level = 30, area_id = 10 },
	-- 2.3雪山营地
	{ config_id = 88017, gadget_id = 70590025, pos = { x = 1518.524, y = 271.409, z = -825.117 }, rot = { x = 0.000, y = 26.418, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 88018, gadget_id = 70360324, pos = { x = 1531.225, y = 272.282, z = -843.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 88010, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1531.225, y = 272.282, z = -843.628 }, area_id = 10 },
	-- 性能优化圈
	{ config_id = 88035, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1531.225, y = 272.282, z = -843.628 }, area_id = 10 },
	-- reminder提示用
	{ config_id = 88036, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1531.356, y = 272.300, z = -843.349 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1088010, name = "LEAVE_REGION_88010", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_88010", action = "action_EVENT_LEAVE_REGION_88010", trigger_count = 0 },
	{ config_id = 1088022, name = "VARIABLE_CHANGE_88022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_88022", action = "action_EVENT_VARIABLE_CHANGE_88022", trigger_count = 0 },
	{ config_id = 1088023, name = "GADGET_CREATE_88023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_88023", action = "action_EVENT_GADGET_CREATE_88023", trigger_count = 0 },
	{ config_id = 1088028, name = "SELECT_OPTION_88028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_88028", action = "action_EVENT_SELECT_OPTION_88028", trigger_count = 0 },
	{ config_id = 1088029, name = "CHALLENGE_SUCCESS_88029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_88029" }
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
		{ config_id = 88005, gadget_id = 70310015, pos = { x = 1530.424, y = 271.466, z = -858.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
		{ config_id = 88007, gadget_id = 70310017, pos = { x = 1521.753, y = 272.414, z = -831.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
	},
	triggers = {
		{ config_id = 1088008, name = "GADGET_STATE_CHANGE_88008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88008", action = "", trigger_count = 0 },
		{ config_id = 1088009, name = "GADGET_STATE_CHANGE_88009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88009", action = "action_EVENT_GADGET_STATE_CHANGE_88009", trigger_count = 0 },
		{ config_id = 1088024, name = "GADGET_STATE_CHANGE_88024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88024", action = "action_EVENT_GADGET_STATE_CHANGE_88024" },
		{ config_id = 1088025, name = "GADGET_STATE_CHANGE_88025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88025", action = "action_EVENT_GADGET_STATE_CHANGE_88025" },
		{ config_id = 1088026, name = "GADGET_STATE_CHANGE_88026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88026", action = "action_EVENT_GADGET_STATE_CHANGE_88026" },
		{ config_id = 1088027, name = "VARIABLE_CHANGE_88027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_88027", action = "action_EVENT_VARIABLE_CHANGE_88027", trigger_count = 0 },
		{ config_id = 1088030, name = "CHALLENGE_FAIL_88030", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_88030", trigger_count = 0 }
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
		gadgets = { 88011, 88012, 88013, 88014, 88015, 88016, 88017, 88018 },
		regions = { 88010, 88036 },
		triggers = { "LEAVE_REGION_88010", "VARIABLE_CHANGE_88022", "GADGET_CREATE_88023", "SELECT_OPTION_88028", "CHALLENGE_SUCCESS_88029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 88035 },
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
function condition_EVENT_LEAVE_REGION_88010(context, evt)
	if evt.param1 ~=88010 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_88010(context, evt)
	-- 终止识别id为1的挑战，并判定失败
		ScriptLib.StopChallenge(context, 1, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_88022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if 1 ~= evt.param2 or 2 ~= evt.param1 or "puzzle_state" ~= evt.source_name then
	  return false
	end
	
	ScriptLib.PrintContextLog(context, "玩法成功 创建隐形操作台")
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88022(context, evt)
	-- 将configid为 88004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 88004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_88023(context, evt)
	if defs.challenge_gadget ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_88023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group, defs.challenge_gadget, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_88028(context, evt)
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
function action_EVENT_SELECT_OPTION_88028(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_88029(context, evt)
	-- 将configid为 88004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 88004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_3/WinterCampDevice"