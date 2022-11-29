-- 基础信息
local base_info = {
	group_id = 133309341
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
	{ config_id = 341001, gadget_id = 70330389, pos = { x = -2613.680, y = 45.306, z = 5588.144 }, rot = { x = 311.662, y = 241.152, z = 350.675 }, level = 26, chest_drop_id = 1050250, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 341002, gadget_id = 70330360, pos = { x = -2618.990, y = 18.482, z = 5613.497 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, arguments = { 6 }, area_id = 27 },
	{ config_id = 341003, gadget_id = 70330387, pos = { x = -2677.896, y = -21.771, z = 5840.724 }, rot = { x = 287.330, y = 89.873, z = 351.154 }, level = 26, chest_drop_id = 1050249, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 341004, gadget_id = 70330366, pos = { x = -2714.894, y = 0.038, z = 5762.324 }, rot = { x = 342.307, y = 41.624, z = 344.872 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 341005, gadget_id = 70330369, pos = { x = -2842.339, y = 190.007, z = 5826.579 }, rot = { x = 328.812, y = 185.020, z = 3.461 }, level = 26, chest_drop_id = 1050237, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 341006, gadget_id = 70330366, pos = { x = -2840.079, y = 74.798, z = 5802.785 }, rot = { x = 342.634, y = 25.917, z = 0.000 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 341007, gadget_id = 70211121, pos = { x = -2619.075, y = 18.492, z = 5622.938 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 341010, gadget_id = 71700542, pos = { x = -2618.990, y = 18.482, z = 5613.497 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 341013, gadget_id = 70330374, pos = { x = -2596.073, y = 15.712, z = 5687.306 }, rot = { x = 346.405, y = 315.260, z = 7.910 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 341018, gadget_id = 70330320, pos = { x = -2618.990, y = 18.482, z = 5613.497 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, interact_id = 139, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 341008, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2618.990, y = 18.482, z = 5613.497 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1341008, name = "ENTER_REGION_341008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_341008", action = "action_EVENT_ENTER_REGION_341008" },
	{ config_id = 1341014, name = "GADGET_STATE_CHANGE_341014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_341014", action = "action_EVENT_GADGET_STATE_CHANGE_341014" },
	{ config_id = 1341015, name = "GROUP_LOAD_341015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_341015", action = "action_EVENT_GROUP_LOAD_341015", trigger_count = 0 },
	{ config_id = 1341016, name = "GROUP_LOAD_341016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_341016", action = "action_EVENT_GROUP_LOAD_341016", trigger_count = 0 },
	{ config_id = 1341017, name = "GADGET_STATE_CHANGE_341017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_341017", action = "action_EVENT_GADGET_STATE_CHANGE_341017" }
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
		gadgets = { 341001, 341002, 341003, 341004, 341005, 341006, 341013, 341018 },
		regions = { 341008 },
		triggers = { "ENTER_REGION_341008", "GADGET_STATE_CHANGE_341014", "GROUP_LOAD_341015", "GROUP_LOAD_341016", "GADGET_STATE_CHANGE_341017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_341008(context, evt)
	if evt.param1 ~= 341008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_341008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_341014(context, evt)
	if 341002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_341014(context, evt)
	-- 创建id为341007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 341007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为341010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 341010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_341015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309341, 341002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_341015(context, evt)
	-- 创建id为341007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 341007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为341010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 341010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_341016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309341, 341018) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_341016(context, evt)
	-- 将configid为 341002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 341002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_341017(context, evt)
	if 341018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_341017(context, evt)
	-- 将configid为 341002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 341002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end