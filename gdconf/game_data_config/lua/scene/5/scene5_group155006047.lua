-- 基础信息
local base_info = {
	group_id = 155006047
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
	{ config_id = 47002, npc_id = 20504, pos = { x = 147.843, y = 304.204, z = 193.181 }, rot = { x = 0.000, y = 279.614, z = 0.000 }, area_id = 200 }
}

-- 装置
gadgets = {
	{ config_id = 47001, gadget_id = 70710091, pos = { x = 148.305, y = 303.938, z = 193.214 }, rot = { x = 353.201, y = 257.630, z = 359.699 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047003, name = "QUEST_FINISH_47003", event = EventType.EVENT_QUEST_FINISH, source = "7225901", condition = "", action = "action_EVENT_QUEST_FINISH_47003", trigger_count = 0 }
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
		gadgets = { 47001 },
		regions = { },
		triggers = { "QUEST_FINISH_47003" },
		npcs = { 47002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_47003(context, evt)
	-- 针对当前group内变量名为 "activeCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "activeCount", 1, 155006048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end