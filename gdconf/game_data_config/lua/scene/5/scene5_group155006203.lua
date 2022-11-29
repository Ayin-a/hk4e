-- 基础信息
local base_info = {
	group_id = 155006203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 26051101, pos = { x = 443.292, y = 140.606, z = -173.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 },
	{ config_id = 203002, monster_id = 26051101, pos = { x = 452.563, y = 141.044, z = -192.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 },
	{ config_id = 203003, monster_id = 26051101, pos = { x = 431.361, y = 141.009, z = -192.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203004, gadget_id = 70690032, pos = { x = 442.911, y = 140.515, z = -185.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1203005, name = "ANY_MONSTER_DIE_203005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_203005", action = "action_EVENT_ANY_MONSTER_DIE_203005", trigger_count = 0 }
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
		monsters = { 203001, 203002, 203003 },
		gadgets = { 203004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_203005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_203005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_203005(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 155006203, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end