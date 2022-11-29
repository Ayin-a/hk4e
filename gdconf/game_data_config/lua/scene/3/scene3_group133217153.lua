-- 基础信息
local base_info = {
	group_id = 133217153
}

-- DEFS_MISCS
local door = {153003,153004} --所有门的ConfigID需要注册

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
	-- 门必须是Persistent记录状态存档
	[153001] = { config_id = 153001, gadget_id = 70360169, pos = { x = -4437.130, y = 188.033, z = -3738.411 }, rot = { x = 354.743, y = 354.984, z = 355.779 }, level = 30, persistent = true, area_id = 14 },
	-- 门必须是Persistent记录状态存档
	[153002] = { config_id = 153002, gadget_id = 70360169, pos = { x = -4441.213, y = 200.769, z = -3744.672 }, rot = { x = 5.207, y = 176.534, z = 4.129 }, level = 30, persistent = true, area_id = 14 },
	-- 门必须是Persistent记录状态存档
	[153003] = { config_id = 153003, gadget_id = 70360169, pos = { x = -4421.945, y = 195.373, z = -3789.609 }, rot = { x = 3.469, y = 85.600, z = 355.615 }, level = 30, persistent = true, area_id = 14 },
	-- 门必须是Persistent记录状态存档
	[153004] = { config_id = 153004, gadget_id = 70360169, pos = { x = -4423.846, y = 199.464, z = -3742.973 }, rot = { x = 354.445, y = 355.653, z = 355.076 }, level = 30, persistent = true, area_id = 14 },
	[153006] = { config_id = 153006, gadget_id = 70360122, pos = { x = -4437.012, y = 189.030, z = -3738.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, interact_id = 54, area_id = 14 },
	[153007] = { config_id = 153007, gadget_id = 70360122, pos = { x = -4441.088, y = 201.881, z = -3745.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, interact_id = 52, area_id = 14 },
	[153009] = { config_id = 153009, gadget_id = 70211102, pos = { x = -4418.416, y = 195.364, z = -3784.949 }, rot = { x = 355.873, y = 357.104, z = 355.906 }, level = 26, chest_drop_id = 1050141, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	[153015] = { config_id = 153015, gadget_id = 70330105, pos = { x = -4419.620, y = 196.057, z = -3777.722 }, rot = { x = 0.000, y = 94.597, z = 0.000 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
	[153014] = { config_id = 153014, shape = RegionShape.CUBIC, size = { x = 5.000, y = 3.000, z = 5.000 }, pos = { x = -4418.916, y = 197.088, z = -3783.786 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1153005, name = "GADGET_STATE_CHANGE_153005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153005", action = "action_EVENT_GADGET_STATE_CHANGE_153005" },
	{ config_id = 1153008, name = "GADGET_STATE_CHANGE_153008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153008", action = "action_EVENT_GADGET_STATE_CHANGE_153008" },
	{ config_id = 1153014, name = "ENTER_REGION_153014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_153014", action = "action_EVENT_ENTER_REGION_153014", trigger_count = 0 },
	{ config_id = 1153016, name = "GROUP_LOAD_153016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_153016", action = "action_EVENT_GROUP_LOAD_153016", trigger_count = 0 },
	{ config_id = 1153017, name = "GROUP_LOAD_153017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_153017", action = "action_EVENT_GROUP_LOAD_153017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Door01", value = 0, no_refresh = true },
	{ config_id = 2, name = "Door02", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	npcs = {
		{ config_id = 153010, npc_id = 20443, pos = { x = -4433.907, y = 200.895, z = -3743.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 14 },
		{ config_id = 153011, npc_id = 20443, pos = { x = -4433.228, y = 189.266, z = -3726.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 14 },
		{ config_id = 153012, npc_id = 20443, pos = { x = -4431.846, y = 206.560, z = -3742.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 14 },
		{ config_id = 153013, npc_id = 20440, pos = { x = -4432.551, y = 190.843, z = -3784.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 14 }
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
		monsters = { },
		gadgets = { 153001, 153002, 153003, 153004, 153006, 153007, 153009, 153015 },
		regions = { 153014 },
		triggers = { "GADGET_STATE_CHANGE_153005", "GADGET_STATE_CHANGE_153008", "ENTER_REGION_153014", "GROUP_LOAD_153016", "GROUP_LOAD_153017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217153, 153007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153005(context, evt)
	-- 将configid为 153002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Door01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Door01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133217153, 153006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153008(context, evt)
	-- 将configid为 153001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Door02" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Door02", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_153014(context, evt)
	if evt.param1 ~= 153014 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_153014(context, evt)
	-- 将configid为 153009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_153016(context, evt)
	-- 判断变量"Door01"为1
	if ScriptLib.GetGroupVariableValue(context, "Door01") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153016(context, evt)
	-- 将configid为 153002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_153017(context, evt)
	-- 判断变量"Door02"为1
	if ScriptLib.GetGroupVariableValue(context, "Door02") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_153017(context, evt)
	-- 将configid为 153001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/PirateShoji"