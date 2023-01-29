-- 基础信息
local base_info = {
	group_id = 133314135
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
	{ config_id = 135001, gadget_id = 70330387, pos = { x = -630.306, y = 90.961, z = 4573.133 }, rot = { x = 287.166, y = 161.660, z = 349.350 }, level = 26, chest_drop_id = 1050249, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 135002, gadget_id = 70330389, pos = { x = -728.978, y = 135.693, z = 4174.747 }, rot = { x = 335.216, y = 344.401, z = 351.269 }, level = 26, chest_drop_id = 1050250, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 135003, gadget_id = 70211121, pos = { x = -789.120, y = 76.691, z = 4394.145 }, rot = { x = 15.243, y = 44.845, z = 6.412 }, level = 26, chest_drop_id = 2004900, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 135004, gadget_id = 70330366, pos = { x = -830.441, y = 93.379, z = 4378.485 }, rot = { x = 331.420, y = 240.634, z = 0.989 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 135005, gadget_id = 70330383, pos = { x = -1072.763, y = 76.937, z = 4610.141 }, rot = { x = 356.213, y = 269.226, z = 0.146 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 135006, gadget_id = 70330383, pos = { x = -725.590, y = 122.710, z = 4720.551 }, rot = { x = 334.483, y = 134.547, z = 342.349 }, level = 26, chest_drop_id = 1050247, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 135007, gadget_id = 70330366, pos = { x = -663.562, y = 101.257, z = 4303.605 }, rot = { x = 353.481, y = 33.455, z = 3.128 }, level = 26, chest_drop_id = 1050235, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 32 },
	{ config_id = 135008, gadget_id = 70330445, pos = { x = -792.242, y = 78.380, z = 4390.523 }, rot = { x = 18.082, y = 45.292, z = 10.729 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 135009, gadget_id = 70330320, pos = { x = -782.881, y = 56.122, z = 4502.124 }, rot = { x = 18.082, y = 45.292, z = 10.729 }, level = 32, persistent = true, interact_id = 164, area_id = 32 },
	{ config_id = 135015, gadget_id = 70290644, pos = { x = -780.691, y = 58.800, z = 4513.271 }, rot = { x = 0.000, y = 43.580, z = 0.000 }, level = 32, arguments = { 14 }, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 135010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -793.158, y = 58.341, z = 4499.272 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1135010, name = "ENTER_REGION_135010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_135010", action = "action_EVENT_ENTER_REGION_135010" },
	{ config_id = 1135011, name = "GADGET_STATE_CHANGE_135011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_135011", action = "action_EVENT_GADGET_STATE_CHANGE_135011" },
	{ config_id = 1135012, name = "GROUP_LOAD_135012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_135012", action = "action_EVENT_GROUP_LOAD_135012", trigger_count = 0 },
	{ config_id = 1135013, name = "GROUP_LOAD_135013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_135013", action = "action_EVENT_GROUP_LOAD_135013", trigger_count = 0 },
	{ config_id = 1135014, name = "GADGET_STATE_CHANGE_135014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_135014", action = "action_EVENT_GADGET_STATE_CHANGE_135014" }
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
		gadgets = { 135001, 135002, 135004, 135005, 135006, 135007, 135009, 135015 },
		regions = { 135010 },
		triggers = { "ENTER_REGION_135010", "GADGET_STATE_CHANGE_135011", "GROUP_LOAD_135012", "GROUP_LOAD_135013", "GADGET_STATE_CHANGE_135014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_135010(context, evt)
	if evt.param1 ~= 135010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_135010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7023, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_135011(context, evt)
	if 135015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_135011(context, evt)
	-- 创建id为135003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 135003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为135008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 135008 }) then
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
function condition_EVENT_GROUP_LOAD_135012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314135, 135015) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_135012(context, evt)
	-- 创建id为135003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 135003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为135008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 135008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_135013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133314135, 135009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_135013(context, evt)
	-- 将configid为 135015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_135014(context, evt)
	if 135009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_135014(context, evt)
	-- 将configid为 135015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end