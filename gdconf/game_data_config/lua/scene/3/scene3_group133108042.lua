-- 基础信息
local base_info = {
	group_id = 133108042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 21010201, pos = { x = -147.859, y = 200.678, z = -929.182 }, rot = { x = 0.000, y = 44.274, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 7 },
	{ config_id = 42004, monster_id = 21030301, pos = { x = -159.058, y = 200.438, z = -924.532 }, rot = { x = 353.820, y = 138.827, z = 4.900 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 7 },
	{ config_id = 42006, monster_id = 21010201, pos = { x = -146.733, y = 200.660, z = -927.909 }, rot = { x = 0.000, y = 219.038, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42002, gadget_id = 70211012, pos = { x = -157.947, y = 200.347, z = -921.784 }, rot = { x = 356.979, y = 186.820, z = 355.148 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042003, name = "ANY_MONSTER_DIE_42003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42003", action = "action_EVENT_ANY_MONSTER_DIE_42003" }
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
		monsters = { 42001, 42004, 42006 },
		gadgets = { 42002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_42003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 将configid为 42002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end