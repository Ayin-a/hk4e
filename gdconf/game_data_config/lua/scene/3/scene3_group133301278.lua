-- 基础信息
local base_info = {
	group_id = 133301278
}

-- Trigger变量
local defs = {
	finishquest = "7304930_fin",
	group_reward = 133301280,
	keyNum = 3,
	defaultNum = 0
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[278002] = { config_id = 278002, monster_id = 25210102, pos = { x = -1077.844, y = 339.824, z = 3995.746 }, rot = { x = 0.000, y = 111.471, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278003] = { config_id = 278003, monster_id = 25210201, pos = { x = -1078.211, y = 339.847, z = 3996.898 }, rot = { x = 0.000, y = 106.808, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278004] = { config_id = 278004, monster_id = 25210402, pos = { x = -1078.413, y = 339.761, z = 3994.191 }, rot = { x = 0.000, y = 93.752, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278005] = { config_id = 278005, monster_id = 25310101, pos = { x = -1069.165, y = 338.936, z = 3979.321 }, rot = { x = 0.000, y = 6.123, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 23 },
	[278006] = { config_id = 278006, monster_id = 25210102, pos = { x = -1069.913, y = 338.657, z = 3977.490 }, rot = { x = 0.000, y = 23.461, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278007] = { config_id = 278007, monster_id = 25210201, pos = { x = -1071.487, y = 338.857, z = 3979.954 }, rot = { x = 0.000, y = 28.020, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278009] = { config_id = 278009, monster_id = 25310101, pos = { x = -1079.652, y = 339.837, z = 3996.252 }, rot = { x = 0.000, y = 105.270, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 23 },
	[278010] = { config_id = 278010, monster_id = 25210201, pos = { x = -1089.355, y = 340.912, z = 4002.114 }, rot = { x = 0.000, y = 261.498, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278012] = { config_id = 278012, monster_id = 25210102, pos = { x = -1045.613, y = 342.661, z = 4015.787 }, rot = { x = 0.000, y = 129.726, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278013] = { config_id = 278013, monster_id = 25210202, pos = { x = -1046.494, y = 342.779, z = 4011.489 }, rot = { x = 0.000, y = 26.182, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278014] = { config_id = 278014, monster_id = 25210201, pos = { x = -1065.141, y = 342.422, z = 4012.207 }, rot = { x = 0.000, y = 109.157, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278015] = { config_id = 278015, monster_id = 25210401, pos = { x = -1049.807, y = 342.447, z = 4017.912 }, rot = { x = 0.000, y = 208.241, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[278016] = { config_id = 278016, monster_id = 25310201, pos = { x = -1059.299, y = 341.920, z = 3995.393 }, rot = { x = 0.000, y = 247.488, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 1, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[278017] = { config_id = 278017, gadget_id = 70330244, pos = { x = -1067.267, y = 340.134, z = 3990.884 }, rot = { x = 0.000, y = 31.455, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 钥匙1
	[278018] = { config_id = 278018, gadget_id = 70330245, pos = { x = -1096.563, y = 342.053, z = 3999.196 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 23 },
	-- 钥匙2
	[278019] = { config_id = 278019, gadget_id = 70330245, pos = { x = -1046.809, y = 348.308, z = 4014.841 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 23 },
	-- 钥匙3
	[278020] = { config_id = 278020, gadget_id = 70330245, pos = { x = -1051.625, y = 342.983, z = 4008.144 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 23 },
	[278021] = { config_id = 278021, gadget_id = 70360286, pos = { x = -1067.267, y = 341.401, z = 3990.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 770 } }, area_id = 23 }
}

-- 区域
regions = {
	-- 靠近机器开启挑战
	[278024] = { config_id = 278024, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1067.420, y = 340.048, z = 3990.843 }, area_id = 23 },
	-- 离开区域挑战失败
	[278029] = { config_id = 278029, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1067.267, y = 340.134, z = 3990.884 }, area_id = 23 },
	-- 出界挑战失败
	[278033] = { config_id = 278033, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1067.267, y = 340.134, z = 3990.884 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 挑战失败初始化sgv
	{ config_id = 1278011, name = "CHALLENGE_FAIL_278011", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_278011" },
	-- 任务通知和刷宝箱保底
	{ config_id = 1278022, name = "GROUP_LOAD_278022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_278022", action = "action_EVENT_GROUP_LOAD_278022", trigger_count = 0 },
	-- 靠近机器开启挑战
	{ config_id = 1278024, name = "ENTER_REGION_278024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_278024", action = "action_EVENT_ENTER_REGION_278024" },
	-- 钥匙检测
	{ config_id = 1278025, name = "ANY_GADGET_DIE_278025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_278025", action = "action_EVENT_ANY_GADGET_DIE_278025", trigger_count = 0, tag = "233" },
	-- 挑战成功切到suite3
	{ config_id = 1278026, name = "CHALLENGE_SUCCESS_278026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_278026" },
	-- 挑战失败初始化
	{ config_id = 1278027, name = "CHALLENGE_FAIL_278027", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_278027" },
	-- 点操作台初始化怪物潮
	{ config_id = 1278028, name = "SELECT_OPTION_278028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_278028", action = "action_EVENT_SELECT_OPTION_278028", tag = "232" },
	-- 离开区域挑战失败
	{ config_id = 1278029, name = "LEAVE_REGION_278029", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_278029", action = "action_EVENT_LEAVE_REGION_278029", trigger_count = 0 },
	-- 挑战成功刷宝箱，通知任务进度由另一个挑战成功发送
	{ config_id = 1278030, name = "CHALLENGE_SUCCESS_278030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_278030" },
	-- 挑战失败重置group
	{ config_id = 1278031, name = "CHALLENGE_FAIL_278031", event = EventType.EVENT_CHALLENGE_FAIL, source = "458", condition = "", action = "action_EVENT_CHALLENGE_FAIL_278031" },
	-- 吸收器转203则挑战成功
	{ config_id = 1278032, name = "GADGET_STATE_CHANGE_278032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_278032", action = "", trigger_count = 0, tag = "234" },
	-- 出界挑战失败
	{ config_id = 1278033, name = "LEAVE_REGION_278033", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_278033", action = "action_EVENT_LEAVE_REGION_278033" },
	-- 子挑战1成功开启子挑战2
	{ config_id = 1278034, name = "CHALLENGE_SUCCESS_278034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_278034" },
	-- 点操作台启动挑战
	{ config_id = 1278035, name = "SELECT_OPTION_278035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_278035", action = "action_EVENT_SELECT_OPTION_278035" },
	-- 挑战成功通知子任务完成，改编号去defs里改
	{ config_id = 1278036, name = "CHALLENGE_SUCCESS_278036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_278036" },
	{ config_id = 1278037, name = "LUA_NOTIFY_278037", event = EventType.EVENT_LUA_NOTIFY, source = "ShowReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_278037", trigger_count = 0 },
	{ config_id = 1278038, name = "LUA_NOTIFY_278038", event = EventType.EVENT_LUA_NOTIFY, source = "CloseReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_278038", trigger_count = 0 },
	-- 子挑战1成功挂按钮
	{ config_id = 1278039, name = "CHALLENGE_SUCCESS_278039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_278039" },
	-- 拿钥匙1刷suite5
	{ config_id = 1278040, name = "ANY_GADGET_DIE_278040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_278040", action = "action_EVENT_ANY_GADGET_DIE_278040" },
	-- 拿钥匙2刷suite6
	{ config_id = 1278041, name = "ANY_GADGET_DIE_278041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_278041", action = "action_EVENT_ANY_GADGET_DIE_278041" },
	-- 拿钥匙3刷suite7
	{ config_id = 1278042, name = "ANY_GADGET_DIE_278042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_278042", action = "action_EVENT_ANY_GADGET_DIE_278042" },
	-- 刷第一波
	{ config_id = 1278043, name = "LUA_NOTIFY_278043", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase01", condition = "", action = "action_EVENT_LUA_NOTIFY_278043" },
	-- 刷第二波
	{ config_id = 1278044, name = "LUA_NOTIFY_278044", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase02", condition = "", action = "action_EVENT_LUA_NOTIFY_278044" },
	-- 刷第三波
	{ config_id = 1278045, name = "LUA_NOTIFY_278045", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase03", condition = "", action = "action_EVENT_LUA_NOTIFY_278045" },
	-- 重置sgv
	{ config_id = 1278046, name = "GROUP_LOAD_278046", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_278046", trigger_count = 0 },
	-- 断线初始化
	{ config_id = 1278047, name = "GROUP_LOAD_278047", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_278047", trigger_count = 0 },
	-- 挑战失败重置group
	{ config_id = 1278048, name = "GROUP_LOAD_278048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_278048", action = "action_EVENT_GROUP_LOAD_278048", trigger_count = 0 },
	{ config_id = 1278049, name = "ANY_MONSTER_DIE_278049", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_278049", action = "action_EVENT_ANY_MONSTER_DIE_278049" },
	{ config_id = 1278050, name = "ANY_MONSTER_DIE_278050", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_278050", action = "action_EVENT_ANY_MONSTER_DIE_278050" },
	{ config_id = 1278051, name = "ANY_MONSTER_DIE_278051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_278051", action = "action_EVENT_ANY_MONSTER_DIE_278051" },
	-- 挑战失败延迟刷新group
	{ config_id = 1278052, name = "TIME_AXIS_PASS_278052", event = EventType.EVENT_TIME_AXIS_PASS, source = "failDelay", condition = "condition_EVENT_TIME_AXIS_PASS_278052", action = "action_EVENT_TIME_AXIS_PASS_278052" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_WellUnlock", value = 0, no_refresh = false, variable_type = 1 },
	{ config_id = 2, name = "success", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 278001, monster_id = 25310101, pos = { x = -1076.826, y = 339.837, z = 3997.381 }, rot = { x = 0.000, y = 111.795, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 23 },
		{ config_id = 278008, monster_id = 25210402, pos = { x = -1065.382, y = 335.981, z = 3978.000 }, rot = { x = 0.000, y = 335.345, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 }
	},
	triggers = {
		{ config_id = 1278023, name = "GROUP_LOAD_278023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_278023", action = "action_EVENT_GROUP_LOAD_278023" }
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
		gadgets = { 278017 },
		regions = { 278024, 278029 },
		triggers = { "CHALLENGE_FAIL_278011", "GROUP_LOAD_278022", "ENTER_REGION_278024", "CHALLENGE_SUCCESS_278026", "CHALLENGE_FAIL_278027", "LEAVE_REGION_278029", "CHALLENGE_SUCCESS_278034", "CHALLENGE_SUCCESS_278039", "GROUP_LOAD_278046", "GROUP_LOAD_278047", "TIME_AXIS_PASS_278052" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 278018, 278019, 278020 },
		regions = { 278033 },
		triggers = { "ANY_GADGET_DIE_278025", "SELECT_OPTION_278028", "CHALLENGE_SUCCESS_278030", "CHALLENGE_FAIL_278031", "GADGET_STATE_CHANGE_278032", "LEAVE_REGION_278033", "SELECT_OPTION_278035", "CHALLENGE_SUCCESS_278036", "LUA_NOTIFY_278037", "LUA_NOTIFY_278038", "ANY_GADGET_DIE_278040", "ANY_GADGET_DIE_278041", "ANY_GADGET_DIE_278042", "LUA_NOTIFY_278043", "LUA_NOTIFY_278044", "LUA_NOTIFY_278045" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 278017, 278021 },
		regions = { 278033 },
		triggers = { "CHALLENGE_FAIL_278011", "GROUP_LOAD_278022", "CHALLENGE_SUCCESS_278026", "CHALLENGE_FAIL_278027", "SELECT_OPTION_278028", "CHALLENGE_SUCCESS_278030", "CHALLENGE_FAIL_278031", "GADGET_STATE_CHANGE_278032", "LEAVE_REGION_278033", "CHALLENGE_SUCCESS_278034", "SELECT_OPTION_278035", "CHALLENGE_SUCCESS_278036", "LUA_NOTIFY_278037", "LUA_NOTIFY_278038", "CHALLENGE_SUCCESS_278039", "LUA_NOTIFY_278043", "LUA_NOTIFY_278044", "LUA_NOTIFY_278045", "GROUP_LOAD_278048" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 278002, 278003, 278004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_278049" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 278010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 278012, 278013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 278014, 278015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 278005, 278006, 278007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_278050" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 278009, 278016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_278051" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_278011(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_278022(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_278022(context, evt)
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
function condition_EVENT_ENTER_REGION_278024(context, evt)
	if evt.param1 ~= 278024 then return false end
	
	-- 判断是区域278024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 278024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_278024(context, evt)
			ScriptLib.CreateFatherChallenge(context, 457, 263, 1800, {success=2,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 457, 1457, 264, {2,233,defs.keyNum,1,0,0}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 457)
			ScriptLib.AddExtraGroupSuite(context, 133301278, 2)
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock", defs.defaultNum)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_278025(context, evt)
	if gadgets[evt.param1].gadget_id ~= 70330245 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_278025(context, evt)
	local value = ScriptLib.GetGroupLogicStateValue(context,"SGV_WellUnlock")
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock",value +1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_278026(context, evt)
	-- 将configid为 278017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301278, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301278, EntityType.GADGET, 278021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_278027(context, evt)
	-- 将configid为 278017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"failDelay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failDelay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_278028(context, evt)
	-- 判断是gadgetid 278021 option_id 770
	if 278021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_278028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301278, EntityType.GADGET, 278021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 278017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_278029(context, evt)
	-- 判断是区域278029
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 278029 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_278029(context, evt)
	-- 终止识别id为457的挑战，并判定失败
		ScriptLib.StopChallenge(context, 457, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_278030(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_278031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301278, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 278017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_278032(context, evt)
	if 278017 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_278033(context, evt)
	-- 判断是区域278033
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 278033 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_278033(context, evt)
	-- 终止识别id为458的挑战，并判定失败
		ScriptLib.StopChallenge(context, 458, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_278034(context, evt)
			ScriptLib.AttachChildChallenge(context, 457, 1458, 265, {9,232,1,1,0,0}, {}, {success=1,fail=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_278035(context, evt)
	-- 判断是gadgetid 278021 option_id 770
	if 278021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_278035(context, evt)
			ScriptLib.CreateFatherChallenge(context, 458, 266, 1800, {success=1,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 458, 1270, 270, {180,7,234,1}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 458)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_278036(context, evt)
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
function action_EVENT_LUA_NOTIFY_278037(context, evt)
	-- 调用提示id为 1111352 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111352) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_278038(context, evt)
	-- 调用提示id为 1111353 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111353) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_278039(context, evt)
	-- 创建id为278021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 278021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_278040(context, evt)
	if 278018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_278040(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301278, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_278041(context, evt)
	if 278019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_278041(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301278, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_278042(context, evt)
	if 278020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_278042(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301278, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_278043(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301278, 4)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_278044(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301278, 8)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_278045(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301278, 9)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_278046(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_278047(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301278, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 278017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_278048(context, evt)
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_278048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301278, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 278017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301278, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_278049(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_278049(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_278050(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_278050(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_278051(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_278051(context, evt)
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

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_278052(context, evt)
	if "failDelay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_278052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301278, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end