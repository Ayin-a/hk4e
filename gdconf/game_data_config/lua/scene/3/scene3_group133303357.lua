-- 基础信息
local base_info = {
	group_id = 133303357
}

-- Trigger变量
local defs = {
	finishquest = "7304932_fin",
	group_reward = 133303359,
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
	[357002] = { config_id = 357002, monster_id = 25210102, pos = { x = -1251.891, y = 248.651, z = 3715.124 }, rot = { x = 0.000, y = 352.805, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357003] = { config_id = 357003, monster_id = 25210201, pos = { x = -1249.664, y = 248.661, z = 3715.341 }, rot = { x = 0.000, y = 326.821, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357004] = { config_id = 357004, monster_id = 25210402, pos = { x = -1249.251, y = 248.651, z = 3717.333 }, rot = { x = 0.000, y = 301.912, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357005] = { config_id = 357005, monster_id = 25310101, pos = { x = -1268.998, y = 249.093, z = 3740.149 }, rot = { x = 0.000, y = 154.551, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 23 },
	[357007] = { config_id = 357007, monster_id = 25210201, pos = { x = -1265.663, y = 249.093, z = 3734.299 }, rot = { x = 0.000, y = 151.404, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357008] = { config_id = 357008, monster_id = 25210402, pos = { x = -1263.798, y = 249.093, z = 3735.624 }, rot = { x = 0.000, y = 150.221, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357009] = { config_id = 357009, monster_id = 25310101, pos = { x = -1248.250, y = 248.645, z = 3715.782 }, rot = { x = 0.000, y = 297.427, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 23 },
	[357010] = { config_id = 357010, monster_id = 25210201, pos = { x = -1259.542, y = 243.693, z = 3728.277 }, rot = { x = 0.000, y = 180.651, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357011] = { config_id = 357011, monster_id = 25210402, pos = { x = -1254.424, y = 243.773, z = 3727.444 }, rot = { x = 0.000, y = 238.254, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357012] = { config_id = 357012, monster_id = 25210102, pos = { x = -1267.806, y = 237.413, z = 3760.243 }, rot = { x = 0.000, y = 184.969, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357013] = { config_id = 357013, monster_id = 25210202, pos = { x = -1261.761, y = 237.413, z = 3759.659 }, rot = { x = 0.000, y = 201.880, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357014] = { config_id = 357014, monster_id = 25210201, pos = { x = -1269.456, y = 243.700, z = 3743.881 }, rot = { x = 0.000, y = 135.350, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357015] = { config_id = 357015, monster_id = 25210401, pos = { x = -1270.122, y = 243.693, z = 3736.060 }, rot = { x = 0.000, y = 45.390, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[357016] = { config_id = 357016, monster_id = 25310301, pos = { x = -1267.044, y = 249.093, z = 3736.915 }, rot = { x = 0.000, y = 154.081, z = 0.000 }, level = 30, drop_id = 1000100, isElite = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[357017] = { config_id = 357017, gadget_id = 70330244, pos = { x = -1256.813, y = 248.987, z = 3724.384 }, rot = { x = 0.000, y = 137.053, z = 0.000 }, level = 30, persistent = true, logic_state = {"SGV_WellUnlock"}, area_id = 23 },
	[357018] = { config_id = 357018, gadget_id = 70330245, pos = { x = -1256.525, y = 244.416, z = 3724.822 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 23 },
	[357019] = { config_id = 357019, gadget_id = 70330245, pos = { x = -1264.791, y = 238.320, z = 3756.662 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 23 },
	[357021] = { config_id = 357021, gadget_id = 70360286, pos = { x = -1256.813, y = 248.987, z = 3724.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 770 } }, area_id = 23 }
}

-- 区域
regions = {
	[357020] = { config_id = 357020, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1268.134, y = 243.693, z = 3740.068 }, area_id = 23 },
	-- 靠近机器开启挑战
	[357024] = { config_id = 357024, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1256.456, y = 250.955, z = 3724.841 }, area_id = 23 },
	-- 离开区域挑战失败
	[357029] = { config_id = 357029, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1256.386, y = 249.806, z = 3724.777 }, area_id = 23 },
	-- 出界挑战失败
	[357034] = { config_id = 357034, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1268.724, y = 249.024, z = 3739.237 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1357020, name = "ENTER_REGION_357020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_357020", action = "action_EVENT_ENTER_REGION_357020" },
	-- 任务通知和刷宝箱保底
	{ config_id = 1357022, name = "GROUP_LOAD_357022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_357022", action = "action_EVENT_GROUP_LOAD_357022", trigger_count = 0 },
	-- 靠近机器开启挑战
	{ config_id = 1357024, name = "ENTER_REGION_357024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_357024", action = "action_EVENT_ENTER_REGION_357024" },
	-- 钥匙检测
	{ config_id = 1357025, name = "ANY_GADGET_DIE_357025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_357025", action = "action_EVENT_ANY_GADGET_DIE_357025", trigger_count = 0, tag = "233" },
	-- 挑战成功切到suite3
	{ config_id = 1357026, name = "CHALLENGE_SUCCESS_357026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_357026" },
	-- 挑战失败初始化
	{ config_id = 1357027, name = "CHALLENGE_FAIL_357027", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_357027" },
	-- 点操作台初始化怪物潮
	{ config_id = 1357028, name = "SELECT_OPTION_357028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_357028", action = "action_EVENT_SELECT_OPTION_357028", tag = "232" },
	-- 离开区域挑战失败
	{ config_id = 1357029, name = "LEAVE_REGION_357029", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_357029", action = "action_EVENT_LEAVE_REGION_357029", trigger_count = 0 },
	-- 挑战成功刷宝箱，通知任务进度由另一个挑战成功发送
	{ config_id = 1357030, name = "CHALLENGE_SUCCESS_357030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_357030" },
	{ config_id = 1357031, name = "GROUP_LOAD_357031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_357031", trigger_count = 0 },
	-- 挑战失败重置group
	{ config_id = 1357032, name = "CHALLENGE_FAIL_357032", event = EventType.EVENT_CHALLENGE_FAIL, source = "458", condition = "", action = "action_EVENT_CHALLENGE_FAIL_357032" },
	-- 吸收器转203则挑战成功
	{ config_id = 1357033, name = "GADGET_STATE_CHANGE_357033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_357033", action = "", trigger_count = 0, tag = "234" },
	-- 出界挑战失败
	{ config_id = 1357034, name = "LEAVE_REGION_357034", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_357034", action = "action_EVENT_LEAVE_REGION_357034" },
	-- 子挑战1成功开启子挑战2
	{ config_id = 1357035, name = "CHALLENGE_SUCCESS_357035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_357035" },
	-- 点操作台启动挑战
	{ config_id = 1357036, name = "SELECT_OPTION_357036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_357036", action = "action_EVENT_SELECT_OPTION_357036" },
	-- 挑战成功通知子任务完成，改编号去defs里改
	{ config_id = 1357037, name = "CHALLENGE_SUCCESS_357037", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_357037" },
	{ config_id = 1357038, name = "LUA_NOTIFY_357038", event = EventType.EVENT_LUA_NOTIFY, source = "ShowReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_357038", trigger_count = 0 },
	{ config_id = 1357039, name = "LUA_NOTIFY_357039", event = EventType.EVENT_LUA_NOTIFY, source = "CloseReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_357039", trigger_count = 0 },
	-- 子挑战1成功挂按钮
	{ config_id = 1357040, name = "CHALLENGE_SUCCESS_357040", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_357040" },
	{ config_id = 1357041, name = "ANY_GADGET_DIE_357041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_357041", action = "action_EVENT_ANY_GADGET_DIE_357041" },
	{ config_id = 1357042, name = "ANY_GADGET_DIE_357042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_357042", action = "action_EVENT_ANY_GADGET_DIE_357042" },
	-- 刷第一波
	{ config_id = 1357044, name = "LUA_NOTIFY_357044", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase01", condition = "", action = "action_EVENT_LUA_NOTIFY_357044" },
	-- 刷第二波
	{ config_id = 1357045, name = "LUA_NOTIFY_357045", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase02", condition = "", action = "action_EVENT_LUA_NOTIFY_357045" },
	-- 刷第三波
	{ config_id = 1357046, name = "LUA_NOTIFY_357046", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase03", condition = "", action = "action_EVENT_LUA_NOTIFY_357046" },
	-- 挑战失败初始化sgv
	{ config_id = 1357047, name = "CHALLENGE_FAIL_357047", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_357047" },
	-- 断线初始化
	{ config_id = 1357048, name = "GROUP_LOAD_357048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_357048", trigger_count = 0 },
	-- 挑战失败重置group
	{ config_id = 1357049, name = "GROUP_LOAD_357049", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_357049", action = "action_EVENT_GROUP_LOAD_357049", trigger_count = 0 },
	{ config_id = 1357050, name = "ANY_MONSTER_DIE_357050", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_357050", action = "action_EVENT_ANY_MONSTER_DIE_357050" },
	{ config_id = 1357051, name = "ANY_MONSTER_DIE_357051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_357051", action = "action_EVENT_ANY_MONSTER_DIE_357051" },
	{ config_id = 1357052, name = "ANY_MONSTER_DIE_357052", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_357052", action = "action_EVENT_ANY_MONSTER_DIE_357052" },
	-- 挑战失败延迟刷新group
	{ config_id = 1357053, name = "TIME_AXIS_PASS_357053", event = EventType.EVENT_TIME_AXIS_PASS, source = "failDelay", condition = "condition_EVENT_TIME_AXIS_PASS_357053", action = "action_EVENT_TIME_AXIS_PASS_357053" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_WellUnlock", value = 1, no_refresh = false, variable_type = 1 },
	{ config_id = 2, name = "success", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 357001, monster_id = 25310101, pos = { x = -1250.400, y = 248.646, z = 3713.376 }, rot = { x = 0.000, y = 291.551, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 23 },
		{ config_id = 357006, monster_id = 25210102, pos = { x = -1267.571, y = 249.061, z = 3732.688 }, rot = { x = 0.000, y = 111.471, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 }
	},
	triggers = {
		{ config_id = 1357023, name = "GROUP_LOAD_357023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_357023", action = "action_EVENT_GROUP_LOAD_357023" },
		{ config_id = 1357043, name = "ANY_GADGET_DIE_357043", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_357043", action = "action_EVENT_ANY_GADGET_DIE_357043" }
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
		gadgets = { 357017 },
		regions = { 357024, 357029 },
		triggers = { "GROUP_LOAD_357022", "ENTER_REGION_357024", "CHALLENGE_SUCCESS_357026", "CHALLENGE_FAIL_357027", "LEAVE_REGION_357029", "GROUP_LOAD_357031", "CHALLENGE_SUCCESS_357035", "CHALLENGE_SUCCESS_357040", "CHALLENGE_FAIL_357047", "GROUP_LOAD_357048", "TIME_AXIS_PASS_357053" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 357018, 357019 },
		regions = { 357034 },
		triggers = { "ANY_GADGET_DIE_357025", "SELECT_OPTION_357028", "CHALLENGE_SUCCESS_357030", "CHALLENGE_FAIL_357032", "GADGET_STATE_CHANGE_357033", "LEAVE_REGION_357034", "SELECT_OPTION_357036", "CHALLENGE_SUCCESS_357037", "LUA_NOTIFY_357038", "LUA_NOTIFY_357039", "ANY_GADGET_DIE_357041", "ANY_GADGET_DIE_357042", "LUA_NOTIFY_357044", "LUA_NOTIFY_357045", "LUA_NOTIFY_357046" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 357017, 357021 },
		regions = { 357034 },
		triggers = { "GROUP_LOAD_357022", "CHALLENGE_SUCCESS_357026", "CHALLENGE_FAIL_357027", "SELECT_OPTION_357028", "CHALLENGE_SUCCESS_357030", "CHALLENGE_FAIL_357032", "GADGET_STATE_CHANGE_357033", "LEAVE_REGION_357034", "SELECT_OPTION_357036", "CHALLENGE_SUCCESS_357037", "LUA_NOTIFY_357038", "LUA_NOTIFY_357039", "LUA_NOTIFY_357044", "LUA_NOTIFY_357045", "LUA_NOTIFY_357046", "CHALLENGE_FAIL_357047", "GROUP_LOAD_357049" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 357002, 357003, 357004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_357050" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 357010, 357011 },
		gadgets = { },
		regions = { 357020 },
		triggers = { "ENTER_REGION_357020" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 357012, 357013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 357014, 357015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 357005, 357007, 357008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_357051" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 357009, 357016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_357052" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_357020(context, evt)
	if evt.param1 ~= 357020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_357020(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303357, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_357022(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_357022(context, evt)
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
function condition_EVENT_ENTER_REGION_357024(context, evt)
	if evt.param1 ~= 357024 then return false end
	
	-- 判断是区域357024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 357024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_357024(context, evt)
			ScriptLib.CreateFatherChallenge(context, 457, 263, 1800, {success=2,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 457, 1457, 264, {2,233,defs.keyNum,1,0,0}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 457)
			ScriptLib.AddExtraGroupSuite(context, 133303357, 2)
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock", defs.defaultNum)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_357025(context, evt)
	if gadgets[evt.param1].gadget_id ~= 70330245 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_357025(context, evt)
	local value = ScriptLib.GetGroupLogicStateValue(context,"SGV_WellUnlock")
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock",value +1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_357026(context, evt)
	-- 将configid为 357017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303357, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303357, EntityType.GADGET, 357021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_357027(context, evt)
	-- 将configid为 357017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"failDelay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failDelay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_357028(context, evt)
	-- 判断是gadgetid 357021 option_id 770
	if 357021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_357028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303357, EntityType.GADGET, 357021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 357017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_357029(context, evt)
	-- 判断是区域357029
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 357029 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_357029(context, evt)
	-- 终止识别id为457的挑战，并判定失败
		ScriptLib.StopChallenge(context, 457, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_357030(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_357031(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_357032(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303357, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 357017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_357033(context, evt)
	if 357017 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_357034(context, evt)
	-- 判断是区域357034
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 357034 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_357034(context, evt)
	-- 终止识别id为458的挑战，并判定失败
		ScriptLib.StopChallenge(context, 458, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_357035(context, evt)
			ScriptLib.AttachChildChallenge(context, 457, 1458, 265, {9,232,1,1,0,0}, {}, {success=1,fail=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_357036(context, evt)
	-- 判断是gadgetid 357021 option_id 770
	if 357021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_357036(context, evt)
			ScriptLib.CreateFatherChallenge(context, 458, 266, 1800, {success=1,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 458, 1270, 270, {180,7,234,1}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 458)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_357037(context, evt)
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
function action_EVENT_LUA_NOTIFY_357038(context, evt)
	-- 调用提示id为 1111352 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111352) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_357039(context, evt)
	-- 调用提示id为 1111353 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111353) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_357040(context, evt)
	-- 创建id为357021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 357021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_357041(context, evt)
	if 357018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_357041(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303357, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_357042(context, evt)
	if 357019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_357042(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303357, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_357044(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303357, 4)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_357045(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303357, 8)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_357046(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303357, 9)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_357047(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_357048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303357, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 357017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_357049(context, evt)
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_357049(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303357, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 357017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303357, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_357050(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_357050(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_357051(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_357051(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_357052(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_357052(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_357053(context, evt)
	if "failDelay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_357053(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303357, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end