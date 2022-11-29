-- 基础信息
local base_info = {
	group_id = 133003530
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 530001, monster_id = 22010201, pos = { x = 2731.514, y = 286.419, z = -1575.351 }, rot = { x = 0.000, y = 120.867, z = 0.000 }, level = 19, drop_tag = "深渊法师", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 530002, gadget_id = 70211012, pos = { x = 2728.644, y = 286.280, z = -1573.952 }, rot = { x = 0.000, y = 123.671, z = 0.000 }, level = 26, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1530003, name = "ANY_MONSTER_DIE_530003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_530003", action = "action_EVENT_ANY_MONSTER_DIE_530003", tlog_tag = "望风山地_277_封印宝箱_结算" }
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
		monsters = { 530001 },
		gadgets = { 530002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_530003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_530003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_530003(context, evt)
	-- 解锁目标530002
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 530002, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end