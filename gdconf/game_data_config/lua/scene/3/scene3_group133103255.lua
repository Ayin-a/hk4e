-- 基础信息
local base_info = {
	group_id = 133103255
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 255001, monster_id = 21010901, pos = { x = 1082.168, y = 300.294, z = 1226.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 255006, monster_id = 21010901, pos = { x = 1076.092, y = 300.059, z = 1224.667 }, rot = { x = 0.000, y = 293.846, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 255007, monster_id = 21030101, pos = { x = 1073.948, y = 300.258, z = 1224.287 }, rot = { x = 0.000, y = 59.941, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 255002, gadget_id = 70211012, pos = { x = 1082.234, y = 300.391, z = 1228.877 }, rot = { x = 356.466, y = 359.726, z = 8.881 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 255004, gadget_id = 70220013, pos = { x = 1077.729, y = 300.375, z = 1228.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 255005, gadget_id = 70310001, pos = { x = 1080.050, y = 300.114, z = 1227.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1255003, name = "ANY_MONSTER_DIE_255003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_255003", action = "action_EVENT_ANY_MONSTER_DIE_255003" }
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
		monsters = { 255001, 255006, 255007 },
		gadgets = { 255002, 255004, 255005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_255003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_255003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_255003(context, evt)
	-- 将configid为 255002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end