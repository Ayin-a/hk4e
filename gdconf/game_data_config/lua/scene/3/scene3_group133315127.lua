-- 基础信息
local base_info = {
	group_id = 133315127
}

-- Trigger变量
local defs = {
	finishquest = "7304936_fin",
	group_reward = 133315129,
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
	[127002] = { config_id = 127002, monster_id = 25210102, pos = { x = -263.236, y = 251.159, z = 2197.170 }, rot = { x = 0.000, y = 332.603, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127003] = { config_id = 127003, monster_id = 25210201, pos = { x = -262.001, y = 250.994, z = 2204.519 }, rot = { x = 0.000, y = 282.730, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127004] = { config_id = 127004, monster_id = 25210402, pos = { x = -264.752, y = 251.198, z = 2196.430 }, rot = { x = 0.000, y = 332.603, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127005] = { config_id = 127005, monster_id = 25310101, pos = { x = -261.368, y = 250.994, z = 2204.620 }, rot = { x = 0.000, y = 154.551, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 24 },
	[127006] = { config_id = 127006, monster_id = 25210102, pos = { x = -261.526, y = 251.222, z = 2204.290 }, rot = { x = 0.000, y = 353.906, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127008] = { config_id = 127008, monster_id = 25210402, pos = { x = -265.741, y = 251.185, z = 2196.562 }, rot = { x = 0.000, y = 12.065, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127009] = { config_id = 127009, monster_id = 25310101, pos = { x = -265.645, y = 251.216, z = 2197.914 }, rot = { x = 0.000, y = 344.470, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 24 },
	[127010] = { config_id = 127010, monster_id = 25210102, pos = { x = -263.533, y = 245.589, z = 2211.897 }, rot = { x = 0.000, y = 173.569, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127011] = { config_id = 127011, monster_id = 25210402, pos = { x = -268.732, y = 245.611, z = 2210.865 }, rot = { x = 0.000, y = 100.452, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127012] = { config_id = 127012, monster_id = 25210102, pos = { x = -232.759, y = 251.086, z = 2220.745 }, rot = { x = 0.000, y = 152.556, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127013] = { config_id = 127013, monster_id = 25210202, pos = { x = -231.653, y = 251.080, z = 2219.026 }, rot = { x = 0.000, y = 163.293, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127014] = { config_id = 127014, monster_id = 25210201, pos = { x = -242.758, y = 245.619, z = 2206.626 }, rot = { x = 0.000, y = 162.653, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127015] = { config_id = 127015, monster_id = 25210401, pos = { x = -240.978, y = 245.697, z = 2202.784 }, rot = { x = 0.000, y = 290.772, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 },
	[127016] = { config_id = 127016, monster_id = 25310301, pos = { x = -264.514, y = 251.195, z = 2198.795 }, rot = { x = 0.000, y = 353.285, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[127017] = { config_id = 127017, gadget_id = 70330244, pos = { x = -266.698, y = 250.908, z = 2212.188 }, rot = { x = 0.000, y = 332.056, z = 0.000 }, level = 30, persistent = true, logic_state = {"SGV_WellUnlock"}, area_id = 24 },
	[127018] = { config_id = 127018, gadget_id = 70330245, pos = { x = -262.291, y = 246.367, z = 2203.896 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 24 },
	[127019] = { config_id = 127019, gadget_id = 70330245, pos = { x = -227.225, y = 251.998, z = 2210.900 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 24 },
	-- 初始关门0，拾取钥匙后开门201
	[127020] = { config_id = 127020, gadget_id = 70290584, pos = { x = -261.504, y = 249.146, z = 2201.609 }, rot = { x = 0.000, y = 152.000, z = 180.000 }, level = 27, persistent = true, area_id = 24 },
	[127021] = { config_id = 127021, gadget_id = 70360286, pos = { x = -266.698, y = 251.636, z = 2212.188 }, rot = { x = 0.000, y = 332.056, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 770 } }, area_id = 24 },
	-- 初始开门201，进圈后刷怪后0，怪死开门201
	[127046] = { config_id = 127046, gadget_id = 70290584, pos = { x = -263.366, y = 249.648, z = 2205.987 }, rot = { x = 0.000, y = 152.758, z = 180.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 24 },
	-- 初始开门201，进圈后刷怪后0，钥匙二死开门201
	[127047] = { config_id = 127047, gadget_id = 70290584, pos = { x = -247.197, y = 249.382, z = 2201.009 }, rot = { x = 0.000, y = 62.758, z = 180.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 24 },
	-- 初始关门0，钥匙二死开门201
	[127048] = { config_id = 127048, gadget_id = 70290584, pos = { x = -241.740, y = 254.749, z = 2206.801 }, rot = { x = 0.000, y = 152.758, z = 180.000 }, level = 27, persistent = true, area_id = 24 },
	-- 初始关门0，钥匙二死开门201
	[127049] = { config_id = 127049, gadget_id = 70290584, pos = { x = -230.342, y = 255.077, z = 2217.147 }, rot = { x = 0.000, y = 152.758, z = 180.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	-- 靠近机器开启挑战
	[127024] = { config_id = 127024, shape = RegionShape.SPHERE, radius = 5, pos = { x = -266.698, y = 250.908, z = 2212.188 }, area_id = 24 },
	-- 离开区域挑战失败
	[127029] = { config_id = 127029, shape = RegionShape.SPHERE, radius = 50, pos = { x = -266.698, y = 250.908, z = 2212.188 }, area_id = 24 },
	-- 出界挑战失败
	[127033] = { config_id = 127033, shape = RegionShape.SPHERE, radius = 50, pos = { x = -262.455, y = 237.743, z = 2200.690 }, area_id = 24 },
	-- 进钥匙二圈
	[127042] = { config_id = 127042, shape = RegionShape.SPHERE, radius = 5, pos = { x = -241.097, y = 245.673, z = 2203.893 }, area_id = 24 },
	-- 进钥匙一圈
	[127050] = { config_id = 127050, shape = RegionShape.SPHERE, radius = 4, pos = { x = -264.455, y = 245.677, z = 2207.857 }, area_id = 24 }
}

-- 触发器
triggers = {
	-- 任务通知和刷宝箱保底
	{ config_id = 1127022, name = "GROUP_LOAD_127022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_127022", action = "action_EVENT_GROUP_LOAD_127022", trigger_count = 0 },
	-- 靠近机器开启挑战
	{ config_id = 1127024, name = "ENTER_REGION_127024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_127024", action = "action_EVENT_ENTER_REGION_127024" },
	-- 钥匙检测
	{ config_id = 1127025, name = "ANY_GADGET_DIE_127025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127025", action = "action_EVENT_ANY_GADGET_DIE_127025", trigger_count = 0, tag = "233" },
	-- 挑战成功切到suite3
	{ config_id = 1127026, name = "CHALLENGE_SUCCESS_127026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_127026" },
	-- 挑战失败初始化
	{ config_id = 1127027, name = "CHALLENGE_FAIL_127027", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_127027" },
	-- 点操作台初始化怪物潮
	{ config_id = 1127028, name = "SELECT_OPTION_127028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_127028", action = "action_EVENT_SELECT_OPTION_127028", tag = "232" },
	-- 离开区域挑战失败
	{ config_id = 1127029, name = "LEAVE_REGION_127029", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_127029", action = "action_EVENT_LEAVE_REGION_127029", trigger_count = 0 },
	-- 挑战成功刷宝箱，通知任务进度由另一个挑战成功发送
	{ config_id = 1127030, name = "CHALLENGE_SUCCESS_127030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_127030" },
	-- 挑战失败重置group
	{ config_id = 1127031, name = "CHALLENGE_FAIL_127031", event = EventType.EVENT_CHALLENGE_FAIL, source = "458", condition = "", action = "action_EVENT_CHALLENGE_FAIL_127031" },
	-- 吸收器转203则挑战成功
	{ config_id = 1127032, name = "GADGET_STATE_CHANGE_127032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_127032", action = "", trigger_count = 0, tag = "234" },
	-- 出界挑战失败
	{ config_id = 1127033, name = "LEAVE_REGION_127033", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_127033", action = "action_EVENT_LEAVE_REGION_127033" },
	-- 子挑战1成功开启子挑战2
	{ config_id = 1127034, name = "CHALLENGE_SUCCESS_127034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_127034" },
	-- 点操作台启动挑战
	{ config_id = 1127035, name = "SELECT_OPTION_127035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_127035", action = "action_EVENT_SELECT_OPTION_127035" },
	-- 挑战成功通知子任务完成，改编号去defs里改
	{ config_id = 1127036, name = "CHALLENGE_SUCCESS_127036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_127036", trigger_count = 0 },
	{ config_id = 1127037, name = "LUA_NOTIFY_127037", event = EventType.EVENT_LUA_NOTIFY, source = "ShowReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_127037", trigger_count = 0 },
	{ config_id = 1127038, name = "LUA_NOTIFY_127038", event = EventType.EVENT_LUA_NOTIFY, source = "CloseReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_127038", trigger_count = 0 },
	-- 子挑战1成功挂按钮
	{ config_id = 1127039, name = "CHALLENGE_SUCCESS_127039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_127039" },
	-- 拿钥匙1，开门
	{ config_id = 1127040, name = "ANY_GADGET_DIE_127040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127040", action = "action_EVENT_ANY_GADGET_DIE_127040" },
	-- 拿钥匙2刷suite6
	{ config_id = 1127041, name = "ANY_GADGET_DIE_127041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127041", action = "action_EVENT_ANY_GADGET_DIE_127041" },
	-- 进钥匙二圈
	{ config_id = 1127042, name = "ENTER_REGION_127042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_127042", action = "action_EVENT_ENTER_REGION_127042" },
	-- 刷第一波
	{ config_id = 1127043, name = "LUA_NOTIFY_127043", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase01", condition = "", action = "action_EVENT_LUA_NOTIFY_127043" },
	-- 刷第二波
	{ config_id = 1127044, name = "LUA_NOTIFY_127044", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase02", condition = "", action = "action_EVENT_LUA_NOTIFY_127044" },
	-- 刷第三波
	{ config_id = 1127045, name = "LUA_NOTIFY_127045", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase03", condition = "", action = "action_EVENT_LUA_NOTIFY_127045" },
	-- 进钥匙一圈
	{ config_id = 1127050, name = "ENTER_REGION_127050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_127050", action = "action_EVENT_ENTER_REGION_127050" },
	-- 怪死门开
	{ config_id = 1127051, name = "ANY_MONSTER_DIE_127051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127051", action = "action_EVENT_ANY_MONSTER_DIE_127051", trigger_count = 0 },
	-- 重置sgv
	{ config_id = 1127052, name = "GROUP_LOAD_127052", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_127052", trigger_count = 0 },
	-- 挑战失败初始化sgv
	{ config_id = 1127053, name = "CHALLENGE_FAIL_127053", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_127053" },
	-- 断线初始化
	{ config_id = 1127054, name = "GROUP_LOAD_127054", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_127054", trigger_count = 0 },
	-- 挑战失败重置group
	{ config_id = 1127055, name = "GROUP_LOAD_127055", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_127055", action = "action_EVENT_GROUP_LOAD_127055", trigger_count = 0 },
	{ config_id = 1127056, name = "ANY_MONSTER_DIE_127056", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127056", action = "action_EVENT_ANY_MONSTER_DIE_127056" },
	{ config_id = 1127057, name = "ANY_MONSTER_DIE_127057", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127057", action = "action_EVENT_ANY_MONSTER_DIE_127057" },
	{ config_id = 1127058, name = "ANY_MONSTER_DIE_127058", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127058", action = "action_EVENT_ANY_MONSTER_DIE_127058" },
	-- 挑战失败延迟刷新group
	{ config_id = 1127059, name = "TIME_AXIS_PASS_127059", event = EventType.EVENT_TIME_AXIS_PASS, source = "failDelay", condition = "condition_EVENT_TIME_AXIS_PASS_127059", action = "action_EVENT_TIME_AXIS_PASS_127059" },
	-- 48开门后干掉
	{ config_id = 1127060, name = "GADGET_STATE_CHANGE_127060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_127060", action = "action_EVENT_GADGET_STATE_CHANGE_127060" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_WellUnlock", value = 1, no_refresh = false, variable_type = 1 },
	{ config_id = 2, name = "success", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 127001, monster_id = 25310101, pos = { x = -260.962, y = 250.994, z = 2205.423 }, rot = { x = 0.000, y = 272.580, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 24 },
		{ config_id = 127007, monster_id = 25210201, pos = { x = -265.026, y = 251.203, z = 2197.048 }, rot = { x = 0.000, y = 327.309, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 24 }
	},
	triggers = {
		{ config_id = 1127023, name = "GROUP_LOAD_127023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_127023", action = "action_EVENT_GROUP_LOAD_127023" }
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
		gadgets = { 127017, 127020, 127046, 127047, 127048, 127049 },
		regions = { 127024, 127029 },
		triggers = { "GROUP_LOAD_127022", "ENTER_REGION_127024", "CHALLENGE_SUCCESS_127026", "CHALLENGE_FAIL_127027", "LEAVE_REGION_127029", "CHALLENGE_SUCCESS_127034", "CHALLENGE_SUCCESS_127039", "GROUP_LOAD_127052", "CHALLENGE_FAIL_127053", "GROUP_LOAD_127054", "TIME_AXIS_PASS_127059" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 127018, 127019, 127020, 127046, 127047, 127048, 127049 },
		regions = { 127033, 127042, 127050 },
		triggers = { "ANY_GADGET_DIE_127025", "SELECT_OPTION_127028", "CHALLENGE_SUCCESS_127030", "CHALLENGE_FAIL_127031", "GADGET_STATE_CHANGE_127032", "LEAVE_REGION_127033", "SELECT_OPTION_127035", "CHALLENGE_SUCCESS_127036", "LUA_NOTIFY_127037", "LUA_NOTIFY_127038", "ANY_GADGET_DIE_127040", "ANY_GADGET_DIE_127041", "ENTER_REGION_127042", "LUA_NOTIFY_127043", "LUA_NOTIFY_127044", "LUA_NOTIFY_127045", "ENTER_REGION_127050", "GADGET_STATE_CHANGE_127060" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 127017, 127021 },
		regions = { 127033 },
		triggers = { "GROUP_LOAD_127022", "CHALLENGE_SUCCESS_127026", "CHALLENGE_FAIL_127027", "SELECT_OPTION_127028", "CHALLENGE_SUCCESS_127030", "CHALLENGE_FAIL_127031", "GADGET_STATE_CHANGE_127032", "LEAVE_REGION_127033", "CHALLENGE_SUCCESS_127034", "SELECT_OPTION_127035", "CHALLENGE_SUCCESS_127036", "LUA_NOTIFY_127037", "LUA_NOTIFY_127038", "CHALLENGE_SUCCESS_127039", "LUA_NOTIFY_127043", "LUA_NOTIFY_127044", "LUA_NOTIFY_127045", "CHALLENGE_FAIL_127053", "GROUP_LOAD_127055" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第一波怪,
		monsters = { 127002, 127003, 127004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_127056" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 钥匙一拿到前怪,
		monsters = { 127010, 127011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_127051" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 钥匙二拿到后怪,
		monsters = { 127012, 127013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 钥匙二拿到前怪,
		monsters = { 127014, 127015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 第二波怪,
		monsters = { 127005, 127006, 127008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_127057" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 第三波怪,
		monsters = { 127009, 127016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_127058" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_127022(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_127022(context, evt)
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
function condition_EVENT_ENTER_REGION_127024(context, evt)
	if evt.param1 ~= 127024 then return false end
	
	-- 判断是区域127024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 127024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_127024(context, evt)
			ScriptLib.CreateFatherChallenge(context, 457, 263, 1800, {success=2,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 457, 1457, 264, {2,233,defs.keyNum,1,0,0}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 457)
			ScriptLib.AddExtraGroupSuite(context, 133315127, 2)
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock", defs.defaultNum)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127025(context, evt)
	if gadgets[evt.param1].gadget_id ~= 70330245 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127025(context, evt)
	local value = ScriptLib.GetGroupLogicStateValue(context,"SGV_WellUnlock")
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock",value +1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_127026(context, evt)
	-- 将configid为 127017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315127, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315127, EntityType.GADGET, 127021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_127027(context, evt)
	-- 将configid为 127017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"failDelay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failDelay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_127028(context, evt)
	-- 判断是gadgetid 127021 option_id 770
	if 127021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_127028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315127, EntityType.GADGET, 127021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 127017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_127029(context, evt)
	-- 判断是区域127029
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 127029 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_127029(context, evt)
	-- 终止识别id为457的挑战，并判定失败
		ScriptLib.StopChallenge(context, 457, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_127030(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_127031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315127, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 127017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_127032(context, evt)
	if 127017 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_127033(context, evt)
	-- 判断是区域127033
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 127033 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_127033(context, evt)
	-- 终止识别id为458的挑战，并判定失败
		ScriptLib.StopChallenge(context, 458, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_127034(context, evt)
			ScriptLib.AttachChildChallenge(context, 457, 1458, 265, {9,232,1,1,0,0}, {}, {success=1,fail=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_127035(context, evt)
	-- 判断是gadgetid 127021 option_id 770
	if 127021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_127035(context, evt)
			ScriptLib.CreateFatherChallenge(context, 458, 266, 1800, {success=1,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 458, 1270, 270, {180,7,234,1}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 458)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_127036(context, evt)
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
function action_EVENT_LUA_NOTIFY_127037(context, evt)
	-- 调用提示id为 1111352 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111352) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_127038(context, evt)
	-- 调用提示id为 1111353 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111353) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_127039(context, evt)
	-- 创建id为127021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 127021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127040(context, evt)
	if 127018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127040(context, evt)
	-- 将configid为 127020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_127041(context, evt)
	if 127019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_127041(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315127, 6)
	
	-- 将configid为 127047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127048 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127048, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 127049 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127049, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_127042(context, evt)
	if evt.param1 ~= 127042 then return false end
	
	-- 判断是区域127042
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 127042 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_127042(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315127, 7)
	
	-- 将configid为 127047 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127047, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_127043(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315127, 4)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_127044(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315127, 8)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_127045(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315127, 9)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_127050(context, evt)
	if evt.param1 ~= 127050 then return false end
	
	-- 判断是区域127050
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 127050 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_127050(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315127, 5)
	
	-- 将configid为 127046 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127046, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_127051(context, evt)
	--判断死亡怪物的configid是否为 127010
	if evt.param1 ~= 127010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127051(context, evt)
	-- 将configid为 127046 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127046, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_127052(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_127053(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_127054(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315127, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 127017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_127055(context, evt)
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_127055(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315127, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 127017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315127, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_127056(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127056(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_127057(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127057(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_127058(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127058(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_127059(context, evt)
	if "failDelay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_127059(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315127, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_127060(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315127, 127048) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_127060(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315127, EntityType.GADGET, 127048 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end