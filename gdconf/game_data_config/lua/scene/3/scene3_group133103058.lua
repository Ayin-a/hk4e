-- 基础信息
local base_info = {
	group_id = 133103058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 20020101, pos = { x = 1214.291, y = 339.841, z = 1617.072 }, rot = { x = 0.000, y = 56.162, z = 0.000 }, level = 28, drop_tag = "元素之核", disableWander = true, area_id = 6 },
	{ config_id = 58002, monster_id = 20020101, pos = { x = 1212.632, y = 338.626, z = 1630.556 }, rot = { x = 0.000, y = 56.162, z = 0.000 }, level = 28, drop_tag = "元素之核", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58003, gadget_id = 70211022, pos = { x = 1209.858, y = 339.728, z = 1620.845 }, rot = { x = 357.680, y = 323.374, z = 358.380 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 58004, gadget_id = 70211002, pos = { x = 1211.960, y = 339.659, z = 1622.409 }, rot = { x = 1.084, y = 323.312, z = 356.963 }, level = 21, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 58005, gadget_id = 70211002, pos = { x = 1207.713, y = 339.789, z = 1619.248 }, rot = { x = 355.187, y = 323.424, z = 358.013 }, level = 21, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058006, name = "ANY_MONSTER_DIE_58006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58006", action = "action_EVENT_ANY_MONSTER_DIE_58006" }
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
		monsters = { 58001, 58002 },
		gadgets = { 58003, 58004, 58005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58006(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context, 58003, GadgetState.Default) 
	ScriptLib.SetGadgetStateByConfigId(context, 58005, GadgetState.Default) 
	ScriptLib.SetGadgetStateByConfigId(context, 58004, GadgetState.Default)
	return 0
end