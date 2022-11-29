-- 基础信息
local base_info = {
	group_id = 133302363
}

-- Trigger变量
local defs = {
	finishquest = "7304931_fin",
	group_reward = 133302365,
	keyNum = 2,
	defaultNum = 1
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[363002] = { config_id = 363002, monster_id = 25210203, pos = { x = -89.501, y = 251.893, z = 2886.829 }, rot = { x = 0.000, y = 284.479, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 20 },
	[363003] = { config_id = 363003, monster_id = 25210201, pos = { x = -84.762, y = 253.813, z = 2918.091 }, rot = { x = 0.000, y = 162.464, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 20 },
	[363004] = { config_id = 363004, monster_id = 25210101, pos = { x = -91.047, y = 251.043, z = 2907.167 }, rot = { x = 0.000, y = 118.341, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 20 },
	[363005] = { config_id = 363005, monster_id = 25210501, pos = { x = -67.969, y = 257.333, z = 2905.920 }, rot = { x = 0.000, y = 180.651, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 20 },
	[363006] = { config_id = 363006, monster_id = 25210502, pos = { x = -90.312, y = 251.622, z = 2897.624 }, rot = { x = 0.000, y = 44.363, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 20 },
	[363007] = { config_id = 363007, monster_id = 25210303, pos = { x = -91.627, y = 250.953, z = 2908.640 }, rot = { x = 0.000, y = 109.423, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 20 },
	[363008] = { config_id = 363008, monster_id = 25310201, pos = { x = -93.355, y = 250.953, z = 2910.053 }, rot = { x = 0.000, y = 109.423, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 1, area_id = 20 },
	[363016] = { config_id = 363016, monster_id = 25210303, pos = { x = -91.090, y = 251.010, z = 2910.549 }, rot = { x = 0.000, y = 109.423, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 20 },
	[363017] = { config_id = 363017, monster_id = 25210502, pos = { x = -84.391, y = 251.507, z = 2914.663 }, rot = { x = 0.000, y = 210.223, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 20 },
	[363019] = { config_id = 363019, monster_id = 25310201, pos = { x = -76.631, y = 251.793, z = 2903.661 }, rot = { x = 0.000, y = 280.582, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 1, area_id = 20 },
	[363031] = { config_id = 363031, monster_id = 25210501, pos = { x = -84.819, y = 251.862, z = 2886.616 }, rot = { x = 0.000, y = 284.479, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[363011] = { config_id = 363011, gadget_id = 70330244, pos = { x = -83.584, y = 251.379, z = 2905.070 }, rot = { x = 0.000, y = 283.747, z = 0.000 }, level = 30, persistent = true, logic_state = {"SGV_WellUnlock"}, area_id = 20 },
	[363012] = { config_id = 363012, gadget_id = 70330245, pos = { x = -69.124, y = 259.205, z = 2901.596 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 20 },
	[363013] = { config_id = 363013, gadget_id = 70330245, pos = { x = -93.231, y = 253.247, z = 2889.932 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 20 },
	[363015] = { config_id = 363015, gadget_id = 70360286, pos = { x = -83.579, y = 252.439, z = 2905.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 770 } }, area_id = 20 }
}

-- 区域
regions = {
	-- 靠近机器开启挑战
	[363024] = { config_id = 363024, shape = RegionShape.SPHERE, radius = 5, pos = { x = -83.584, y = 251.379, z = 2905.070 }, area_id = 20 },
	-- 离开区域挑战失败
	[363029] = { config_id = 363029, shape = RegionShape.SPHERE, radius = 50, pos = { x = -83.584, y = 251.379, z = 2905.070 }, area_id = 20 },
	-- 出界挑战失败
	[363034] = { config_id = 363034, shape = RegionShape.SPHERE, radius = 50, pos = { x = -84.121, y = 252.723, z = 2905.258 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 子挑战1成功挂按钮
	{ config_id = 1363009, name = "CHALLENGE_SUCCESS_363009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_363009" },
	-- 刷第一波
	{ config_id = 1363010, name = "LUA_NOTIFY_363010", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase01", condition = "", action = "action_EVENT_LUA_NOTIFY_363010" },
	-- 刷第二波
	{ config_id = 1363014, name = "LUA_NOTIFY_363014", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase02", condition = "", action = "action_EVENT_LUA_NOTIFY_363014" },
	-- 刷第三波
	{ config_id = 1363018, name = "LUA_NOTIFY_363018", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase03", condition = "", action = "action_EVENT_LUA_NOTIFY_363018" },
	{ config_id = 1363020, name = "ANY_MONSTER_DIE_363020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363020", action = "action_EVENT_ANY_MONSTER_DIE_363020" },
	-- 挑战失败延迟刷新group
	{ config_id = 1363021, name = "TIME_AXIS_PASS_363021", event = EventType.EVENT_TIME_AXIS_PASS, source = "failDelay", condition = "condition_EVENT_TIME_AXIS_PASS_363021", action = "action_EVENT_TIME_AXIS_PASS_363021" },
	-- 任务通知和刷宝箱保底
	{ config_id = 1363022, name = "GROUP_LOAD_363022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_363022", action = "action_EVENT_GROUP_LOAD_363022", trigger_count = 0 },
	-- 靠近机器开启挑战
	{ config_id = 1363024, name = "ENTER_REGION_363024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_363024", action = "action_EVENT_ENTER_REGION_363024" },
	-- 钥匙检测
	{ config_id = 1363025, name = "ANY_GADGET_DIE_363025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363025", action = "action_EVENT_ANY_GADGET_DIE_363025", trigger_count = 0, tag = "233" },
	-- 挑战成功切到suite3
	{ config_id = 1363026, name = "CHALLENGE_SUCCESS_363026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_363026" },
	-- 挑战失败初始化
	{ config_id = 1363027, name = "CHALLENGE_FAIL_363027", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_363027" },
	-- 点操作台初始化怪物潮
	{ config_id = 1363028, name = "SELECT_OPTION_363028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_363028", action = "action_EVENT_SELECT_OPTION_363028", tag = "232" },
	-- 离开区域挑战失败
	{ config_id = 1363029, name = "LEAVE_REGION_363029", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_363029", action = "action_EVENT_LEAVE_REGION_363029", trigger_count = 0 },
	-- 挑战成功刷宝箱，通知任务进度由另一个挑战成功发送
	{ config_id = 1363030, name = "CHALLENGE_SUCCESS_363030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_363030" },
	-- 挑战失败重置group
	{ config_id = 1363032, name = "CHALLENGE_FAIL_363032", event = EventType.EVENT_CHALLENGE_FAIL, source = "458", condition = "", action = "action_EVENT_CHALLENGE_FAIL_363032" },
	-- 吸收器转203则挑战成功
	{ config_id = 1363033, name = "GADGET_STATE_CHANGE_363033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_363033", action = "", trigger_count = 0, tag = "234" },
	-- 出界挑战失败
	{ config_id = 1363034, name = "LEAVE_REGION_363034", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_363034", action = "action_EVENT_LEAVE_REGION_363034" },
	-- 子挑战1成功开启子挑战2
	{ config_id = 1363035, name = "CHALLENGE_SUCCESS_363035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_363035" },
	-- 点操作台启动挑战
	{ config_id = 1363036, name = "SELECT_OPTION_363036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_363036", action = "action_EVENT_SELECT_OPTION_363036" },
	-- 挑战成功通知子任务完成，改编号去defs里改
	{ config_id = 1363037, name = "CHALLENGE_SUCCESS_363037", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_363037" },
	{ config_id = 1363038, name = "LUA_NOTIFY_363038", event = EventType.EVENT_LUA_NOTIFY, source = "ShowReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_363038", trigger_count = 0 },
	{ config_id = 1363039, name = "LUA_NOTIFY_363039", event = EventType.EVENT_LUA_NOTIFY, source = "CloseReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_363039", trigger_count = 0 },
	-- 拿钥匙1刷suite5
	{ config_id = 1363040, name = "ANY_GADGET_DIE_363040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363040", action = "action_EVENT_ANY_GADGET_DIE_363040" },
	-- 拿钥匙2刷suit8
	{ config_id = 1363041, name = "ANY_GADGET_DIE_363041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363041", action = "action_EVENT_ANY_GADGET_DIE_363041" },
	-- 挑战失败初始化sgv
	{ config_id = 1363042, name = "CHALLENGE_FAIL_363042", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_363042" },
	-- 重置sgv
	{ config_id = 1363043, name = "GROUP_LOAD_363043", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_363043", trigger_count = 0 },
	-- 断线初始化
	{ config_id = 1363044, name = "GROUP_LOAD_363044", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_363044", trigger_count = 0 },
	-- 挑战失败重置group
	{ config_id = 1363045, name = "GROUP_LOAD_363045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_363045", action = "action_EVENT_GROUP_LOAD_363045", trigger_count = 0 },
	{ config_id = 1363046, name = "ANY_MONSTER_DIE_363046", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363046", action = "action_EVENT_ANY_MONSTER_DIE_363046" },
	{ config_id = 1363047, name = "ANY_MONSTER_DIE_363047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363047", action = "action_EVENT_ANY_MONSTER_DIE_363047" },
	{ config_id = 1363048, name = "ANY_MONSTER_DIE_363048", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363048", action = "action_EVENT_ANY_MONSTER_DIE_363048" },
	-- 挑战失败重置门
	{ config_id = 1363050, name = "CHALLENGE_FAIL_363050", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_363050" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_WellUnlock", value = 1, no_refresh = false, variable_type = 1 },
	{ config_id = 2, name = "success", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 363001, monster_id = 25310301, pos = { x = -97.250, y = 250.861, z = 2911.370 }, rot = { x = 0.000, y = 104.920, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, area_id = 20 }
	},
	triggers = {
		{ config_id = 1363023, name = "GROUP_LOAD_363023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_363023", action = "action_EVENT_GROUP_LOAD_363023" }
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
	end_suite = 3,
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
		gadgets = { 363011 },
		regions = { 363024, 363029 },
		triggers = { "CHALLENGE_SUCCESS_363009", "TIME_AXIS_PASS_363021", "GROUP_LOAD_363022", "ENTER_REGION_363024", "CHALLENGE_SUCCESS_363026", "CHALLENGE_FAIL_363027", "LEAVE_REGION_363029", "CHALLENGE_SUCCESS_363035", "CHALLENGE_FAIL_363042", "GROUP_LOAD_363043", "GROUP_LOAD_363044", "CHALLENGE_FAIL_363050" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 363012, 363013 },
		regions = { 363034 },
		triggers = { "LUA_NOTIFY_363010", "LUA_NOTIFY_363014", "LUA_NOTIFY_363018", "ANY_GADGET_DIE_363025", "SELECT_OPTION_363028", "CHALLENGE_SUCCESS_363030", "CHALLENGE_FAIL_363032", "GADGET_STATE_CHANGE_363033", "LEAVE_REGION_363034", "SELECT_OPTION_363036", "CHALLENGE_SUCCESS_363037", "LUA_NOTIFY_363038", "LUA_NOTIFY_363039", "ANY_GADGET_DIE_363040", "ANY_GADGET_DIE_363041" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 363011, 363015 },
		regions = { 363034 },
		triggers = { "CHALLENGE_SUCCESS_363009", "LUA_NOTIFY_363010", "LUA_NOTIFY_363014", "LUA_NOTIFY_363018", "GROUP_LOAD_363022", "CHALLENGE_SUCCESS_363026", "CHALLENGE_FAIL_363027", "SELECT_OPTION_363028", "CHALLENGE_SUCCESS_363030", "CHALLENGE_FAIL_363032", "GADGET_STATE_CHANGE_363033", "LEAVE_REGION_363034", "CHALLENGE_SUCCESS_363035", "SELECT_OPTION_363036", "CHALLENGE_SUCCESS_363037", "LUA_NOTIFY_363038", "LUA_NOTIFY_363039", "CHALLENGE_FAIL_363042", "GROUP_LOAD_363045" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 363003, 363004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363046" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 363005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 363007, 363008, 363016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363047" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 363006, 363017, 363019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363048" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 363002, 363031 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_363009(context, evt)
	-- 创建id为363015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_363010(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302363, 4)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_363014(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302363, 6)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_363018(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302363, 7)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363020(context, evt)
	if 363031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363020(context, evt)
	-- 改变指定group组133302263中， configid为263002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302263, 263002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133302263中， configid为263003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302263, 263003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_363021(context, evt)
	if "failDelay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_363021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302363, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_363022(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_363022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_reward, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, defs.finishquest) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_363024(context, evt)
	if evt.param1 ~= 363024 then return false end
	
	-- 判断是区域363024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 363024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_363024(context, evt)
			ScriptLib.CreateFatherChallenge(context, 457, 263, 1800, {success=2,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 457, 1457, 264, {2,233,defs.keyNum,1,0,0}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 457)
			ScriptLib.AddExtraGroupSuite(context, 133302363, 2)
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock", defs.defaultNum)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363025(context, evt)
	if gadgets[evt.param1].gadget_id ~= 70330245 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363025(context, evt)
	local value = ScriptLib.GetGroupLogicStateValue(context,"SGV_WellUnlock")
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock",value +1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_363026(context, evt)
	-- 将configid为 363011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 363011, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302363, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302363, EntityType.GADGET, 363015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_363027(context, evt)
	-- 将configid为 363011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 363011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"failDelay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failDelay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_363028(context, evt)
	-- 判断是gadgetid 363015 option_id 770
	if 363015 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_363028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302363, EntityType.GADGET, 363015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 363011 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 363011, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_363029(context, evt)
	-- 判断是区域363029
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 363029 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_363029(context, evt)
	-- 终止识别id为457的挑战，并判定失败
		ScriptLib.StopChallenge(context, 457, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_363030(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 8)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_363032(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302363, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 363011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 363011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 8)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_363033(context, evt)
	if 363011 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_363034(context, evt)
	-- 判断是区域363034
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 363034 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_363034(context, evt)
	-- 终止识别id为458的挑战，并判定失败
		ScriptLib.StopChallenge(context, 458, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_363035(context, evt)
			ScriptLib.AttachChildChallenge(context, 457, 1458, 265, {9,232,1,1,0,0}, {}, {success=1,fail=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_363036(context, evt)
	-- 判断是gadgetid 363015 option_id 770
	if 363015 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_363036(context, evt)
			ScriptLib.CreateFatherChallenge(context, 458, 266, 1800, {success=1,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 458, 1270, 270, {180,7,234,1}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 458)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_363037(context, evt)
	-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_reward, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, defs.finishquest) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_363038(context, evt)
	-- 调用提示id为 1111352 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111352) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_363039(context, evt)
	-- 调用提示id为 1111353 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111353) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363040(context, evt)
	if 363012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363040(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302363, 5)
	
	-- 改变指定group组133302263中， configid为263005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302263, 263005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363041(context, evt)
	if 363013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363041(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302363, 8)
	
	-- 改变指定group组133302263中， configid为263003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302263, 263003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_363042(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_363043(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_363044(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302363, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 363011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 363011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_363045(context, evt)
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_363045(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302363, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 363011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 363011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 8)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302363, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363046(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363046(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 4
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	-- 调用提示id为 1111400 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111400) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363047(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363047(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 5
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	-- 调用提示id为 1111400 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111400) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363048(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363048(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 6
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	-- 调用提示id为 1111400 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111400) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_363050(context, evt)
	-- 改变指定group组133302263中， configid为263003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302263, 263003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end