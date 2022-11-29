-- 基础信息
local base_info = {
	group_id = 199001182
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 182001, monster_id = 21010401, pos = { x = 413.037, y = 124.289, z = 426.593 }, rot = { x = 0.000, y = 271.604, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 182002, monster_id = 21010901, pos = { x = 404.846, y = 124.580, z = 447.190 }, rot = { x = 0.000, y = 245.377, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 182003, monster_id = 21030301, pos = { x = 412.843, y = 124.020, z = 428.279 }, rot = { x = 0.000, y = 4.222, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 182004, gadget_id = 70950092, pos = { x = 412.881, y = 120.000, z = 426.877 }, rot = { x = 0.000, y = 205.716, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	-- 可摧毁小哨塔B
	{ config_id = 182005, gadget_id = 70950092, pos = { x = 404.991, y = 120.000, z = 448.065 }, rot = { x = 0.000, y = 202.894, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	-- 不可摧毁大哨塔A
	{ config_id = 182006, gadget_id = 70290059, pos = { x = 397.994, y = 120.000, z = 433.966 }, rot = { x = 0.000, y = 251.567, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 182007, gadget_id = 70950087, pos = { x = 409.913, y = 120.000, z = 424.238 }, rot = { x = 0.000, y = 300.600, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 182008, gadget_id = 70950087, pos = { x = 399.974, y = 120.000, z = 448.513 }, rot = { x = 0.000, y = 88.033, z = 0.000 }, level = 20, area_id = 402 },
	-- 小哨塔A连接梯子A
	{ config_id = 182009, gadget_id = 70290060, pos = { x = 406.476, y = 124.319, z = 429.676 }, rot = { x = 0.000, y = 205.301, z = 0.000 }, level = 20, area_id = 402 },
	-- 小哨塔B连接梯子B
	{ config_id = 182010, gadget_id = 70290060, pos = { x = 402.132, y = 124.224, z = 441.423 }, rot = { x = 0.000, y = 113.269, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 182011, gadget_id = 70211012, pos = { x = 402.251, y = 126.065, z = 434.740 }, rot = { x = 0.000, y = 251.567, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1182012, name = "ANY_GADGET_DIE_182012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_182012", action = "action_EVENT_ANY_GADGET_DIE_182012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1182013, name = "ANY_GADGET_DIE_182013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_182013", action = "action_EVENT_ANY_GADGET_DIE_182013" },
	{ config_id = 1182014, name = "ANY_MONSTER_DIE_182014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_182014", action = "action_EVENT_ANY_MONSTER_DIE_182014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
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
		monsters = { 182001, 182002, 182003 },
		gadgets = { 182004, 182005, 182006, 182007, 182008, 182009, 182010, 182011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_182012", "ANY_GADGET_DIE_182013", "ANY_MONSTER_DIE_182014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_182012(context, evt)
	if 182004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_182012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_182013(context, evt)
	if 182005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_182013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_182014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 199001182) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_182014(context, evt)
	-- 将configid为 182011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end