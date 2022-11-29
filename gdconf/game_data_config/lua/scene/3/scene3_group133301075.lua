-- 基础信息
local base_info = {
	group_id = 133301075
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
	{ config_id = 75001, gadget_id = 70310011, pos = { x = -935.815, y = 384.095, z = 3230.635 }, rot = { x = 0.000, y = 115.608, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 75002, gadget_id = 70310011, pos = { x = -932.304, y = 382.409, z = 3235.354 }, rot = { x = 0.000, y = 64.039, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 75003, gadget_id = 70310011, pos = { x = -936.811, y = 382.547, z = 3236.163 }, rot = { x = 0.000, y = 330.761, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 75004, gadget_id = 70310011, pos = { x = -933.866, y = 381.382, z = 3239.990 }, rot = { x = 0.000, y = 347.259, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1075005, name = "GADGET_STATE_CHANGE_75005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75005", action = "action_EVENT_GADGET_STATE_CHANGE_75005", trigger_count = 0 }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 75002, 75003, 75004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 75001, 75002, 75003, 75004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_75005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_75005(context, evt)
	if 75001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 75002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 75003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	if 75004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_75005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7304919_FINISH") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end