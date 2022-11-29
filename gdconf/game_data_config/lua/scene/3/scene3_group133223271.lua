-- 基础信息
local base_info = {
	group_id = 133223271
}

-- Trigger变量
local defs = {
	order = {271006,271007,271008},
	region = 271013,
	region_Enter = 271013,
	region_Leave = 271020,
	challenge_id = 2002003
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
	{ config_id = 271006, gadget_id = 70800043, pos = { x = -6652.147, y = 193.481, z = -2644.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 271007, gadget_id = 70800043, pos = { x = -6646.266, y = 193.481, z = -2662.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 271008, gadget_id = 70800043, pos = { x = -6665.896, y = 193.510, z = -2669.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 271012, gadget_id = 70010006, pos = { x = -6650.266, y = 200.165, z = -2690.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 271022, gadget_id = 70800044, pos = { x = -6652.147, y = 193.481, z = -2644.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 271023, gadget_id = 70800044, pos = { x = -6646.266, y = 193.481, z = -2662.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 271024, gadget_id = 70800044, pos = { x = -6665.896, y = 193.510, z = -2669.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 271013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -6671.827, y = 193.481, z = -2670.206 }, area_id = 18 },
	{ config_id = 271020, shape = RegionShape.SPHERE, radius = 70, pos = { x = -6649.435, y = 200.148, z = -2690.331 }, area_id = 18 },
	{ config_id = 271021, shape = RegionShape.SPHERE, radius = 30, pos = { x = -6659.852, y = 193.481, z = -2657.117 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1271014, name = "SELECT_OPTION_271014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_271014", action = "action_EVENT_SELECT_OPTION_271014", trigger_count = 0 },
	{ config_id = 1271015, name = "SELECT_OPTION_271015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_271015", action = "action_EVENT_SELECT_OPTION_271015", trigger_count = 0 },
	{ config_id = 1271016, name = "SELECT_OPTION_271016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_271016", action = "action_EVENT_SELECT_OPTION_271016", trigger_count = 0 },
	{ config_id = 1271021, name = "ENTER_REGION_271021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_271021", action = "action_EVENT_ENTER_REGION_271021" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 271001, monster_id = 21020201, pos = { x = -6655.532, y = 193.481, z = -2647.306 }, rot = { x = 0.000, y = 73.821, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 18 },
		{ config_id = 271002, monster_id = 21010301, pos = { x = -6648.390, y = 193.518, z = -2641.736 }, rot = { x = 0.000, y = 191.964, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 18 },
		{ config_id = 271003, monster_id = 21010301, pos = { x = -6652.188, y = 193.481, z = -2652.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 18 },
		{ config_id = 271004, monster_id = 21010601, pos = { x = -6646.332, y = 193.481, z = -2650.008 }, rot = { x = 0.000, y = 307.674, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 18 },
		{ config_id = 271005, monster_id = 21010601, pos = { x = -6654.910, y = 193.492, z = -2639.302 }, rot = { x = 0.000, y = 148.471, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 18 }
	},
	gadgets = {
		{ config_id = 271009, gadget_id = 70800043, pos = { x = -6691.645, y = 201.785, z = -2689.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
		{ config_id = 271010, gadget_id = 70211111, pos = { x = -6695.560, y = 199.696, z = -2646.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
		{ config_id = 271011, gadget_id = 70300114, pos = { x = -6650.605, y = 193.481, z = -2645.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 }
	},
	triggers = {
		{ config_id = 1271017, name = "SELECT_OPTION_271017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_271017", action = "action_EVENT_SELECT_OPTION_271017" },
		{ config_id = 1271018, name = "GADGET_STATE_CHANGE_271018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_271018", action = "action_EVENT_GADGET_STATE_CHANGE_271018" },
		{ config_id = 1271019, name = "ANY_MONSTER_DIE_271019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_271019", action = "action_EVENT_ANY_MONSTER_DIE_271019" }
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
		gadgets = { 271012 },
		regions = { 271013, 271020, 271021 },
		triggers = { "SELECT_OPTION_271014", "SELECT_OPTION_271015", "SELECT_OPTION_271016", "ENTER_REGION_271021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_271014(context, evt)
	-- 判断是gadgetid 271006 option_id 92
	if 271006 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_271014(context, evt)
	-- 调用提示id为 31070407 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31070407) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为271022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 271022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_271015(context, evt)
	-- 判断是gadgetid 271007 option_id 92
	if 271007 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_271015(context, evt)
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为271023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 271023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_271016(context, evt)
	-- 判断是gadgetid 271008 option_id 92
	if 271008 ~= evt.param1 then
		return false	
	end
	
	if 92 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_271016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133223271") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 31070408 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31070408) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "LD_Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "LD_Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为271024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 271024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_271021(context, evt)
	if evt.param1 ~= 271021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_271021(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-6659,y=193,z=-2657}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31070405, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

require "V2_2/Ayesha"