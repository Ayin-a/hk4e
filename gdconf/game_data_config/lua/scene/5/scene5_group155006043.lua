-- 基础信息
local base_info = {
	group_id = 155006043
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
	{ config_id = 43002, npc_id = 20500, pos = { x = 524.806, y = 208.800, z = -389.798 }, rot = { x = 357.795, y = 277.608, z = 0.602 }, area_id = 200 }
}

-- 装置
gadgets = {
	{ config_id = 43001, gadget_id = 70710091, pos = { x = 525.301, y = 208.644, z = -389.652 }, rot = { x = 4.029, y = 264.869, z = 9.891 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1043003, name = "QUEST_FINISH_43003", event = EventType.EVENT_QUEST_FINISH, source = "7225501", condition = "", action = "action_EVENT_QUEST_FINISH_43003", trigger_count = 0 }
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
		gadgets = { 43001 },
		regions = { },
		triggers = { "QUEST_FINISH_43003" },
		npcs = { 43002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_43003(context, evt)
	-- 针对当前group内变量名为 "activeCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "activeCount", 1, 155006048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end