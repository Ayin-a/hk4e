-- 基础信息
local base_info = {
	group_id = 133003095
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 22010201, pos = { x = 2239.258, y = 244.120, z = -1581.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "深渊法师", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95002, gadget_id = 70211012, pos = { x = 2239.487, y = 243.764, z = -1579.233 }, rot = { x = 0.000, y = 185.677, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095003, name = "ANY_MONSTER_DIE_95003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95003", action = "action_EVENT_ANY_MONSTER_DIE_95003", tlog_tag = "神殿_营地_深渊冰_完成" }
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
		monsters = { 95001 },
		gadgets = { 95002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_95003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95003(context, evt)
	-- 解锁目标95002
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 95002, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end