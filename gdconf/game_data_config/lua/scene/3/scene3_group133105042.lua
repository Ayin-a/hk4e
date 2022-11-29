-- 基础信息
local base_info = {
	group_id = 133105042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 110, monster_id = 23010401, pos = { x = 865.432, y = 274.058, z = -205.156 }, rot = { x = 0.000, y = 42.240, z = 0.000 }, level = 24, drop_tag = "先遣队", area_id = 9 },
	{ config_id = 111, monster_id = 23010201, pos = { x = 875.164, y = 271.964, z = -197.070 }, rot = { x = 0.000, y = 285.984, z = 0.000 }, level = 24, drop_tag = "先遣队", area_id = 9 },
	{ config_id = 114, monster_id = 23010301, pos = { x = 870.293, y = 272.791, z = -201.750 }, rot = { x = 0.000, y = 3.054, z = 0.000 }, level = 24, drop_tag = "先遣队", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85, gadget_id = 70211012, pos = { x = 867.267, y = 272.835, z = -198.859 }, rot = { x = 10.098, y = 46.151, z = 356.466 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000060, name = "ANY_MONSTER_DIE_60", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60", action = "action_EVENT_ANY_MONSTER_DIE_60" },
	{ config_id = 1042001, name = "MONSTER_BATTLE_42001", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_42001", action = "action_EVENT_MONSTER_BATTLE_42001" }
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
		monsters = { 114 },
		gadgets = { 85 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60", "MONSTER_BATTLE_42001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 110, 111 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60(context, evt)
	-- 解锁目标85
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 85, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_42001(context, evt)
	if 114 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_42001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105042, 2)
	
	return 0
end