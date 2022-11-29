-- 基础信息
local base_info = {
	group_id = 133108043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 21010201, pos = { x = -87.346, y = 201.397, z = -905.126 }, rot = { x = 0.000, y = 295.161, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 7 },
	{ config_id = 43004, monster_id = 21010101, pos = { x = -77.124, y = 200.288, z = -914.123 }, rot = { x = 0.000, y = 97.011, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 7 },
	{ config_id = 43005, monster_id = 21010201, pos = { x = -92.821, y = 202.130, z = -903.964 }, rot = { x = 0.000, y = 27.492, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 7 },
	{ config_id = 43006, monster_id = 21010401, pos = { x = -79.872, y = 202.463, z = -895.675 }, rot = { x = 0.000, y = 24.425, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 43007, monster_id = 21020301, pos = { x = -68.390, y = 200.622, z = -909.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43002, gadget_id = 70211012, pos = { x = -82.557, y = 201.268, z = -902.603 }, rot = { x = 2.200, y = 196.085, z = 5.275 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1043003, name = "ANY_MONSTER_DIE_43003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43003", action = "action_EVENT_ANY_MONSTER_DIE_43003" }
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
		monsters = { 43001, 43004, 43005, 43006, 43007 },
		gadgets = { 43002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_43003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43003(context, evt)
	-- 将configid为 43002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end