-- 基础信息
local base_info = {
	group_id = 133103022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23, monster_id = 21010201, pos = { x = 577.600, y = 264.929, z = 1053.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 24, monster_id = 21030301, pos = { x = 575.332, y = 264.702, z = 1054.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 },
	{ config_id = 22003, monster_id = 21010201, pos = { x = 578.868, y = 265.607, z = 1055.709 }, rot = { x = 0.000, y = 302.552, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131, gadget_id = 70211012, pos = { x = 577.493, y = 265.920, z = 1057.349 }, rot = { x = 15.379, y = 219.837, z = 2.238 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 22001, gadget_id = 70220013, pos = { x = 575.120, y = 265.622, z = 1059.234 }, rot = { x = 356.840, y = 359.546, z = 18.443 }, level = 24, area_id = 6 },
	{ config_id = 22002, gadget_id = 70310001, pos = { x = 575.075, y = 265.258, z = 1057.029 }, rot = { x = 0.000, y = 42.220, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000040, name = "ANY_MONSTER_DIE_40", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40", action = "action_EVENT_ANY_MONSTER_DIE_40" }
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
		monsters = { 23, 24, 22003 },
		gadgets = { 131, 22001, 22002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_40" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40(context, evt)
	-- 将configid为 131 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end