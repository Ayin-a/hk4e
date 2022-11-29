-- 基础信息
local base_info = {
	group_id = 155006042
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
	{ config_id = 42002, npc_id = 20499, pos = { x = 635.629, y = 261.396, z = 567.761 }, rot = { x = 0.000, y = 109.800, z = 0.000 }, area_id = 200 }
}

-- 装置
gadgets = {
	{ config_id = 42001, gadget_id = 70710091, pos = { x = 635.500, y = 261.152, z = 568.368 }, rot = { x = 0.000, y = 161.708, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042003, name = "QUEST_FINISH_42003", event = EventType.EVENT_QUEST_FINISH, source = "7225401", condition = "", action = "action_EVENT_QUEST_FINISH_42003", trigger_count = 0 }
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
		gadgets = { 42001 },
		regions = { },
		triggers = { "QUEST_FINISH_42003" },
		npcs = { 42002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_42003(context, evt)
	-- 针对当前group内变量名为 "activeCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "activeCount", 1, 155006048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end