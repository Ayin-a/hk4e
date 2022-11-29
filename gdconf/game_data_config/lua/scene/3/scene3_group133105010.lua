-- 基础信息
local base_info = {
	group_id = 133105010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48, monster_id = 21020501, pos = { x = 631.965, y = 222.013, z = -484.408 }, rot = { x = 0.000, y = 331.023, z = 0.000 }, level = 23, drop_tag = "丘丘岩盔王", disableWander = true, isElite = true, pose_id = 401, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 50, gadget_id = 70211012, pos = { x = 633.676, y = 222.224, z = -485.697 }, rot = { x = 3.743, y = 327.077, z = 1.113 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000151, name = "ANY_MONSTER_DIE_151", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151", action = "action_EVENT_ANY_MONSTER_DIE_151" }
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
		monsters = { 48 },
		gadgets = { 50 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151(context, evt)
	-- 解锁目标50
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 50, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end