-- 基础信息
local base_info = {
	group_id = 199003031
}

-- DEFS_MISCS
local defs = {
    target_leveltag = 21,
    pos = { x=-720, y=121, z=401},
    rot = {x=0, y=0, z=1},
    radius = 2,
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
	[31001] = { config_id = 31001, gadget_id = 70310399, pos = { x = -758.118, y = 205.799, z = -17.973 }, rot = { x = 357.388, y = 262.780, z = 335.878 }, level = 20, persistent = true, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1031002, name = "GROUP_LOAD_31002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_31002", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 31001 },
		regions = { },
		triggers = { "GROUP_LOAD_31002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_31002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_31002(context, evt)
	 if ScriptLib.GetHostQuestState(context,4007501)==2 or ScriptLib.GetHostQuestState(context,4007601)==2 then
	ScriptLib.RefreshGroup(context, { group_id = 199003031, suite = 2 })
	
	else
	ScriptLib.RefreshGroup(context, { group_id = 199003031, suite = 1 })
	
	end
	return 0
end

require "V2_8/MonaPortal"