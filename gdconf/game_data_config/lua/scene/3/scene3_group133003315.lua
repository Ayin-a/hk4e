-- 基础信息
local base_info = {
	group_id = 133003315
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 315003, monster_id = 21020101, pos = { x = 2651.946, y = 268.618, z = -1565.288 }, rot = { x = 0.000, y = 64.696, z = 0.000 }, level = 19, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 315001, gadget_id = 70220005, pos = { x = 2650.521, y = 268.660, z = -1563.693 }, rot = { x = 0.000, y = 259.062, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 315002, gadget_id = 70310001, pos = { x = 2654.235, y = 268.477, z = -1566.876 }, rot = { x = 0.000, y = 146.034, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 315004, gadget_id = 70211012, pos = { x = 2648.724, y = 268.379, z = -1567.019 }, rot = { x = 0.000, y = 58.697, z = 0.000 }, level = 26, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 315005, gadget_id = 70211001, pos = { x = 2644.800, y = 267.836, z = -1573.387 }, rot = { x = 4.170, y = 187.605, z = 0.000 }, level = 26, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1315006, name = "ANY_MONSTER_DIE_315006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_315006", action = "action_EVENT_ANY_MONSTER_DIE_315006", tlog_tag = "望风山地_315_封印宝箱_结算" }
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
		monsters = { 315003 },
		gadgets = { 315001, 315002, 315004, 315005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_315006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_315006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_315006(context, evt)
	-- 解锁目标315004
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 315004, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end