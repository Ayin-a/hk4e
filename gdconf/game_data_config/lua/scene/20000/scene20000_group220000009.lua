-- 基础信息
local base_info = {
	group_id = 220000009
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
	{ config_id = 9001, gadget_id = 70900028, pos = { x = -13.354, y = 0.000, z = -80.637 }, rot = { x = 0.000, y = 0.270, z = 0.000 }, level = 1 },
	{ config_id = 9002, gadget_id = 70900027, pos = { x = -13.372, y = 0.500, z = -60.035 }, rot = { x = 0.000, y = 0.270, z = 0.000 }, level = 1 },
	{ config_id = 9003, gadget_id = 70950001, pos = { x = -8.205, y = 14.400, z = -86.001 }, rot = { x = 0.000, y = 57.670, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 33, shape = RegionShape.SPHERE, radius = 10, pos = { x = -13.432, y = 0.350, z = -80.756 } },
	{ config_id = 34, shape = RegionShape.SPHERE, radius = 5, pos = { x = -12.377, y = 0.500, z = -45.736 } }
}

-- 触发器
triggers = {
	{ config_id = 1000033, name = "ENTER_REGION_33", event = EventType.EVENT_ENTER_REGION, source = "4", condition = "", action = "action_EVENT_ENTER_REGION_33", forbid_guest = false },
	{ config_id = 1000034, name = "ENTER_REGION_34", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_34", action = "action_EVENT_ENTER_REGION_34", trigger_count = 0, forbid_guest = false }
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
		monsters = { },
		gadgets = { 9001, 9002, 9003 },
		regions = { 33, 34 },
		triggers = { "ENTER_REGION_33", "ENTER_REGION_34" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_33(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_34(context, evt)
	if evt.param1 ~= 34 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34(context, evt)
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end