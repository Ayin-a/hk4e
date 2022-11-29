-- 基础信息
local base_info = {
	group_id = 133003326
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1062, monster_id = 20011501, pos = { x = 2877.955, y = 260.467, z = -1442.215 }, rot = { x = 0.000, y = 230.282, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 1063, monster_id = 20011501, pos = { x = 2876.321, y = 260.600, z = -1441.763 }, rot = { x = 0.000, y = 177.039, z = 0.000 }, level = 19, drop_tag = "大史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3331, gadget_id = 70211012, pos = { x = 2876.471, y = 260.419, z = -1444.075 }, rot = { x = 0.000, y = 17.452, z = 0.000 }, level = 26, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000249, name = "ANY_MONSTER_DIE_249", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_249", action = "action_EVENT_ANY_MONSTER_DIE_249" }
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
		monsters = { 1062, 1063 },
		gadgets = { 3331 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_249" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_249(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_249(context, evt)
	-- 解锁目标3331
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3331, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end