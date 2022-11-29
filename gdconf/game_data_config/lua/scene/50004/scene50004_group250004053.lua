-- 基础信息
local base_info = {
	group_id = 250004053
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35, monster_id = 21010401, pos = { x = 1554.845, y = 249.365, z = 958.908 }, rot = { x = 0.000, y = 170.315, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 36, monster_id = 21010501, pos = { x = 1565.662, y = 249.367, z = 962.062 }, rot = { x = 0.000, y = 198.101, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 37, monster_id = 21010901, pos = { x = 1570.972, y = 249.356, z = 958.928 }, rot = { x = 0.000, y = 222.491, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 38, monster_id = 21011001, pos = { x = 1573.805, y = 249.358, z = 953.682 }, rot = { x = 0.000, y = 253.847, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 39, monster_id = 23030101, pos = { x = 1566.664, y = 245.890, z = 952.805 }, rot = { x = 0.000, y = 234.051, z = 0.000 }, level = 20 },
	{ config_id = 40, monster_id = 21010401, pos = { x = 1574.199, y = 249.362, z = 947.371 }, rot = { x = 0.000, y = 291.729, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 41, monster_id = 21010401, pos = { x = 1559.380, y = 249.365, z = 961.994 }, rot = { x = 0.000, y = 170.315, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 42, monster_id = 21010401, pos = { x = 1570.757, y = 249.356, z = 942.552 }, rot = { x = 0.000, y = 291.729, z = 0.000 }, level = 20, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 569, gadget_id = 70211001, pos = { x = 1568.890, y = 245.890, z = 954.389 }, rot = { x = 0.000, y = 243.210, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000095, name = "ANY_MONSTER_DIE_95", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95", action = "action_EVENT_ANY_MONSTER_DIE_95", trigger_count = 0 },
	{ config_id = 1000096, name = "ANY_MONSTER_DIE_96", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_96", action = "action_EVENT_ANY_MONSTER_DIE_96" }
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
	rand_suite = true
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
		monsters = { 35, 36, 37, 38, 40, 41, 42 },
		gadgets = { 569 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95", "ANY_MONSTER_DIE_96" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95(context, evt)
	-- 判断指定group组剩余怪物数量是否是1 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004053) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 39, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_96(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250004053) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_96(context, evt)
	-- 解锁目标569
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 569, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end