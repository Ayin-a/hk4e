-- 基础信息
local base_info = {
	group_id = 133008108
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
	{ config_id = 108002, npc_id = 20199, pos = { x = 795.138, y = 286.352, z = -915.785 }, rot = { x = 345.654, y = 306.004, z = 328.112 }, area_id = 10 },
	{ config_id = 108005, npc_id = 20201, pos = { x = 1184.746, y = 360.006, z = -955.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	{ config_id = 108006, npc_id = 20205, pos = { x = 1037.991, y = 344.082, z = -493.830 }, rot = { x = 346.347, y = 85.162, z = 13.182 }, area_id = 10 },
	{ config_id = 108010, npc_id = 20197, pos = { x = 604.867, y = 203.273, z = -1166.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	{ config_id = 108011, npc_id = 20202, pos = { x = 608.221, y = 202.310, z = -1157.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 108001, gadget_id = 70360101, pos = { x = 795.278, y = 285.599, z = -916.364 }, rot = { x = 332.738, y = 140.119, z = 18.824 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 108003, gadget_id = 70360101, pos = { x = 1037.713, y = 342.599, z = -493.473 }, rot = { x = 341.109, y = 129.939, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 108004, gadget_id = 70360101, pos = { x = 1184.006, y = 359.672, z = -955.873 }, rot = { x = 307.744, y = 203.565, z = 60.903 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 108007, gadget_id = 70360101, pos = { x = 604.048, y = 202.146, z = -1166.636 }, rot = { x = 351.163, y = 71.606, z = 344.098 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 108009, gadget_id = 70360101, pos = { x = 607.697, y = 201.273, z = -1157.181 }, rot = { x = 330.437, y = 153.028, z = 0.005 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 108008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 795.501, y = 286.754, z = -916.671 }, area_id = 10 },
	{ config_id = 108012, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1184.277, y = 360.340, z = -956.767 }, area_id = 10 },
	{ config_id = 108013, shape = RegionShape.SPHERE, radius = 14.2, pos = { x = 613.308, y = 201.489, z = -1164.289 }, area_id = 10 },
	{ config_id = 108014, shape = RegionShape.SPHERE, radius = 4.2, pos = { x = 1038.212, y = 343.551, z = -494.023 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1108008, name = "ENTER_REGION_108008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108008", action = "action_EVENT_ENTER_REGION_108008" },
	{ config_id = 1108012, name = "ENTER_REGION_108012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108012", action = "action_EVENT_ENTER_REGION_108012" },
	{ config_id = 1108013, name = "ENTER_REGION_108013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108013", action = "action_EVENT_ENTER_REGION_108013" },
	{ config_id = 1108014, name = "ENTER_REGION_108014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_108014", action = "action_EVENT_ENTER_REGION_108014" }
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
		gadgets = { 108001, 108003, 108004, 108007, 108009 },
		regions = { 108008, 108012, 108013, 108014 },
		triggers = { "ENTER_REGION_108008", "ENTER_REGION_108012", "ENTER_REGION_108013", "ENTER_REGION_108014" },
		npcs = { 108002, 108005, 108006, 108010, 108011 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_108008(context, evt)
	if evt.param1 ~= 108008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108008(context, evt)
	-- 将configid为 108001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108012(context, evt)
	if evt.param1 ~= 108012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108012(context, evt)
	-- 将configid为 108004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108013(context, evt)
	if evt.param1 ~= 108013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108013(context, evt)
	-- 将configid为 108007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 108009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133008320, monsters = {}, gadgets = {320001} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_108014(context, evt)
	if evt.param1 ~= 108014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_108014(context, evt)
	-- 将configid为 108003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 108003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end