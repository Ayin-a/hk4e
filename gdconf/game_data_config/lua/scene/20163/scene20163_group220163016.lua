-- 基础信息
local base_info = {
	group_id = 220163016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16002, monster_id = 23010301, pos = { x = -25.059, y = 68.995, z = -7.930 }, rot = { x = 0.000, y = 72.850, z = 0.000 }, level = 1, disableWander = true, pose_id = 9001 }
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
	{ config_id = 1016001, name = "ANY_MONSTER_DIE_16001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16001", action = "action_EVENT_ANY_MONSTER_DIE_16001" }
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
		monsters = { 16002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16001(context, evt)
	-- 将本组内变量名为 "fightFinish1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fightFinish1", 1, 220163014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end