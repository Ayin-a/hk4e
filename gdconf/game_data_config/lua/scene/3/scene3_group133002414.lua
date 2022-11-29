-- 基础信息
local base_info = {
	group_id = 133002414
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 414001, monster_id = 21011401, pos = { x = 1475.757, y = 268.656, z = -759.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 414002, monster_id = 21011401, pos = { x = 1473.930, y = 269.250, z = -759.284 }, rot = { x = 0.000, y = 21.440, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 414003, monster_id = 21011401, pos = { x = 1475.060, y = 268.982, z = -757.020 }, rot = { x = 0.000, y = 6.032, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 414004, monster_id = 21011301, pos = { x = 1472.115, y = 268.958, z = -734.824 }, rot = { x = 0.000, y = 135.557, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 414005, monster_id = 21011301, pos = { x = 1470.287, y = 269.170, z = -734.129 }, rot = { x = 0.000, y = 156.997, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 414006, monster_id = 21020601, pos = { x = 1471.417, y = 269.027, z = -731.862 }, rot = { x = 0.000, y = 141.590, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 414007, gadget_id = 70360128, pos = { x = 1481.430, y = 268.464, z = -741.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 10 },
	{ config_id = 414010, gadget_id = 70360105, pos = { x = 1481.348, y = 268.481, z = -742.853 }, rot = { x = 3.249, y = 359.836, z = 354.223 }, level = 32, area_id = 10 },
	{ config_id = 414011, gadget_id = 70310017, pos = { x = 1473.162, y = 269.351, z = -747.525 }, rot = { x = 1.788, y = 359.967, z = 355.534 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 414012, gadget_id = 70310017, pos = { x = 1487.675, y = 267.646, z = -747.422 }, rot = { x = 353.693, y = 32.018, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 414013, gadget_id = 70310017, pos = { x = 1479.169, y = 268.623, z = -735.080 }, rot = { x = 353.579, y = 32.016, z = 4.237 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 414014, gadget_id = 70310021, pos = { x = 1473.162, y = 269.328, z = -747.525 }, rot = { x = 1.788, y = 359.967, z = 355.534 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 414015, gadget_id = 70310021, pos = { x = 1487.675, y = 267.646, z = -747.422 }, rot = { x = 353.693, y = 32.018, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 414016, gadget_id = 70310021, pos = { x = 1479.169, y = 268.623, z = -735.080 }, rot = { x = 353.579, y = 32.016, z = 4.237 }, level = 32, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1414008, name = "GADGET_STATE_CHANGE_414008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_414008", action = "action_EVENT_GADGET_STATE_CHANGE_414008" },
	{ config_id = 1414019, name = "GADGET_CREATE_414019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_414019", action = "action_EVENT_GADGET_CREATE_414019", trigger_count = 0 },
	{ config_id = 1414023, name = "SELECT_OPTION_414023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_414023", action = "action_EVENT_SELECT_OPTION_414023", trigger_count = 0 },
	{ config_id = 1414028, name = "ANY_GADGET_DIE_414028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_414028", action = "action_EVENT_ANY_GADGET_DIE_414028" },
	{ config_id = 1414029, name = "ANY_GADGET_DIE_414029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_414029", action = "action_EVENT_ANY_GADGET_DIE_414029" },
	{ config_id = 1414030, name = "ANY_GADGET_DIE_414030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_414030", action = "action_EVENT_ANY_GADGET_DIE_414030" },
	{ config_id = 1414031, name = "ANY_MONSTER_DIE_414031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_414031", action = "action_EVENT_ANY_MONSTER_DIE_414031" },
	{ config_id = 1414032, name = "CHALLENGE_SUCCESS_414032", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_414032" },
	{ config_id = 1414033, name = "CHALLENGE_FAIL_414033", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_414033", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { 414007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_414008", "GADGET_CREATE_414019", "SELECT_OPTION_414023", "CHALLENGE_SUCCESS_414032", "CHALLENGE_FAIL_414033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 414001, 414002, 414003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_414031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 414010, 414011, 414012, 414013, 414014, 414015, 414016 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_414028", "ANY_GADGET_DIE_414029", "ANY_GADGET_DIE_414030" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 增援Suite,
		monsters = { 414004, 414005, 414006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_414008(context, evt)
	-- 检测config_id为414007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 414007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_414008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121110") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_414019(context, evt)
	if 414007 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_414019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002414, 414007, {37}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_414023(context, evt)
	-- 判断是gadgetid 414007 option_id 37
	if 414007 ~= evt.param1 then
		return false	
	end
	
	if 37 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_414023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002414, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002414, 4)
	
	-- 删除指定group： 133002414 ；指定config：414007；物件身上指定option：37；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133002414, 414007, 37) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 414007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 414007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为666（该挑战的识别id),挑战内容为62的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 62, 133002414, 6, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_414028(context, evt)
	if 414014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_414028(context, evt)
	-- 将configid为 414011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 414011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_414029(context, evt)
	if 414015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_414029(context, evt)
	-- 将configid为 414012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 414012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_414030(context, evt)
	if 414016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_414030(context, evt)
	-- 将configid为 414013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 414013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_414031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133002414) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_414031(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002414, 5)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1480,y=268,z=-736}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_414032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121111") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 414010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 414010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_414033(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002414, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121177") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end