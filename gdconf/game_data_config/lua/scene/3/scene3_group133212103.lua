-- 基础信息
local base_info = {
	group_id = 133212103
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 103005, gadget_id = 70500000, pos = { x = -3929.141, y = 240.919, z = -2266.944 }, rot = { x = 0.000, y = 47.006, z = 0.000 }, level = 27, point_type = 9170, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 103007, gadget_id = 70330105, pos = { x = -3924.825, y = 240.774, z = -2267.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1103008, name = "GATHER_103008", event = EventType.EVENT_GATHER, source = "103005", condition = "condition_EVENT_GATHER_103008", action = "action_EVENT_GATHER_103008", trigger_count = 0 },
	{ config_id = 1103009, name = "QUEST_START_103009", event = EventType.EVENT_QUEST_START, source = "7213208", condition = "", action = "action_EVENT_QUEST_START_103009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 103001, monster_id = 25080101, pos = { x = -4214.139, y = 200.525, z = -2515.496 }, rot = { x = 0.000, y = 103.739, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1003, area_id = 13 },
		{ config_id = 103002, monster_id = 25080101, pos = { x = -4213.804, y = 199.853, z = -2511.683 }, rot = { x = 0.000, y = 92.875, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1003, area_id = 13 },
		{ config_id = 103004, monster_id = 25100101, pos = { x = -4210.304, y = 200.577, z = -2512.000 }, rot = { x = 0.000, y = 97.840, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1002, area_id = 13 },
		{ config_id = 103006, monster_id = 25080101, pos = { x = -4211.665, y = 199.045, z = -2507.574 }, rot = { x = 0.000, y = 123.580, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1003, area_id = 13 }
	},
	regions = {
		{ config_id = 103003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3934.590, y = 240.039, z = -2267.053 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1103003, name = "ENTER_REGION_103003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_103003", action = "" }
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
		gadgets = { 103005, 103007 },
		regions = { },
		triggers = { "GATHER_103008", "QUEST_START_103009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_103008(context, evt)
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_103008(context, evt)
	-- 调用提示id为 321231071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321231071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_103009(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end