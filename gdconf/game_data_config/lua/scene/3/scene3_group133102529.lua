-- 基础信息
local base_info = {
	group_id = 133102529
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 529001, monster_id = 21030301, pos = { x = 1583.743, y = 249.874, z = 17.081 }, rot = { x = 4.195, y = 9.431, z = 355.708 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, area_id = 5 },
	{ config_id = 529004, monster_id = 21011001, pos = { x = 1587.712, y = 249.604, z = 15.428 }, rot = { x = 5.019, y = 1.148, z = 354.243 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 529006, monster_id = 21010501, pos = { x = 1581.642, y = 250.333, z = 13.104 }, rot = { x = 3.923, y = 256.267, z = 354.858 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 529007, monster_id = 21010901, pos = { x = 1587.229, y = 249.880, z = 11.017 }, rot = { x = 353.074, y = 275.891, z = 358.245 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 529002, gadget_id = 70211012, pos = { x = 1585.543, y = 249.949, z = 13.113 }, rot = { x = 359.978, y = 160.297, z = 6.996 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 529008, gadget_id = 70310006, pos = { x = 1581.961, y = 249.683, z = 21.171 }, rot = { x = 7.134, y = 44.700, z = 0.377 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1529003, name = "ANY_MONSTER_DIE_529003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_529003", action = "action_EVENT_ANY_MONSTER_DIE_529003" }
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
		monsters = { 529001, 529004, 529006, 529007 },
		gadgets = { 529002, 529008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_529003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_529003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_529003(context, evt)
	-- 将configid为 529002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 529002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end