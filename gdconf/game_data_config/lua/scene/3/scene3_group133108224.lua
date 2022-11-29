-- 基础信息
local base_info = {
	group_id = 133108224
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224001, monster_id = 21010101, pos = { x = -79.397, y = 258.374, z = -30.569 }, rot = { x = 0.000, y = 320.103, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9002, area_id = 7 },
	{ config_id = 224003, monster_id = 21010101, pos = { x = -79.977, y = 258.048, z = -38.333 }, rot = { x = 0.000, y = 139.997, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9013, area_id = 7 },
	{ config_id = 224004, monster_id = 21010101, pos = { x = -83.374, y = 258.418, z = -30.637 }, rot = { x = 0.000, y = 225.171, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9011, area_id = 7 },
	{ config_id = 224005, monster_id = 21010101, pos = { x = -76.328, y = 258.599, z = -30.317 }, rot = { x = 0.000, y = 128.357, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9016, area_id = 7 },
	{ config_id = 224006, monster_id = 21010601, pos = { x = -76.215, y = 260.504, z = -24.344 }, rot = { x = 0.000, y = 243.115, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 7 },
	{ config_id = 224007, monster_id = 21010401, pos = { x = -86.010, y = 258.594, z = -31.180 }, rot = { x = 0.000, y = 64.606, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 7 },
	{ config_id = 224008, monster_id = 21010401, pos = { x = -76.487, y = 259.838, z = -26.367 }, rot = { x = 0.000, y = 242.576, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 7 },
	{ config_id = 224009, monster_id = 21010601, pos = { x = -87.698, y = 258.653, z = -32.090 }, rot = { x = 0.000, y = 43.361, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 7 },
	{ config_id = 224010, monster_id = 21030201, pos = { x = -82.398, y = 258.248, z = -21.853 }, rot = { x = 0.000, y = 201.154, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 7 },
	{ config_id = 224011, monster_id = 21010201, pos = { x = -80.701, y = 258.331, z = -22.906 }, rot = { x = 0.000, y = 159.171, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 7 },
	{ config_id = 224015, monster_id = 21010201, pos = { x = -83.320, y = 258.044, z = -24.242 }, rot = { x = 0.000, y = 157.656, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 7 },
	{ config_id = 224016, monster_id = 21011201, pos = { x = -81.258, y = 257.924, z = -24.809 }, rot = { x = 0.000, y = 160.422, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 224002, gadget_id = 70300089, pos = { x = -81.074, y = 258.266, z = -28.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 224013, gadget_id = 70710292, pos = { x = -75.987, y = 258.870, z = -30.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 224014, gadget_id = 70710292, pos = { x = -74.265, y = 258.971, z = -28.469 }, rot = { x = 0.000, y = 208.443, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 224020, gadget_id = 70710292, pos = { x = -79.018, y = 258.699, z = -39.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 224021, gadget_id = 70710292, pos = { x = -83.192, y = 258.199, z = -41.008 }, rot = { x = 0.000, y = 330.497, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 7 },
	{ config_id = 224022, gadget_id = 70710292, pos = { x = -84.343, y = 257.921, z = -32.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 224012, shape = RegionShape.SPHERE, radius = 15, pos = { x = -80.903, y = 258.281, z = -28.415 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1224012, name = "ENTER_REGION_224012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_224012", action = "action_EVENT_ENTER_REGION_224012" },
	{ config_id = 1224017, name = "ANY_MONSTER_DIE_224017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_224017", action = "action_EVENT_ANY_MONSTER_DIE_224017" },
	{ config_id = 1224018, name = "ANY_MONSTER_DIE_224018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_224018", action = "action_EVENT_ANY_MONSTER_DIE_224018" },
	{ config_id = 1224019, name = "ANY_MONSTER_DIE_224019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_224019", action = "action_EVENT_ANY_MONSTER_DIE_224019" }
}

-- 变量
variables = {
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
		monsters = { 224001, 224003, 224004, 224005 },
		gadgets = { 224002, 224013, 224014, 224020, 224021, 224022 },
		regions = { 224012 },
		triggers = { "ENTER_REGION_224012", "ANY_MONSTER_DIE_224017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 224006, 224007, 224008, 224009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_224018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 224010, 224011, 224015, 224016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_224019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
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
function condition_EVENT_ENTER_REGION_224012(context, evt)
	if evt.param1 ~= 224012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_224012(context, evt)
	-- 调用提示id为 1110442 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110442) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_224017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_224017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108224, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-81.72137,y=258.2238,z=-29.64276}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-81.72137,y=258.2238,z=-29.64276}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110443, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_224018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_224018(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108224, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-82.4353,y=258.1418,z=-26.88721}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_224019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_224019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331082241") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-82.21783,y=258.179,z=-25.86346}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110470, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end