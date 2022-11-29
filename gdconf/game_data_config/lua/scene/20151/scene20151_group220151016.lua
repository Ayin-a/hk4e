-- 基础信息
local base_info = {
	group_id = 220151016
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
	{ config_id = 16001, gadget_id = 70290196, pos = { x = 608.537, y = 64.667, z = 481.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16003, gadget_id = 70211121, pos = { x = 640.538, y = 57.985, z = 467.073 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, level = 1, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016002, name = "QUEST_FINISH_16002", event = EventType.EVENT_QUEST_FINISH, source = "302106", condition = "", action = "action_EVENT_QUEST_FINISH_16002" }
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
		gadgets = { 16001 },
		regions = { },
		triggers = { "QUEST_FINISH_16002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 16003 },
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
function action_EVENT_QUEST_FINISH_16002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220151016, 2)
	
	return 0
end