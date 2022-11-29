-- 基础信息
local base_info = {
	group_id = 133103030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29, monster_id = 21010201, pos = { x = 763.807, y = 324.693, z = 1830.014 }, rot = { x = 0.000, y = 48.246, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 30001, monster_id = 21011001, pos = { x = 766.548, y = 324.339, z = 1828.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 30002, monster_id = 21030401, pos = { x = 763.552, y = 325.375, z = 1832.408 }, rot = { x = 0.000, y = 155.713, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145, gadget_id = 70211012, pos = { x = 766.362, y = 324.739, z = 1832.146 }, rot = { x = 359.105, y = 0.007, z = 359.105 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000045, name = "ANY_MONSTER_DIE_45", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45", action = "action_EVENT_ANY_MONSTER_DIE_45" }
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
		monsters = { 29, 30001, 30002 },
		gadgets = { 145 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 将configid为 145 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end