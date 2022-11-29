-- 基础信息
local base_info = {
	group_id = 133004927
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
	{ config_id = 927019, npc_id = 2003045, pos = { x = 2319.322, y = 250.623, z = -756.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 927020, npc_id = 2003046, pos = { x = 2319.323, y = 250.623, z = -756.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 927021, npc_id = 2003047, pos = { x = 2319.328, y = 250.623, z = -756.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 927022, npc_id = 2003048, pos = { x = 2319.327, y = 250.623, z = -756.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 927023, npc_id = 2003049, pos = { x = 2319.328, y = 250.623, z = -756.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 927024, npc_id = 2003050, pos = { x = 2319.324, y = 250.623, z = -756.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 }
}

-- 装置
gadgets = {
	{ config_id = 927001, gadget_id = 70710318, pos = { x = 2319.257, y = 249.917, z = -756.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, interact_id = 16, area_id = 1 },
	{ config_id = 927002, gadget_id = 70710319, pos = { x = 2319.257, y = 249.917, z = -756.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, interact_id = 17, area_id = 1 },
	{ config_id = 927003, gadget_id = 70710320, pos = { x = 2319.257, y = 249.917, z = -756.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, interact_id = 18, area_id = 1 },
	{ config_id = 927004, gadget_id = 70710321, pos = { x = 2319.257, y = 249.917, z = -756.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, interact_id = 19, area_id = 1 },
	{ config_id = 927005, gadget_id = 70710322, pos = { x = 2319.257, y = 249.917, z = -756.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, interact_id = 20, area_id = 1 },
	{ config_id = 927006, gadget_id = 70710323, pos = { x = 2319.324, y = 249.917, z = -756.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, interact_id = 21, area_id = 1 },
	-- 从suite2切到8
	{ config_id = 927007, gadget_id = 70710312, pos = { x = 2319.703, y = 251.144, z = -755.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	-- 从suite3切到9
	{ config_id = 927008, gadget_id = 70710313, pos = { x = 2319.703, y = 251.144, z = -755.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	-- 从suite4切到10
	{ config_id = 927015, gadget_id = 70710314, pos = { x = 2319.703, y = 251.144, z = -755.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	-- 从suite5切到11
	{ config_id = 927016, gadget_id = 70710315, pos = { x = 2319.703, y = 251.144, z = -755.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	-- 从suite6切到12
	{ config_id = 927017, gadget_id = 70710316, pos = { x = 2319.703, y = 251.144, z = -755.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	-- 从suite7切到13
	{ config_id = 927018, gadget_id = 70710317, pos = { x = 2319.703, y = 251.184, z = -755.384 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1927009, name = "GADGET_STATE_CHANGE_927009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_927009", action = "action_EVENT_GADGET_STATE_CHANGE_927009", trigger_count = 0 },
	{ config_id = 1927010, name = "GADGET_STATE_CHANGE_927010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_927010", action = "action_EVENT_GADGET_STATE_CHANGE_927010", trigger_count = 0 },
	{ config_id = 1927011, name = "GADGET_STATE_CHANGE_927011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_927011", action = "action_EVENT_GADGET_STATE_CHANGE_927011", trigger_count = 0 },
	{ config_id = 1927012, name = "GADGET_STATE_CHANGE_927012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_927012", action = "action_EVENT_GADGET_STATE_CHANGE_927012", trigger_count = 0 },
	{ config_id = 1927013, name = "GADGET_STATE_CHANGE_927013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_927013", action = "action_EVENT_GADGET_STATE_CHANGE_927013", trigger_count = 0 },
	{ config_id = 1927014, name = "GADGET_STATE_CHANGE_927014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_927014", action = "action_EVENT_GADGET_STATE_CHANGE_927014", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 927001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_927009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 927002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_927010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 927003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_927011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 927004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_927012" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 927005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_927013" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 927006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_927014" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 927007 },
		regions = { },
		triggers = { },
		npcs = { 927019 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 927008 },
		regions = { },
		triggers = { },
		npcs = { 927020 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 927015 },
		regions = { },
		triggers = { },
		npcs = { 927021 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 927016 },
		regions = { },
		triggers = { },
		npcs = { 927022 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 927017 },
		regions = { },
		triggers = { },
		npcs = { 927023 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 927018 },
		regions = { },
		triggers = { },
		npcs = { 927024 },
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
function condition_EVENT_GADGET_STATE_CHANGE_927009(context, evt)
	if 927001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_927009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4141308") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004927, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_927010(context, evt)
	if 927002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_927010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4141309") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004927, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_927011(context, evt)
	if 927003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_927011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4141310") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004927, suite = 10 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_927012(context, evt)
	if 927004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_927012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4141311") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004927, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_927013(context, evt)
	if 927005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_927013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4141312") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004927, suite = 12 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_927014(context, evt)
	if 927006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_927014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4141313") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004927, suite = 13 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end