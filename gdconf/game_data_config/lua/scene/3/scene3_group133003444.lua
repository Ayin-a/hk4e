-- 基础信息
local base_info = {
	group_id = 133003444
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 539, monster_id = 21020201, pos = { x = 2620.457, y = 254.127, z = -1679.767 }, rot = { x = 0.000, y = 332.899, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2858, gadget_id = 70211012, pos = { x = 2634.702, y = 254.261, z = -1689.277 }, rot = { x = 0.000, y = 333.938, z = 354.617 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000531, name = "ANY_MONSTER_DIE_531", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_531", action = "action_EVENT_ANY_MONSTER_DIE_531" }
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
		monsters = { 539 },
		gadgets = { 2858 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_531" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_531(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_531(context, evt)
	-- 解锁目标2858
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2858, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end