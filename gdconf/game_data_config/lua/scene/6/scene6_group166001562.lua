-- 基础信息
local base_info = {
	group_id = 166001562
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
	{ config_id = 562001, gadget_id = 70211122, pos = { x = 1047.910, y = 746.041, z = 246.886 }, rot = { x = 358.936, y = 96.268, z = 0.734 }, level = 26, drop_tag = "解谜高级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 562002, gadget_id = 70211112, pos = { x = 1052.064, y = 746.231, z = 249.565 }, rot = { x = 0.420, y = 188.847, z = 0.066 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 562004, gadget_id = 70290347, pos = { x = 1027.443, y = 747.747, z = 245.936 }, rot = { x = 0.000, y = 346.600, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 562003, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1054.341, y = 743.822, z = 237.541 }, area_id = 300 },
	{ config_id = 562005, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1054.341, y = 743.822, z = 237.541 }, area_id = 300 },
	{ config_id = 562006, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1054.341, y = 743.822, z = 237.541 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1562003, name = "ENTER_REGION_562003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_562003", action = "action_EVENT_ENTER_REGION_562003", trigger_count = 0 },
	{ config_id = 1562005, name = "ENTER_REGION_562005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_562005", action = "action_EVENT_ENTER_REGION_562005", trigger_count = 0 },
	{ config_id = 1562006, name = "ENTER_REGION_562006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_562006", action = "action_EVENT_ENTER_REGION_562006", trigger_count = 0 }
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
		gadgets = { 562001, 562002, 562004 },
		regions = { 562003, 562005, 562006 },
		triggers = { "ENTER_REGION_562003", "ENTER_REGION_562005", "ENTER_REGION_562006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_562003(context, evt)
	if evt.param1 ~= 562003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_562003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6078, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 562004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 562004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001110, 2)
	
	-- 将configid为 562001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 562001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 562002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 562002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_562005(context, evt)
	if evt.param1 ~= 562005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_562005(context, evt)
	-- 将configid为 562002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 562002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_562006(context, evt)
	if evt.param1 ~= 562006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_562006(context, evt)
	-- 将configid为 562001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 562001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end