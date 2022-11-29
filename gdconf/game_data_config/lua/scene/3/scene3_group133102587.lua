-- 基础信息
local base_info = {
	group_id = 133102587
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 587001, monster_id = 21030201, pos = { x = 1499.338, y = 247.470, z = -250.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, area_id = 5 },
	{ config_id = 587004, monster_id = 21010201, pos = { x = 1502.608, y = 247.232, z = -245.673 }, rot = { x = 0.000, y = 39.313, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 587005, monster_id = 21010201, pos = { x = 1496.885, y = 247.557, z = -244.916 }, rot = { x = 353.810, y = 331.546, z = 357.039 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 587006, monster_id = 21010501, pos = { x = 1499.080, y = 252.614, z = -248.456 }, rot = { x = 0.000, y = 331.386, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 587002, gadget_id = 70211012, pos = { x = 1499.124, y = 247.479, z = -247.397 }, rot = { x = 1.256, y = 359.954, z = 355.786 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 587007, gadget_id = 70220013, pos = { x = 1494.081, y = 247.798, z = -245.858 }, rot = { x = 357.040, y = 0.214, z = 351.746 }, level = 16, area_id = 5 },
	{ config_id = 587008, gadget_id = 70220013, pos = { x = 1504.948, y = 247.022, z = -243.515 }, rot = { x = 359.730, y = 0.012, z = 355.043 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1587003, name = "ANY_MONSTER_DIE_587003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_587003", action = "action_EVENT_ANY_MONSTER_DIE_587003" }
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
		monsters = { 587001 },
		gadgets = { 587002, 587007, 587008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_587003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_587003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_587003(context, evt)
	-- 将configid为 587002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 587002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end