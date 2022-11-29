-- 基础信息
local base_info = {
	group_id = 133216009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 21011001, pos = { x = -5034.442, y = 204.020, z = -2731.260 }, rot = { x = 0.000, y = 63.337, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 18 },
	{ config_id = 9002, monster_id = 21010901, pos = { x = -5051.453, y = 204.020, z = -2716.541 }, rot = { x = 0.000, y = 37.110, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 18 },
	{ config_id = 9003, monster_id = 21030301, pos = { x = -5036.372, y = 206.172, z = -2716.951 }, rot = { x = 0.000, y = 70.858, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 18 },
	{ config_id = 9017, monster_id = 21010901, pos = { x = -5062.875, y = 204.020, z = -2699.455 }, rot = { x = 0.000, y = 37.110, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 9004, gadget_id = 70950092, pos = { x = -5051.494, y = 200.000, z = -2717.076 }, rot = { x = 0.000, y = 357.449, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 18 },
	-- 可摧毁小哨塔B
	{ config_id = 9005, gadget_id = 70950092, pos = { x = -5034.509, y = 200.000, z = -2732.000 }, rot = { x = 0.000, y = 354.627, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 18 },
	-- 不可摧毁大哨塔A
	{ config_id = 9006, gadget_id = 70290059, pos = { x = -5035.024, y = 200.000, z = -2716.269 }, rot = { x = 0.000, y = 43.300, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 9007, gadget_id = 70950087, pos = { x = -5050.129, y = 200.000, z = -2713.345 }, rot = { x = 0.000, y = 92.332, z = 0.000 }, level = 18, area_id = 18 },
	{ config_id = 9008, gadget_id = 70950087, pos = { x = -5029.880, y = 200.000, z = -2730.019 }, rot = { x = 0.000, y = 239.766, z = 0.000 }, level = 18, area_id = 18 },
	-- 小哨塔A连接梯子A
	{ config_id = 9009, gadget_id = 70290060, pos = { x = -5044.525, y = 204.319, z = -2716.508 }, rot = { x = 0.000, y = 357.034, z = 0.000 }, level = 18, area_id = 18 },
	-- 小哨塔B连接梯子B
	{ config_id = 9010, gadget_id = 70290060, pos = { x = -5035.137, y = 204.224, z = -2724.797 }, rot = { x = 0.000, y = 265.002, z = 0.000 }, level = 18, area_id = 18 },
	{ config_id = 9011, gadget_id = 70290057, pos = { x = -5046.398, y = 199.322, z = -2704.688 }, rot = { x = 354.359, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	-- 可摧毁小哨塔A
	{ config_id = 9015, gadget_id = 70950092, pos = { x = -5063.259, y = 200.000, z = -2699.646 }, rot = { x = 0.000, y = 79.688, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	-- 可摧毁小哨塔A
	{ config_id = 9018, gadget_id = 70950092, pos = { x = -5080.250, y = 200.000, z = -2685.999 }, rot = { x = 0.000, y = 79.688, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 9019, gadget_id = 70290057, pos = { x = -5062.132, y = 200.000, z = -2690.064 }, rot = { x = 0.667, y = 59.508, z = 1.132 }, level = 33, area_id = 18 },
	{ config_id = 9020, gadget_id = 70211151, pos = { x = -5034.708, y = 206.119, z = -2715.466 }, rot = { x = 0.000, y = 51.555, z = 0.000 }, level = 26, chest_drop_id = 21900002, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1009012, name = "ANY_GADGET_DIE_9012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_9012", action = "action_EVENT_ANY_GADGET_DIE_9012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1009013, name = "ANY_GADGET_DIE_9013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_9013", action = "action_EVENT_ANY_GADGET_DIE_9013" },
	{ config_id = 1009014, name = "ANY_MONSTER_DIE_9014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9014", action = "action_EVENT_ANY_MONSTER_DIE_9014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 9016, gadget_id = 70290055, pos = { x = -5089.156, y = 200.000, z = -2710.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
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
		monsters = { 9001, 9002, 9003, 9017 },
		gadgets = { 9004, 9005, 9006, 9007, 9008, 9009, 9010, 9011, 9015, 9018, 9019, 9020 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_9012", "ANY_GADGET_DIE_9013", "ANY_MONSTER_DIE_9014" },
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
function condition_EVENT_ANY_GADGET_DIE_9012(context, evt)
	if 9004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_9012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 9009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_9013(context, evt)
	if 9005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_9013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 9010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133216009) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9014(context, evt)
	-- 将configid为 9020 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9020, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end