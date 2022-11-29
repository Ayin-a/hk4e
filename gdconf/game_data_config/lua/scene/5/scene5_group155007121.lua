-- 基础信息
local base_info = {
	group_id = 155007121
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
	{ config_id = 121001, gadget_id = 70500000, pos = { x = -425.793, y = 179.457, z = 1547.811 }, rot = { x = 17.400, y = 289.245, z = 358.535 }, level = 36, point_type = 9199, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1121002, name = "QUEST_START_121002", event = EventType.EVENT_QUEST_START, source = "7228201", condition = "", action = "action_EVENT_QUEST_START_121002", trigger_count = 0 }
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
		triggers = { "QUEST_START_121002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_121002(context, evt)
	-- 创建id为121001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 121001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end