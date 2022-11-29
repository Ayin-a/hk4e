-- 基础信息
local base_info = {
	group_id = 133307068
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68001, monster_id = 21010401, pos = { x = -1992.501, y = 143.462, z = 5205.859 }, rot = { x = 0.000, y = 185.341, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 27 },
	{ config_id = 68002, monster_id = 21010401, pos = { x = -1989.864, y = 144.060, z = 5207.777 }, rot = { x = 0.000, y = 206.011, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 27 },
	{ config_id = 68003, monster_id = 21010401, pos = { x = -1995.059, y = 143.392, z = 5208.210 }, rot = { x = 0.000, y = 170.965, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 27 },
	{ config_id = 68004, monster_id = 21010101, pos = { x = -1994.550, y = 135.615, z = 5194.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 27 },
	{ config_id = 68005, monster_id = 21010101, pos = { x = -1992.251, y = 135.819, z = 5193.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 27 }
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
	{ config_id = 1068006, name = "ANY_MONSTER_DIE_68006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_68006", action = "action_EVENT_ANY_MONSTER_DIE_68006", trigger_count = 0 }
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
		monsters = { 68001, 68002, 68003, 68004, 68005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_68006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_68006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_68006(context, evt)
	-- 将本组内变量名为 "die1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "die1", 1, 133307147) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end