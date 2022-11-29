-- 基础信息
local base_info = {
	group_id = 133102590
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 590001, monster_id = 21010101, pos = { x = 1644.288, y = 255.254, z = 268.934 }, rot = { x = 7.265, y = 277.056, z = 11.904 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 590004, monster_id = 21010101, pos = { x = 1639.658, y = 255.563, z = 271.472 }, rot = { x = 8.988, y = 183.377, z = 358.817 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 590009, monster_id = 21010401, pos = { x = 1645.073, y = 258.058, z = 274.586 }, rot = { x = 354.930, y = 209.584, z = 2.880 }, level = 16, drop_tag = "远程丘丘人", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 590002, gadget_id = 70211002, pos = { x = 1641.607, y = 255.511, z = 269.787 }, rot = { x = 359.418, y = 218.433, z = 6.139 }, level = 16, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 590010, gadget_id = 70220013, pos = { x = 1639.867, y = 255.706, z = 278.128 }, rot = { x = 3.122, y = 37.097, z = 10.107 }, level = 16, area_id = 5 },
	{ config_id = 590011, gadget_id = 70220013, pos = { x = 1636.882, y = 255.174, z = 278.329 }, rot = { x = 7.697, y = 2.147, z = 10.479 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1590003, name = "ANY_MONSTER_DIE_590003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_590003", action = "action_EVENT_ANY_MONSTER_DIE_590003" }
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
		monsters = { 590001, 590004, 590009 },
		gadgets = { 590002, 590010, 590011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_590003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_590003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_590003(context, evt)
	-- 将configid为 590002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 590002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end