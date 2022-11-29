-- 基础信息
local base_info = {
	group_id = 199001021
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
	{ config_id = 21002, gadget_id = 71700288, pos = { x = 739.280, y = 120.276, z = 266.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021001, name = "QUEST_START_21001", event = EventType.EVENT_QUEST_START, source = "4007701", condition = "", action = "action_EVENT_QUEST_START_21001", trigger_count = 0 },
	{ config_id = 1021003, name = "QUEST_FINISH_21003", event = EventType.EVENT_QUEST_FINISH, source = "4007709", condition = "", action = "action_EVENT_QUEST_FINISH_21003", trigger_count = 0 }
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
		triggers = { "QUEST_START_21001", "QUEST_FINISH_21003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_21001(context, evt)
	-- 创建id为21002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_21003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001021, EntityType.GADGET, 21002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end