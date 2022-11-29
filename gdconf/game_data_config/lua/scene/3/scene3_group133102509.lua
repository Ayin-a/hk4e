-- 基础信息
local base_info = {
	group_id = 133102509
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 509001, monster_id = 22010101, pos = { x = 1546.482, y = 222.141, z = 28.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "深渊法师", disableWander = true, area_id = 5 },
	{ config_id = 509004, monster_id = 21011001, pos = { x = 1555.874, y = 225.733, z = 20.263 }, rot = { x = 0.000, y = 274.911, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 509005, monster_id = 21011001, pos = { x = 1543.938, y = 228.951, z = 34.844 }, rot = { x = 0.000, y = 242.402, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 509006, monster_id = 21011201, pos = { x = 1540.124, y = 222.257, z = 26.465 }, rot = { x = 0.000, y = 270.314, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 509007, monster_id = 21011201, pos = { x = 1544.569, y = 222.090, z = 23.086 }, rot = { x = 0.000, y = 220.872, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 509008, monster_id = 22010101, pos = { x = 1546.594, y = 222.377, z = 28.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 509009, monster_id = 21011001, pos = { x = 1555.986, y = 225.733, z = 20.263 }, rot = { x = 0.000, y = 274.911, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 509010, monster_id = 21011001, pos = { x = 1544.050, y = 228.946, z = 34.844 }, rot = { x = 0.000, y = 242.402, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 509011, monster_id = 21011201, pos = { x = 1540.236, y = 222.131, z = 26.465 }, rot = { x = 0.000, y = 270.314, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, area_id = 5 },
	{ config_id = 509012, monster_id = 21011201, pos = { x = 1544.681, y = 222.030, z = 23.087 }, rot = { x = 0.000, y = 220.872, z = 0.000 }, level = 16, drop_id = 1000100, disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 509002, gadget_id = 70211022, pos = { x = 1540.085, y = 222.357, z = 32.561 }, rot = { x = 0.000, y = 235.532, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1509003, name = "ANY_MONSTER_DIE_509003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_509003", action = "action_EVENT_ANY_MONSTER_DIE_509003" }
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
		monsters = { 509001, 509004, 509005, 509006, 509007 },
		gadgets = { 509002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_509003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 509008, 509009, 509010, 509011, 509012 },
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
function condition_EVENT_ANY_MONSTER_DIE_509003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_509003(context, evt)
	-- 将configid为 509002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 509002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end