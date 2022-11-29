-- 基础信息
local base_info = {
	group_id = 166001181
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
	{ config_id = 181001, npc_id = 20541, pos = { x = 982.782, y = 1024.606, z = 939.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
	{ config_id = 181002, gadget_id = 70290017, pos = { x = 982.743, y = 1024.647, z = 939.813 }, rot = { x = 4.646, y = 117.377, z = 2.059 }, level = 1, drop_id = 1000100, drop_count = 1, isOneoff = true, area_id = 300 },
	{ config_id = 181004, gadget_id = 70360089, pos = { x = 982.675, y = 1024.588, z = 939.871 }, rot = { x = 0.000, y = 274.216, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1181003, name = "QUEST_FINISH_181003", event = EventType.EVENT_QUEST_FINISH, source = "7103708", condition = "", action = "action_EVENT_QUEST_FINISH_181003" }
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
		gadgets = { 181002, 181004 },
		regions = { },
		triggers = { "QUEST_FINISH_181003" },
		npcs = { 181001 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_181003(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "done", 1, 166001184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end