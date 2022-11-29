-- 基础信息
local base_info = {
	group_id = 133213447
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
	{ config_id = 447001, gadget_id = 70211132, pos = { x = -3895.639, y = 365.031, z = -3158.856 }, rot = { x = 13.478, y = 68.222, z = 356.977 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 447002, shape = RegionShape.SPHERE, radius = 7, pos = { x = -3889.240, y = 365.086, z = -3156.841 }, area_id = 12 },
	{ config_id = 447003, shape = RegionShape.SPHERE, radius = 7, pos = { x = -3889.240, y = 365.086, z = -3156.841 }, area_id = 12 },
	{ config_id = 447004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -3892.269, y = 364.723, z = -3157.783 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1447002, name = "ENTER_REGION_447002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_447002", action = "action_EVENT_ENTER_REGION_447002", trigger_count = 0 },
	{ config_id = 1447003, name = "LEAVE_REGION_447003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_447003", action = "action_EVENT_LEAVE_REGION_447003", trigger_count = 0 },
	{ config_id = 1447004, name = "ENTER_REGION_447004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_447004", action = "action_EVENT_ENTER_REGION_447004", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 447001 },
		regions = { 447002, 447003, 447004 },
		triggers = { "ENTER_REGION_447002", "LEAVE_REGION_447003", "ENTER_REGION_447004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_447002(context, evt)
	if evt.param1 ~= 447002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_447002(context, evt)
	-- 将configid为 447001 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 447001, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_447003(context, evt)
	-- 判断是区域447003
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 447003 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_447003(context, evt)
	-- 将configid为 447001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 447001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_447004(context, evt)
	if evt.param1 ~= 447004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_447004(context, evt)
	-- 将configid为 447001 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 447001, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end