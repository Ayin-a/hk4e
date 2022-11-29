-- 基础信息
local base_info = {
	group_id = 144002055
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1055012, name = "ANY_GADGET_DIE_55012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_55012", action = "action_EVENT_ANY_GADGET_DIE_55012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1055013, name = "ANY_GADGET_DIE_55013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_55013", action = "action_EVENT_ANY_GADGET_DIE_55013" },
	{ config_id = 1055014, name = "ANY_MONSTER_DIE_55014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55014", action = "action_EVENT_ANY_MONSTER_DIE_55014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 55001, monster_id = 21010401, pos = { x = 876.682, y = 124.013, z = -671.908 }, rot = { x = 0.000, y = 256.270, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 },
		{ config_id = 55002, monster_id = 21010901, pos = { x = 898.811, y = 123.782, z = -670.649 }, rot = { x = 0.000, y = 302.694, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 },
		{ config_id = 55003, monster_id = 21030301, pos = { x = 887.658, y = 126.160, z = -660.172 }, rot = { x = 0.000, y = 336.442, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 101 }
	},
	gadgets = {
		{ config_id = 55004, gadget_id = 70950092, pos = { x = 876.999, y = 120.000, z = -671.850 }, rot = { x = 0.000, y = 263.033, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
		{ config_id = 55005, gadget_id = 70950092, pos = { x = 899.596, y = 120.000, z = -671.064 }, rot = { x = 0.000, y = 260.211, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
		{ config_id = 55006, gadget_id = 70290059, pos = { x = 888.433, y = 120.000, z = -659.968 }, rot = { x = 0.000, y = 308.884, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
		{ config_id = 55007, gadget_id = 70950087, pos = { x = 875.435, y = 120.000, z = -668.199 }, rot = { x = 0.000, y = 357.916, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 55008, gadget_id = 70950087, pos = { x = 901.607, y = 120.000, z = -666.446 }, rot = { x = 0.000, y = 145.350, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 55009, gadget_id = 70290060, pos = { x = 881.681, y = 124.319, z = -666.658 }, rot = { x = 0.000, y = 322.281, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 55010, gadget_id = 70290060, pos = { x = 894.199, y = 124.430, z = -666.251 }, rot = { x = 0.000, y = 232.217, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 55011, gadget_id = 70360001, pos = { x = 887.489, y = 126.065, z = -658.157 }, rot = { x = 0.000, y = 308.884, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 101 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
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
function condition_EVENT_ANY_GADGET_DIE_55012(context, evt)
	if 55004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_55012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 55009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_55013(context, evt)
	if 55005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_55013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 55010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144002055) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55014(context, evt)
	-- 将configid为 55011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end