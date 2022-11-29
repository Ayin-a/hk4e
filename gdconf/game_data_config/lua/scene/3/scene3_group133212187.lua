-- 基础信息
local base_info = {
	group_id = 133212187
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 187002, monster_id = 21010401, pos = { x = -3511.147, y = 206.018, z = -2805.166 }, rot = { x = 0.000, y = 356.515, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 187003, monster_id = 21010401, pos = { x = -3506.894, y = 206.064, z = -2803.188 }, rot = { x = 0.000, y = 9.722, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 187005, monster_id = 21010701, pos = { x = -3518.509, y = 200.284, z = -2783.041 }, rot = { x = 0.000, y = 294.551, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 187008, monster_id = 21010401, pos = { x = -3503.378, y = 200.089, z = -2786.177 }, rot = { x = 0.000, y = 58.578, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 187009, monster_id = 21010401, pos = { x = -3501.556, y = 200.075, z = -2789.504 }, rot = { x = 0.000, y = 53.539, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 187010, monster_id = 21010501, pos = { x = -3504.332, y = 206.048, z = -2802.685 }, rot = { x = 0.000, y = 0.452, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 187011, monster_id = 21011001, pos = { x = -3508.148, y = 206.009, z = -2804.240 }, rot = { x = 0.000, y = 316.190, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 187018, monster_id = 21011001, pos = { x = -3501.973, y = 200.045, z = -2786.071 }, rot = { x = 0.000, y = 251.729, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 13 },
	{ config_id = 187019, monster_id = 21011001, pos = { x = -3501.926, y = 200.075, z = -2788.116 }, rot = { x = 0.000, y = 267.898, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 13 },
	{ config_id = 187056, monster_id = 21010401, pos = { x = -3513.809, y = 200.185, z = -2797.667 }, rot = { x = 0.000, y = 229.765, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 187057, monster_id = 21010401, pos = { x = -3515.210, y = 200.456, z = -2795.125 }, rot = { x = 0.000, y = 231.796, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 187001, gadget_id = 70290059, pos = { x = -3504.447, y = 200.000, z = -2804.971 }, rot = { x = 0.000, y = 14.842, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187014, gadget_id = 70220075, pos = { x = -3513.200, y = 200.077, z = -2783.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187015, gadget_id = 70220075, pos = { x = -3499.758, y = 200.063, z = -2787.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187016, gadget_id = 70220075, pos = { x = -3506.247, y = 206.072, z = -2803.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187017, gadget_id = 70220075, pos = { x = -3513.245, y = 200.369, z = -2795.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187021, gadget_id = 70220075, pos = { x = -3512.326, y = 200.265, z = -2795.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187022, gadget_id = 70300106, pos = { x = -3518.258, y = 200.522, z = -2797.465 }, rot = { x = 0.000, y = 327.164, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187023, gadget_id = 70300106, pos = { x = -3516.911, y = 200.225, z = -2799.622 }, rot = { x = 0.000, y = 331.917, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187024, gadget_id = 70220075, pos = { x = -3513.865, y = 200.024, z = -2782.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187025, gadget_id = 70220026, pos = { x = -3498.966, y = 200.000, z = -2788.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187032, gadget_id = 70220075, pos = { x = -3514.643, y = 200.092, z = -2783.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187043, gadget_id = 70220075, pos = { x = -3514.208, y = 200.135, z = -2783.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187045, gadget_id = 70220075, pos = { x = -3500.118, y = 200.045, z = -2786.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187047, gadget_id = 70290059, pos = { x = -3507.459, y = 200.000, z = -2805.266 }, rot = { x = 0.000, y = 14.842, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187049, gadget_id = 70300084, pos = { x = -3493.858, y = 199.889, z = -2782.568 }, rot = { x = 0.000, y = 332.974, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187052, gadget_id = 70300102, pos = { x = -3522.119, y = 200.253, z = -2781.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187053, gadget_id = 70300087, pos = { x = -3522.171, y = 200.713, z = -2781.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187054, gadget_id = 70300106, pos = { x = -3499.312, y = 200.000, z = -2783.798 }, rot = { x = 0.000, y = 141.856, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 187055, gadget_id = 70300106, pos = { x = -3497.786, y = 200.007, z = -2786.962 }, rot = { x = 0.000, y = 141.856, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 187020, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3510.544, y = 200.365, z = -2792.097 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1187020, name = "ENTER_REGION_187020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187020", action = "action_EVENT_ENTER_REGION_187020", forbid_guest = false },
	{ config_id = 1187046, name = "VARIABLE_CHANGE_187046", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_187046", action = "action_EVENT_VARIABLE_CHANGE_187046", trigger_count = 0 },
	{ config_id = 1187050, name = "VARIABLE_CHANGE_187050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_187050", action = "action_EVENT_VARIABLE_CHANGE_187050", trigger_count = 0 },
	{ config_id = 1187058, name = "GROUP_LOAD_187058", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_187058", trigger_count = 0 },
	{ config_id = 1187059, name = "HUNTING_FINISH_FINAL_187059", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_187059" }
}

-- 点位
points = {
	{ config_id = 187060, pos = { x = -3517.589, y = 200.549, z = -2789.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 13 }
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
		triggers = { "GROUP_LOAD_187058", "HUNTING_FINISH_FINAL_187059" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 丘丘营地布设,
		monsters = { },
		gadgets = { 187047, 187049, 187052, 187053, 187054, 187055 },
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
		monsters = { 187002, 187003, 187005, 187008, 187009 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_187046" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 雷暴王【炸药桶】【营地布设】,
		monsters = { },
		gadgets = { 187001, 187022, 187023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 雷暴王【炸药桶】【小怪组】,
		monsters = { 187010, 187011, 187018, 187019, 187056, 187057 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_187050" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 雷暴王【炸药桶】【炸药桶】,
		monsters = { },
		gadgets = { 187014, 187015, 187016, 187017, 187021, 187024, 187025, 187032, 187043, 187045 },
		regions = { 187020 },
		triggers = { "ENTER_REGION_187020" },
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
function condition_EVENT_ENTER_REGION_187020(context, evt)
	if evt.param1 ~= 187020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187020(context, evt)
	-- 调用提示id为 500071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_187046(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133212187) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187046(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212187, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_187050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133212187) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_187050(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212187, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_187058(context, evt)
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
	            ScriptLib.AddExtraGroupSuite(context, 133212187, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_187059(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end