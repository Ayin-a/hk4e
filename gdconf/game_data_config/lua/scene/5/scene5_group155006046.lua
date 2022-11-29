-- 基础信息
local base_info = {
	group_id = 155006046
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
	{ config_id = 46002, npc_id = 20503, pos = { x = -145.630, y = 253.032, z = 499.596 }, rot = { x = 17.589, y = 227.588, z = 15.116 }, area_id = 200 }
}

-- 装置
gadgets = {
	{ config_id = 46001, gadget_id = 70710091, pos = { x = -145.668, y = 252.571, z = 499.836 }, rot = { x = 358.029, y = 192.129, z = 9.560 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046003, name = "QUEST_FINISH_46003", event = EventType.EVENT_QUEST_FINISH, source = "7225801", condition = "", action = "action_EVENT_QUEST_FINISH_46003", trigger_count = 0 }
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
		gadgets = { 46001 },
		regions = { },
		triggers = { "QUEST_FINISH_46003" },
		npcs = { 46002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_46003(context, evt)
	-- 针对当前group内变量名为 "activeCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "activeCount", 1, 155006048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end