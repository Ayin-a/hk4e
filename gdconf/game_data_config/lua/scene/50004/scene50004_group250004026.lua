-- 基础信息
local base_info = {
	group_id = 250004026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 22010101, pos = { x = -295.856, y = -11.000, z = 33.986 }, rot = { x = 0.000, y = 177.448, z = 0.000 }, level = 10 },
	{ config_id = 2, monster_id = 22010201, pos = { x = -301.548, y = -11.000, z = 25.272 }, rot = { x = 0.000, y = 108.344, z = 0.000 }, level = 10 },
	{ config_id = 3, monster_id = 22010301, pos = { x = -290.458, y = -11.000, z = 24.881 }, rot = { x = 0.000, y = 260.993, z = 0.000 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 283, gadget_id = 70350004, pos = { x = -295.934, y = -11.273, z = 39.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000055, name = "ANY_MONSTER_DIE_55", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55", action = "action_EVENT_ANY_MONSTER_DIE_55" }
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
	rand_suite = true
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
		monsters = { 1 },
		gadgets = { 283 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 50004026) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 将configid为 283 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end