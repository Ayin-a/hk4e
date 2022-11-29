-- 基础信息
local base_info = {
	group_id = 133003524
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 524001, monster_id = 20010801, pos = { x = 2453.076, y = 220.370, z = -1393.823 }, rot = { x = 0.000, y = 59.944, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 524002, gadget_id = 70211102, pos = { x = 2450.198, y = 219.637, z = -1396.824 }, rot = { x = 355.894, y = 60.006, z = 358.637 }, level = 1, drop_tag = "解谜低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1524003, name = "ANY_MONSTER_DIE_524003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_524003", action = "action_EVENT_ANY_MONSTER_DIE_524003" }
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
		monsters = { 524001 },
		gadgets = { 524002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_524003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_524003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_524003(context, evt)
	-- 解锁目标524002
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 524002, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end