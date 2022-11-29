-- 基础信息
local base_info = {
	group_id = 133103352
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 352005, monster_id = 21010101, pos = { x = 791.464, y = 311.612, z = 1769.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, area_id = 6 },
	{ config_id = 352007, monster_id = 21010701, pos = { x = 779.345, y = 303.620, z = 1742.184 }, rot = { x = 0.000, y = 330.204, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 352001, gadget_id = 70360045, pos = { x = 791.448, y = 311.155, z = 1770.049 }, rot = { x = 0.000, y = 137.288, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 352002, gadget_id = 70360045, pos = { x = 779.441, y = 303.202, z = 1742.226 }, rot = { x = 0.000, y = 349.661, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 352003, gadget_id = 70360045, pos = { x = 738.182, y = 312.472, z = 1748.125 }, rot = { x = 2.602, y = 237.105, z = 4.218 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1352004, name = "GADGET_STATE_CHANGE_352004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352004", action = "action_EVENT_GADGET_STATE_CHANGE_352004" },
	{ config_id = 1352009, name = "GADGET_STATE_CHANGE_352009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352009", action = "action_EVENT_GADGET_STATE_CHANGE_352009" },
	{ config_id = 1352011, name = "GADGET_STATE_CHANGE_352011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352011", action = "action_EVENT_GADGET_STATE_CHANGE_352011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 352006, monster_id = 28050102, pos = { x = 791.891, y = 311.518, z = 1769.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, area_id = 6 },
		{ config_id = 352008, monster_id = 28050102, pos = { x = 780.026, y = 303.581, z = 1742.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", isOneoff = true, area_id = 6 }
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
		gadgets = { 352001, 352002, 352003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_352004", "GADGET_STATE_CHANGE_352009", "GADGET_STATE_CHANGE_352011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 352005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 352007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_352004(context, evt)
	if 352001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103352, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352009(context, evt)
	if 352002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103352, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352011(context, evt)
	if 352003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7226106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end