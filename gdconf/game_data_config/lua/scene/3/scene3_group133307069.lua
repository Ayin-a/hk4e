-- 基础信息
local base_info = {
	group_id = 133307069
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 69001, monster_id = 21010301, pos = { x = -1944.302, y = 134.300, z = 5191.797 }, rot = { x = 0.000, y = 62.455, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 27 },
	{ config_id = 69002, monster_id = 21010201, pos = { x = -1940.130, y = 134.300, z = 5188.176 }, rot = { x = 0.000, y = 355.921, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 27 },
	{ config_id = 69003, monster_id = 21010401, pos = { x = -1943.289, y = 134.300, z = 5197.144 }, rot = { x = 0.000, y = 136.350, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9011, area_id = 27 }
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
	{ config_id = 1069004, name = "ANY_MONSTER_DIE_69004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_69004", action = "action_EVENT_ANY_MONSTER_DIE_69004", trigger_count = 0 }
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
		monsters = { 69001, 69002, 69003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_69004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_69004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_69004(context, evt)
	-- 将本组内变量名为 "die2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "die2", 1, 133307147) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end