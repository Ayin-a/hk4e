-- 基础信息
local base_info = {
	group_id = 133307413
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 413003, monster_id = 28061501, pos = { x = -1439.998, y = 61.545, z = 5121.691 }, rot = { x = 0.000, y = 256.612, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 32 },
	{ config_id = 413004, monster_id = 28061501, pos = { x = -1437.203, y = 63.824, z = 5116.156 }, rot = { x = 0.000, y = 174.030, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 },
	{ config_id = 413005, monster_id = 28061501, pos = { x = -1439.773, y = 63.319, z = 5113.682 }, rot = { x = 0.000, y = 202.404, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 413001, gadget_id = 70211002, pos = { x = -1434.862, y = 64.208, z = 5113.095 }, rot = { x = 354.714, y = 293.374, z = 340.956 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1413002, name = "ANY_MONSTER_DIE_413002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413002", action = "action_EVENT_ANY_MONSTER_DIE_413002" }
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
		monsters = { 413003, 413004, 413005 },
		gadgets = { 413001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_413002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_413002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_413002(context, evt)
	-- 将configid为 413001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 413001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end