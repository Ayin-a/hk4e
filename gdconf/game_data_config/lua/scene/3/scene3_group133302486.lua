-- 基础信息
local base_info = {
	group_id = 133302486
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 486002, monster_id = 25310101, pos = { x = -624.872, y = 148.500, z = 2714.386 }, rot = { x = 0.000, y = 206.022, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", pose_id = 9003, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 486001, gadget_id = 70211151, pos = { x = -627.906, y = 147.976, z = 2708.531 }, rot = { x = 2.719, y = 207.041, z = 0.000 }, level = 26, chest_drop_id = 21910075, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1486003, name = "ANY_MONSTER_DIE_486003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_486003", action = "action_EVENT_ANY_MONSTER_DIE_486003" }
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
		monsters = { 486002 },
		gadgets = { 486001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_486003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_486003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_486003(context, evt)
	-- 将configid为 486001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 486001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end