-- 基础信息
local base_info = {
	group_id = 133309137
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
	{ config_id = 137001, gadget_id = 70330372, pos = { x = -2262.431, y = -35.091, z = 5881.828 }, rot = { x = 337.526, y = 87.028, z = 355.142 }, level = 26, chest_drop_id = 1050239, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 137002, gadget_id = 70330359, pos = { x = -2293.220, y = -78.218, z = 5864.110 }, rot = { x = 0.000, y = 170.000, z = 0.000 }, level = 32, persistent = true, arguments = { 4 }, area_id = 27 },
	{ config_id = 137003, gadget_id = 70330370, pos = { x = -2185.104, y = 64.339, z = 5956.144 }, rot = { x = 346.816, y = 120.408, z = 0.001 }, level = 26, chest_drop_id = 1050238, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 137004, gadget_id = 70330373, pos = { x = -2180.483, y = 40.118, z = 5864.565 }, rot = { x = 306.083, y = 322.498, z = 351.201 }, level = 26, chest_drop_id = 1050240, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 137005, gadget_id = 70330366, pos = { x = -2214.773, y = -92.280, z = 5992.614 }, rot = { x = 338.173, y = 69.845, z = 359.159 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 137006, gadget_id = 70330379, pos = { x = -2103.827, y = -56.185, z = 5707.975 }, rot = { x = 334.291, y = 28.647, z = 359.075 }, level = 26, chest_drop_id = 1050245, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 137007, gadget_id = 70211121, pos = { x = -2289.467, y = -78.186, z = 5869.442 }, rot = { x = 0.000, y = 215.000, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 137010, gadget_id = 70330374, pos = { x = -2259.111, y = 15.083, z = 5742.042 }, rot = { x = 314.505, y = 262.694, z = 352.764 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 137011, gadget_id = 71700541, pos = { x = -2293.288, y = -78.218, z = 5864.067 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 137018, gadget_id = 70330320, pos = { x = -2293.288, y = -78.218, z = 5864.067 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, interact_id = 138, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 137008, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2293.220, y = -78.218, z = 5864.110 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1137008, name = "ENTER_REGION_137008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_137008", action = "action_EVENT_ENTER_REGION_137008" },
	{ config_id = 1137014, name = "GADGET_STATE_CHANGE_137014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_137014", action = "action_EVENT_GADGET_STATE_CHANGE_137014" },
	{ config_id = 1137015, name = "GROUP_LOAD_137015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_137015", action = "action_EVENT_GROUP_LOAD_137015", trigger_count = 0 },
	{ config_id = 1137016, name = "GROUP_LOAD_137016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_137016", action = "action_EVENT_GROUP_LOAD_137016", trigger_count = 0 },
	{ config_id = 1137017, name = "GADGET_STATE_CHANGE_137017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_137017", action = "action_EVENT_GADGET_STATE_CHANGE_137017" }
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
		gadgets = { 137001, 137002, 137003, 137004, 137005, 137006, 137010, 137018 },
		regions = { 137008 },
		triggers = { "ENTER_REGION_137008", "GADGET_STATE_CHANGE_137014", "GROUP_LOAD_137015", "GROUP_LOAD_137016", "GADGET_STATE_CHANGE_137017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_137008(context, evt)
	if evt.param1 ~= 137008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_137008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_137014(context, evt)
	if 137002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_137014(context, evt)
	-- 创建id为137007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 137007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为137011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 137011 }) then
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
function condition_EVENT_GROUP_LOAD_137015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309137, 137002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_137015(context, evt)
	-- 创建id为137007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 137007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为137011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 137011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_137016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309137, 137018) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_137016(context, evt)
	-- 将configid为 137002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 137002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_137017(context, evt)
	if 137018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_137017(context, evt)
	-- 将configid为 137002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 137002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end