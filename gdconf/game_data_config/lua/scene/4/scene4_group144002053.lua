-- 基础信息
local base_info = {
	group_id = 144002053
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
	{ config_id = 1053012, name = "ANY_GADGET_DIE_53012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_53012", action = "action_EVENT_ANY_GADGET_DIE_53012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1053013, name = "ANY_GADGET_DIE_53013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_53013", action = "action_EVENT_ANY_GADGET_DIE_53013" },
	{ config_id = 1053014, name = "ANY_MONSTER_DIE_53014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53014", action = "action_EVENT_ANY_MONSTER_DIE_53014" }
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
		{ config_id = 53001, monster_id = 21010401, pos = { x = 291.975, y = 123.894, z = -876.643 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 },
		{ config_id = 53002, monster_id = 21010901, pos = { x = 314.105, y = 123.765, z = -875.384 }, rot = { x = 0.000, y = 353.810, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 },
		{ config_id = 53003, monster_id = 21030301, pos = { x = 302.952, y = 126.148, z = -864.907 }, rot = { x = 0.000, y = 27.558, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 101 }
	},
	gadgets = {
		{ config_id = 53004, gadget_id = 70950092, pos = { x = 292.293, y = 120.000, z = -876.585 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
		{ config_id = 53005, gadget_id = 70950092, pos = { x = 314.890, y = 120.000, z = -875.799 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
		{ config_id = 53006, gadget_id = 70290059, pos = { x = 303.727, y = 120.000, z = -864.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
		{ config_id = 53007, gadget_id = 70950087, pos = { x = 290.729, y = 120.000, z = -872.934 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 53008, gadget_id = 70950087, pos = { x = 316.901, y = 120.000, z = -871.181 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 53009, gadget_id = 70290060, pos = { x = 296.975, y = 124.319, z = -871.393 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 53010, gadget_id = 70290060, pos = { x = 309.493, y = 124.224, z = -870.986 }, rot = { x = 0.000, y = 221.702, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 53011, gadget_id = 70360001, pos = { x = 302.783, y = 126.065, z = -862.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 101 }
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
function condition_EVENT_ANY_GADGET_DIE_53012(context, evt)
	if 53004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_53012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_53013(context, evt)
	if 53005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_53013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 144002053) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53014(context, evt)
	-- 将configid为 53011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end