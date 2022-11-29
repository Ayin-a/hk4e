-- 基础信息
local base_info = {
	group_id = 133104006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6004, monster_id = 21011001, pos = { x = 45.722, y = 263.497, z = 176.570 }, rot = { x = 0.000, y = 158.786, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 6005, monster_id = 21011001, pos = { x = 51.110, y = 263.215, z = 175.466 }, rot = { x = 0.000, y = 178.743, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 6006, monster_id = 21010901, pos = { x = 46.768, y = 263.633, z = 165.594 }, rot = { x = 0.000, y = 50.176, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6001, gadget_id = 70220005, pos = { x = 47.002, y = 263.350, z = 175.844 }, rot = { x = 356.425, y = 359.958, z = 1.789 }, level = 20, area_id = 7 },
	{ config_id = 6007, gadget_id = 70211012, pos = { x = 48.834, y = 263.430, z = 176.332 }, rot = { x = 8.855, y = 167.079, z = 358.884 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 6008, gadget_id = 70220005, pos = { x = 47.866, y = 263.874, z = 163.823 }, rot = { x = 9.455, y = 357.300, z = 353.397 }, level = 20, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000002, name = "ANY_MONSTER_DIE_2", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2", action = "action_EVENT_ANY_MONSTER_DIE_2" }
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
		monsters = { 6004, 6005, 6006 },
		gadgets = { 6001, 6007, 6008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2(context, evt)
	-- 将configid为 6007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end