-- 基础信息
local base_info = {
	group_id = 250004028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7, monster_id = 24010101, pos = { x = -132.878, y = -11.000, z = 42.077 }, rot = { x = 0.000, y = 177.448, z = 0.000 }, level = 10, disableWander = true, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 285, gadget_id = 70350004, pos = { x = -132.466, y = -11.306, z = 46.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000057, name = "ANY_MONSTER_DIE_57", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57", action = "action_EVENT_ANY_MONSTER_DIE_57" }
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
		monsters = { 7 },
		gadgets = { 285 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_57" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 50004028) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57(context, evt)
	-- 将configid为 285 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 285, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end