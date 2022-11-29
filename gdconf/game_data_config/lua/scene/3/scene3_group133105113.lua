-- 基础信息
local base_info = {
	group_id = 133105113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16, monster_id = 21010901, pos = { x = 490.812, y = 199.900, z = -193.000 }, rot = { x = 0.000, y = 61.365, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 17, monster_id = 21010901, pos = { x = 487.257, y = 199.900, z = -188.128 }, rot = { x = 0.000, y = 28.450, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 19, monster_id = 22010301, pos = { x = 490.366, y = 199.900, z = -189.438 }, rot = { x = 0.000, y = 52.612, z = 0.000 }, level = 19, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 271, gadget_id = 70211012, pos = { x = 485.427, y = 202.040, z = -193.267 }, rot = { x = 0.000, y = 62.047, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000160, name = "ANY_MONSTER_DIE_160", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_160", action = "action_EVENT_ANY_MONSTER_DIE_160" }
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
		monsters = { 16, 17, 19 },
		gadgets = { 271 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_160" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_160(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_160(context, evt)
	-- 将configid为 271 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end