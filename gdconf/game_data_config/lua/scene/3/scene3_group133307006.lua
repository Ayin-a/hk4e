-- 基础信息
local base_info = {
	group_id = 133307006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21010501, pos = { x = -2003.573, y = 134.136, z = 5157.254 }, rot = { x = 0.000, y = 266.182, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 27 },
	{ config_id = 6003, monster_id = 21010201, pos = { x = -2004.334, y = 134.300, z = 5152.375 }, rot = { x = 0.000, y = 306.109, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 27 },
	{ config_id = 6004, monster_id = 21030201, pos = { x = -2006.908, y = 134.396, z = 5155.797 }, rot = { x = 0.000, y = 106.166, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 27 },
	{ config_id = 6005, monster_id = 21010101, pos = { x = -2009.167, y = 134.643, z = 5166.039 }, rot = { x = 0.000, y = 193.242, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 27 }
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
	{ config_id = 1006002, name = "ANY_MONSTER_DIE_6002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6002", action = "action_EVENT_ANY_MONSTER_DIE_6002", trigger_count = 0 }
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
		monsters = { 6001, 6003, 6004, 6005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6002(context, evt)
	-- 将本组内变量名为 "die3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "die3", 1, 133307147) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end