-- 基础信息
local base_info = {
	group_id = 133223270
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
	{ config_id = 270001, gadget_id = 70950099, pos = { x = -6031.045, y = 200.000, z = -2787.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, fishing_id = 3009, fishing_areas = { 300043 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1270002, name = "FISHING_STOP_270002", event = EventType.EVENT_FISHING_STOP, source = "", condition = "condition_EVENT_FISHING_STOP_270002", action = "action_EVENT_FISHING_STOP_270002", trigger_count = 0 },
	{ config_id = 1270003, name = "FISHING_QTE_FINISH_270003", event = EventType.EVENT_FISHING_QTE_FINISH, source = "", condition = "condition_EVENT_FISHING_QTE_FINISH_270003", action = "action_EVENT_FISHING_QTE_FINISH_270003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fishing_count", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 270004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6051.248, y = 200.876, z = -2777.630 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1270004, name = "ENTER_REGION_270004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 270001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 270001 },
		regions = { },
		triggers = { "FISHING_STOP_270002", "FISHING_QTE_FINISH_270003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_FISHING_STOP_270002(context, evt)
	-- 判断变量"fishing_count"为1
	if ScriptLib.GetGroupVariableValue(context, "fishing_count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_FISHING_STOP_270002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72208_FinishMan_Start") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_FISHING_QTE_FINISH_270003(context, evt)
	if 1 ~= evt.param2 then
		return false
	elseif 0 ~= evt.param1 and 0 ~= 0 then
	  return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_FISHING_QTE_FINISH_270003(context, evt)
	-- 将本组内变量名为 "fishing_count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fishing_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end