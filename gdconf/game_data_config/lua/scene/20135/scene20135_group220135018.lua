-- 基础信息
local base_info = {
	group_id = 220135018
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
	{ config_id = 18001, gadget_id = 70310333, pos = { x = 103.083, y = 101.159, z = -5.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018002, name = "GROUP_LOAD_18002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_18002", trigger_count = 0 },
	{ config_id = 1018003, name = "GROUP_LOAD_18003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_18003", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_18002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 18001 },
		regions = { },
		triggers = { "GROUP_LOAD_18003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_18002(context, evt)
			    if ScriptLib.GetHostQuestState(context,4006614)==2 then
				ScriptLib.RefreshGroup(context, { group_id = 220135018, suite = 2 }) 
				end
			
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18003(context, evt)
			    if ScriptLib.GetHostQuestState(context,4006615)==3 then
				ScriptLib.RefreshGroup(context, { group_id = 220135018, suite = 1 }) 
				end
			
			return 0
end