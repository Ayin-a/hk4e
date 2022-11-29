-- 基础信息
local base_info = {
	group_id = 133103249
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 249001, monster_id = 21010901, pos = { x = 929.351, y = 261.680, z = 1264.690 }, rot = { x = 0.000, y = 314.823, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 249004, monster_id = 21011201, pos = { x = 925.330, y = 261.684, z = 1266.562 }, rot = { x = 0.000, y = 134.272, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 249007, monster_id = 21030201, pos = { x = 927.793, y = 261.972, z = 1267.729 }, rot = { x = 0.000, y = 220.359, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 249002, gadget_id = 70211012, pos = { x = 925.953, y = 261.175, z = 1263.738 }, rot = { x = 349.675, y = 359.948, z = 0.578 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 249005, gadget_id = 70310001, pos = { x = 928.399, y = 261.304, z = 1263.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 249006, gadget_id = 70220013, pos = { x = 923.056, y = 261.232, z = 1265.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1249003, name = "ANY_MONSTER_DIE_249003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_249003", action = "action_EVENT_ANY_MONSTER_DIE_249003" }
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
		monsters = { 249001, 249004, 249007 },
		gadgets = { 249002, 249005, 249006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_249003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_249003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_249003(context, evt)
	-- 将configid为 249002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end