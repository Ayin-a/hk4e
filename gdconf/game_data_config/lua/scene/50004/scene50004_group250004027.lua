-- 基础信息
local base_info = {
	group_id = 250004027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4, monster_id = 21030101, pos = { x = -213.726, y = -11.000, z = 33.104 }, rot = { x = 0.000, y = 177.448, z = 0.000 }, level = 10 },
	{ config_id = 5, monster_id = 21030201, pos = { x = -224.595, y = -11.000, z = 32.857 }, rot = { x = 0.000, y = 108.344, z = 0.000 }, level = 10 },
	{ config_id = 6, monster_id = 21030301, pos = { x = -218.848, y = -11.000, z = 41.749 }, rot = { x = 0.000, y = 260.993, z = 0.000 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 284, gadget_id = 70350004, pos = { x = -218.491, y = -11.000, z = 46.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 377, gadget_id = 71000004, pos = { x = -227.131, y = -11.000, z = 19.016 }, rot = { x = 0.000, y = 175.422, z = 0.000 }, level = 1 },
	{ config_id = 378, gadget_id = 71000004, pos = { x = -205.492, y = -11.000, z = 29.764 }, rot = { x = 0.000, y = 285.346, z = 0.000 }, level = 1 },
	{ config_id = 379, gadget_id = 71000004, pos = { x = -231.988, y = -11.000, z = 39.117 }, rot = { x = 0.000, y = 87.891, z = 0.000 }, level = 1 },
	{ config_id = 380, gadget_id = 71000004, pos = { x = -212.171, y = -11.000, z = 20.691 }, rot = { x = 0.000, y = 102.063, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000056, name = "ANY_MONSTER_DIE_56", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_56", action = "action_EVENT_ANY_MONSTER_DIE_56" }
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
		monsters = { 6 },
		gadgets = { 284, 377, 378, 379 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_56" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_56(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 50004027) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_56(context, evt)
	-- 将configid为 284 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end