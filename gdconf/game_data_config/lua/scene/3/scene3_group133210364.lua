-- 基础信息
local base_info = {
	group_id = 133210364
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 364001, monster_id = 21011601, pos = { x = -4079.229, y = 203.856, z = -376.919 }, rot = { x = 0.000, y = 209.057, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 17 },
	{ config_id = 364002, monster_id = 21011601, pos = { x = -4049.106, y = 206.200, z = -366.032 }, rot = { x = 346.696, y = 224.914, z = 353.226 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 17 },
	{ config_id = 364003, monster_id = 21030601, pos = { x = -4049.085, y = 203.756, z = -380.229 }, rot = { x = 0.000, y = 126.322, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 364022, monster_id = 21030601, pos = { x = -4031.609, y = 203.756, z = -366.131 }, rot = { x = 0.000, y = 79.045, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 364023, monster_id = 21020201, pos = { x = -4046.733, y = 206.211, z = -364.216 }, rot = { x = 0.000, y = 105.772, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 364004, gadget_id = 70950092, pos = { x = -4048.917, y = 199.763, z = -380.250 }, rot = { x = 0.000, y = 276.529, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 17 },
	-- 可摧毁小哨塔B
	{ config_id = 364005, gadget_id = 70950092, pos = { x = -4031.499, y = 199.763, z = -365.834 }, rot = { x = 0.000, y = 273.707, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 17 },
	-- 不可摧毁大哨塔A
	{ config_id = 364006, gadget_id = 70290182, pos = { x = -4047.115, y = 199.763, z = -363.859 }, rot = { x = 0.000, y = 322.380, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 364007, gadget_id = 70950087, pos = { x = -4053.173, y = 199.999, z = -380.756 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 18, area_id = 17 },
	{ config_id = 364008, gadget_id = 70950087, pos = { x = -4032.274, y = 199.999, z = -361.786 }, rot = { x = 0.000, y = 158.846, z = 0.000 }, level = 18, area_id = 17 },
	-- 小哨塔A连接梯子A
	{ config_id = 364009, gadget_id = 70290060, pos = { x = -4048.379, y = 204.082, z = -373.280 }, rot = { x = 0.000, y = 276.114, z = 0.000 }, level = 18, area_id = 17 },
	-- 小哨塔B连接梯子B
	{ config_id = 364010, gadget_id = 70290060, pos = { x = -4038.712, y = 203.987, z = -365.316 }, rot = { x = 0.000, y = 184.082, z = 0.000 }, level = 18, area_id = 17 },
	{ config_id = 364011, gadget_id = 70211002, pos = { x = -4048.967, y = 205.828, z = -363.001 }, rot = { x = 0.000, y = 136.417, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 364015, gadget_id = 70290057, pos = { x = -4038.103, y = 199.999, z = -376.289 }, rot = { x = 0.000, y = 147.310, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 364016, gadget_id = 70290057, pos = { x = -4046.381, y = 199.999, z = -344.305 }, rot = { x = 0.000, y = 190.138, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 364017, gadget_id = 70290057, pos = { x = -4084.443, y = 199.999, z = -372.977 }, rot = { x = 0.000, y = 97.204, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 364018, gadget_id = 70290057, pos = { x = -4076.117, y = 199.999, z = -381.893 }, rot = { x = 0.000, y = 174.457, z = 0.000 }, level = 30, area_id = 17 },
	-- 可摧毁小哨塔A
	{ config_id = 364021, gadget_id = 70950092, pos = { x = -4078.890, y = 199.763, z = -376.852 }, rot = { x = 0.000, y = 212.796, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1364012, name = "ANY_GADGET_DIE_364012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_364012", action = "action_EVENT_ANY_GADGET_DIE_364012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1364013, name = "ANY_GADGET_DIE_364013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_364013", action = "action_EVENT_ANY_GADGET_DIE_364013" },
	{ config_id = 1364014, name = "ANY_MONSTER_DIE_364014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_364014", action = "action_EVENT_ANY_MONSTER_DIE_364014" }
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
		{ config_id = 364019, gadget_id = 70290181, pos = { x = -4048.917, y = 199.999, z = -380.250 }, rot = { x = 0.000, y = 322.380, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 364020, gadget_id = 70290181, pos = { x = -4031.499, y = 199.999, z = -365.834 }, rot = { x = 0.000, y = 322.380, z = 0.000 }, level = 30, area_id = 17 }
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
		monsters = { 364001, 364002, 364003, 364022, 364023 },
		gadgets = { 364004, 364005, 364006, 364007, 364008, 364009, 364010, 364011, 364015, 364016, 364017, 364018, 364021 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_364012", "ANY_GADGET_DIE_364013", "ANY_MONSTER_DIE_364014" },
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
function condition_EVENT_ANY_GADGET_DIE_364012(context, evt)
	if 364004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_364012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 364009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_364013(context, evt)
	if 364005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_364013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 364010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_364014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133210364) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_364014(context, evt)
	-- 将configid为 364011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 364011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end