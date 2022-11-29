-- 基础信息
local base_info = {
	group_id = 133212556
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 556001, monster_id = 21010401, pos = { x = -3511.140, y = 206.015, z = -2805.167 }, rot = { x = 0.000, y = 356.515, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 556002, monster_id = 21010401, pos = { x = -3506.887, y = 206.061, z = -2803.188 }, rot = { x = 0.000, y = 9.722, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 556003, monster_id = 21010701, pos = { x = -3518.502, y = 200.281, z = -2783.042 }, rot = { x = 0.000, y = 294.551, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 556004, monster_id = 21010401, pos = { x = -3503.371, y = 200.086, z = -2786.177 }, rot = { x = 0.000, y = 58.578, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 556005, monster_id = 21010401, pos = { x = -3501.549, y = 200.072, z = -2789.504 }, rot = { x = 0.000, y = 53.539, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 556006, monster_id = 21010501, pos = { x = -3504.325, y = 206.045, z = -2802.686 }, rot = { x = 0.000, y = 0.452, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 556007, monster_id = 21011001, pos = { x = -3508.141, y = 206.006, z = -2804.240 }, rot = { x = 0.000, y = 316.190, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 556008, monster_id = 21011001, pos = { x = -3501.966, y = 200.041, z = -2786.072 }, rot = { x = 0.000, y = 251.729, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 13 },
	{ config_id = 556009, monster_id = 21011001, pos = { x = -3501.919, y = 200.072, z = -2788.116 }, rot = { x = 0.000, y = 267.898, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 13 },
	{ config_id = 556010, monster_id = 21010401, pos = { x = -3513.802, y = 200.182, z = -2797.667 }, rot = { x = 0.000, y = 229.765, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 556011, monster_id = 21010401, pos = { x = -3515.203, y = 200.453, z = -2795.125 }, rot = { x = 0.000, y = 231.796, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 556012, gadget_id = 70290059, pos = { x = -3504.440, y = 199.997, z = -2804.971 }, rot = { x = 0.000, y = 14.842, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556013, gadget_id = 70220075, pos = { x = -3513.193, y = 200.074, z = -2783.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556014, gadget_id = 70220075, pos = { x = -3499.751, y = 200.060, z = -2787.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556015, gadget_id = 70220075, pos = { x = -3506.240, y = 206.069, z = -2803.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556016, gadget_id = 70220075, pos = { x = -3513.239, y = 200.366, z = -2795.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556017, gadget_id = 70220075, pos = { x = -3512.319, y = 200.262, z = -2795.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556018, gadget_id = 70300106, pos = { x = -3518.251, y = 200.519, z = -2797.466 }, rot = { x = 0.000, y = 327.164, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556019, gadget_id = 70300106, pos = { x = -3516.904, y = 200.221, z = -2799.623 }, rot = { x = 0.000, y = 331.917, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556020, gadget_id = 70220075, pos = { x = -3513.858, y = 200.021, z = -2782.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556021, gadget_id = 70220026, pos = { x = -3498.959, y = 199.997, z = -2788.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556022, gadget_id = 70220075, pos = { x = -3514.636, y = 200.089, z = -2783.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556023, gadget_id = 70220075, pos = { x = -3514.201, y = 200.131, z = -2783.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556024, gadget_id = 70220075, pos = { x = -3500.111, y = 200.041, z = -2786.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556025, gadget_id = 70290059, pos = { x = -3507.452, y = 199.997, z = -2805.267 }, rot = { x = 0.000, y = 14.842, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556026, gadget_id = 70300084, pos = { x = -3493.851, y = 199.886, z = -2782.569 }, rot = { x = 0.000, y = 332.974, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556027, gadget_id = 70300102, pos = { x = -3522.112, y = 200.250, z = -2781.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556028, gadget_id = 70300087, pos = { x = -3522.164, y = 200.710, z = -2781.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556029, gadget_id = 70300106, pos = { x = -3499.305, y = 199.997, z = -2783.799 }, rot = { x = 0.000, y = 141.856, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 556030, gadget_id = 70300106, pos = { x = -3497.779, y = 200.004, z = -2786.962 }, rot = { x = 0.000, y = 141.856, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 556031, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3510.537, y = 200.361, z = -2792.097 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1556031, name = "ENTER_REGION_556031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_556031", action = "action_EVENT_ENTER_REGION_556031", forbid_guest = false },
	{ config_id = 1556032, name = "VARIABLE_CHANGE_556032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_556032", action = "action_EVENT_VARIABLE_CHANGE_556032", trigger_count = 0 },
	{ config_id = 1556033, name = "VARIABLE_CHANGE_556033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_556033", action = "action_EVENT_VARIABLE_CHANGE_556033", trigger_count = 0 },
	{ config_id = 1556034, name = "GROUP_LOAD_556034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_556034", trigger_count = 0 },
	{ config_id = 1556035, name = "HUNTING_FINISH_FINAL_556035", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_556035" }
}

-- 点位
points = {
	{ config_id = 556036, pos = { x = -3517.583, y = 200.545, z = -2789.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 13 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_BOSS_DEAD", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_556034", "HUNTING_FINISH_FINAL_556035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 丘丘营地布设,
		monsters = { },
		gadgets = { 556025, 556026, 556027, 556028, 556029, 556030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 雷暴王【回血】【小怪组】,
		monsters = { 556001, 556002, 556003, 556004, 556005 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_556032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 雷暴王【炸药桶】【营地布设】,
		monsters = { },
		gadgets = { 556012, 556018, 556019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 雷暴王【炸药桶】【小怪组】,
		monsters = { 556006, 556007, 556008, 556009, 556010, 556011 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_556033" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 雷暴王【炸药桶】【炸药桶】,
		monsters = { },
		gadgets = { 556013, 556014, 556015, 556016, 556017, 556020, 556021, 556022, 556023, 556024 },
		regions = { 556031 },
		triggers = { "ENTER_REGION_556031" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_556031(context, evt)
	if evt.param1 ~= 556031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_556031(context, evt)
	-- 调用提示id为 500071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_556032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133212556) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_556032(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212556, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_556033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133212556) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_556033(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212556, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_556034(context, evt)
	-- 初始化table
	    local suite_table = {}
	
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	        return -1
	    end
	
	-- 根据HuntingData表的配置来激活对应的suite
	    if 0~= ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context) then
	        suite_table = ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context)
	        for i,suite_id in ipairs (suite_table) do
	            ScriptLib.AddExtraGroupSuite(context, 133212556, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_556035(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end