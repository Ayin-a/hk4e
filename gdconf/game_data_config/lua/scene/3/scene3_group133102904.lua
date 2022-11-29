-- 基础信息
local base_info = {
	group_id = 133102904
}

-- Trigger变量
local defs = {
	gadget_1 = 904010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 904001, monster_id = 20011201, pos = { x = 1538.712, y = 251.361, z = 413.951 }, rot = { x = 0.000, y = 237.611, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 904002, monster_id = 20011201, pos = { x = 1534.797, y = 251.107, z = 415.049 }, rot = { x = 0.000, y = 194.705, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 904003, monster_id = 20011301, pos = { x = 1536.243, y = 251.781, z = 411.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 904004, monster_id = 26060101, pos = { x = 1530.334, y = 251.323, z = 414.464 }, rot = { x = 0.000, y = 303.683, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 904005, monster_id = 26060101, pos = { x = 1532.257, y = 251.121, z = 414.209 }, rot = { x = 0.000, y = 99.377, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 904006, monster_id = 26060101, pos = { x = 1532.841, y = 250.644, z = 416.712 }, rot = { x = 0.000, y = 273.266, z = 0.000 }, level = 18, drop_id = 1000100, disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 904007, gadget_id = 70500000, pos = { x = 1546.072, y = 251.860, z = 418.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9112, area_id = 5 },
	{ config_id = 904008, gadget_id = 70500000, pos = { x = 1538.584, y = 251.745, z = 407.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9114, area_id = 5 },
	{ config_id = 904009, gadget_id = 70500000, pos = { x = 1520.849, y = 250.886, z = 424.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9115, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 904010, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1537.266, y = 251.336, z = 414.425 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1904010, name = "ENTER_REGION_904010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_904010", action = "", trigger_count = 0 },
	{ config_id = 1904011, name = "ANY_MONSTER_DIE_904011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_904011", action = "action_EVENT_ANY_MONSTER_DIE_904011", trigger_count = 0 },
	{ config_id = 1904012, name = "ANY_MONSTER_DIE_904012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_904012", trigger_count = 0 },
	{ config_id = 1904013, name = "QUEST_START_904013", event = EventType.EVENT_QUEST_START, source = "2211503", condition = "condition_EVENT_QUEST_START_904013", action = "action_EVENT_QUEST_START_904013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_killed", value = 0, no_refresh = false }
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
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 904001, 904002, 904003 },
		gadgets = { },
		regions = { 904010 },
		triggers = { "ENTER_REGION_904010", "ANY_MONSTER_DIE_904011", "ANY_MONSTER_DIE_904012", "QUEST_START_904013" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 904007, 904008, 904009 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_904010(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2211502) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_904011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_904011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331029041") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_904012(context, evt)
	-- 将本组内变量名为 "monster_killed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_killed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_904013(context, evt)
	-- 判断变量"monster_killed"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_killed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_904013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133102904, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end