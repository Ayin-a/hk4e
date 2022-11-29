-- 基础信息
local base_info = {
	group_id = 133307029
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
	{ config_id = 29001, gadget_id = 70330374, pos = { x = -1908.122, y = 150.138, z = 5312.536 }, rot = { x = 303.941, y = 196.356, z = 335.414 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 29002, gadget_id = 70330358, pos = { x = -2021.154, y = 172.453, z = 5560.818 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, arguments = { 7 }, area_id = 27 },
	{ config_id = 29005, gadget_id = 70211121, pos = { x = -2016.144, y = 172.870, z = 5560.818 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 29006, gadget_id = 70330366, pos = { x = -2040.858, y = 160.305, z = 5559.329 }, rot = { x = 338.199, y = 183.393, z = 359.263 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 29007, gadget_id = 70330377, pos = { x = -1820.199, y = 155.910, z = 5690.351 }, rot = { x = 287.166, y = 161.660, z = 349.350 }, level = 26, chest_drop_id = 1050243, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 29008, gadget_id = 70330367, pos = { x = -2322.506, y = 172.159, z = 5840.961 }, rot = { x = 356.213, y = 269.226, z = 351.105 }, level = 26, chest_drop_id = 1050236, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 29009, gadget_id = 70330366, pos = { x = -1843.564, y = 154.819, z = 5481.714 }, rot = { x = 314.340, y = 206.161, z = 349.086 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 29010, gadget_id = 70330374, pos = { x = -1932.130, y = 150.905, z = 5931.511 }, rot = { x = 339.321, y = 287.884, z = 359.911 }, level = 26, chest_drop_id = 1050241, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 },
	{ config_id = 29014, gadget_id = 71700540, pos = { x = -2021.154, y = 172.453, z = 5560.818 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 29018, gadget_id = 70330320, pos = { x = -2021.154, y = 172.453, z = 5560.818 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, interact_id = 137, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 29003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2021.154, y = 172.072, z = 5560.818 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1029003, name = "ENTER_REGION_29003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29003", action = "action_EVENT_ENTER_REGION_29003" },
	{ config_id = 1029012, name = "GADGET_STATE_CHANGE_29012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29012", action = "action_EVENT_GADGET_STATE_CHANGE_29012" },
	{ config_id = 1029013, name = "GROUP_LOAD_29013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_29013", action = "action_EVENT_GROUP_LOAD_29013", trigger_count = 0 },
	{ config_id = 1029016, name = "GROUP_LOAD_29016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_29016", action = "action_EVENT_GROUP_LOAD_29016", trigger_count = 0 },
	{ config_id = 1029017, name = "GADGET_STATE_CHANGE_29017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29017", action = "action_EVENT_GADGET_STATE_CHANGE_29017" }
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
		gadgets = { 29001, 29002, 29006, 29007, 29008, 29009, 29010, 29018 },
		regions = { 29003 },
		triggers = { "ENTER_REGION_29003", "GADGET_STATE_CHANGE_29012", "GROUP_LOAD_29013", "GROUP_LOAD_29016", "GADGET_STATE_CHANGE_29017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_29003(context, evt)
	if evt.param1 ~= 29003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29012(context, evt)
	if 29002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29012(context, evt)
	-- 创建id为29005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 29005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为29014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 29014 }) then
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
function condition_EVENT_GROUP_LOAD_29013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307029, 29002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_29013(context, evt)
	-- 创建id为29005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 29005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为29014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 29014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_29016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307029, 29018) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_29016(context, evt)
	-- 将configid为 29002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29017(context, evt)
	if 29018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29017(context, evt)
	-- 将configid为 29002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end