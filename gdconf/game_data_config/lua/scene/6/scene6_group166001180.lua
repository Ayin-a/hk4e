-- 基础信息
local base_info = {
	group_id = 166001180
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
	{ config_id = 180001, npc_id = 20540, pos = { x = 916.429, y = 1022.975, z = 876.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
	{ config_id = 180002, gadget_id = 70290017, pos = { x = 916.395, y = 1022.938, z = 876.218 }, rot = { x = 289.293, y = 67.897, z = 58.170 }, level = 1, isOneoff = true, area_id = 300 },
	{ config_id = 180005, gadget_id = 70360089, pos = { x = 916.456, y = 1022.988, z = 876.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1180003, name = "QUEST_FINISH_180003", event = EventType.EVENT_QUEST_FINISH, source = "7103707", condition = "", action = "action_EVENT_QUEST_FINISH_180003" }
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
		gadgets = { 180002, 180005 },
		regions = { },
		triggers = { "QUEST_FINISH_180003" },
		npcs = { 180001 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_180003(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "done", 1, 166001184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end