-- 基础信息
local base_info = {
	group_id = 133313177
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 177001, monster_id = 26100401, pos = { x = -791.375, y = -268.700, z = 6024.937 }, rot = { x = 0.000, y = 57.097, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1177002, name = "ANY_MONSTER_DIE_177002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_177002", action = "action_EVENT_ANY_MONSTER_DIE_177002", trigger_count = 0 }
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
		monsters = { 177001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_177002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_177002(context, evt)
	if 177001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_177002(context, evt)
	-- 将本组内变量名为 "unlock_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "unlock_3", 1, 133313171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end