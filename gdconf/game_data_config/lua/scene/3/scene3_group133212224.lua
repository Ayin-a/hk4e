-- 基础信息
local base_info = {
	group_id = 133212224
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224001, monster_id = 23010601, pos = { x = -3667.144, y = 222.588, z = -1977.542 }, rot = { x = 0.000, y = 132.127, z = 0.000 }, level = 27, drop_tag = "先遣队", disableWander = true, area_id = 13 },
	{ config_id = 224002, monster_id = 23010301, pos = { x = -3670.357, y = 222.903, z = -1978.476 }, rot = { x = 0.000, y = 27.441, z = 0.000 }, level = 27, drop_tag = "先遣队", pose_id = 9001, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 224003, gadget_id = 70900393, pos = { x = -3671.797, y = 223.034, z = -1976.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 224006, gadget_id = 70211102, pos = { x = -3670.252, y = 229.056, z = -1971.990 }, rot = { x = 0.000, y = 173.143, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1224004, name = "ANY_MONSTER_DIE_224004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_224004", action = "action_EVENT_ANY_MONSTER_DIE_224004" }
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
		monsters = { 224001, 224002 },
		gadgets = { 224003, 224006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_224004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_224004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_224004(context, evt)
	-- 将configid为 224006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end