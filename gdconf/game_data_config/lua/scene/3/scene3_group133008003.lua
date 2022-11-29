-- 基础信息
local base_info = {
	group_id = 133008003
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
	{ config_id = 3001, gadget_id = 70500000, pos = { x = 1510.248, y = 266.411, z = -693.181 }, rot = { x = 30.533, y = 352.387, z = 16.114 }, level = 30, point_type = 9126, isOneoff = true, persistent = true, autopick = true, area_id = 10 },
	{ config_id = 3003, gadget_id = 70220046, pos = { x = 1510.657, y = 267.352, z = -693.321 }, rot = { x = 3.307, y = 321.589, z = 357.381 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003002, name = "GATHER_3002", event = EventType.EVENT_GATHER, source = "3001", condition = "", action = "action_EVENT_GATHER_3002" },
	{ config_id = 1003004, name = "ANY_GADGET_DIE_3004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3004", action = "action_EVENT_ANY_GADGET_DIE_3004" }
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
		gadgets = { 3003 },
		regions = { },
		triggers = { "GATHER_3002", "ANY_GADGET_DIE_3004" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_3002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133008003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3004(context, evt)
	if 3003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3004(context, evt)
	-- 创建id为3001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end