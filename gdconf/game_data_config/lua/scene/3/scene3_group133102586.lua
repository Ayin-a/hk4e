-- 基础信息
local base_info = {
	group_id = 133102586
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 586001, monster_id = 21010601, pos = { x = 1498.527, y = 245.659, z = -200.428 }, rot = { x = 0.000, y = 164.333, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 5 },
	{ config_id = 586004, monster_id = 21010101, pos = { x = 1495.745, y = 245.288, z = -199.202 }, rot = { x = 0.000, y = 225.755, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 5 },
	{ config_id = 586005, monster_id = 21010201, pos = { x = 1510.585, y = 249.678, z = -186.935 }, rot = { x = 0.000, y = 17.226, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 586006, monster_id = 21010401, pos = { x = 1503.883, y = 249.312, z = -185.309 }, rot = { x = 0.000, y = 54.426, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 586002, gadget_id = 70211012, pos = { x = 1501.997, y = 248.092, z = -190.499 }, rot = { x = 348.469, y = 359.292, z = 10.302 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 586007, gadget_id = 70220005, pos = { x = 1497.037, y = 245.425, z = -199.855 }, rot = { x = 352.379, y = 359.339, z = 9.897 }, level = 16, area_id = 5 },
	{ config_id = 586008, gadget_id = 70220005, pos = { x = 1506.808, y = 248.873, z = -189.486 }, rot = { x = 350.284, y = 359.492, z = 5.967 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1586003, name = "ANY_MONSTER_DIE_586003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_586003", action = "action_EVENT_ANY_MONSTER_DIE_586003" }
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
		monsters = { 586001, 586004, 586005, 586006 },
		gadgets = { 586002, 586007, 586008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_586003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_586003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_586003(context, evt)
	-- 将configid为 586002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 586002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end