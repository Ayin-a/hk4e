-- 基础信息
local base_info = {
	group_id = 133301630
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 630003, monster_id = 25210203, pos = { x = -1055.066, y = 342.632, z = 4014.416 }, rot = { x = 0.000, y = 184.214, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9512, area_id = 23 },
	{ config_id = 630004, monster_id = 25210501, pos = { x = -1055.176, y = 342.744, z = 4012.153 }, rot = { x = 0.000, y = 2.131, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9511, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 630009, gadget_id = 70220128, pos = { x = -1055.120, y = 342.573, z = 4013.380 }, rot = { x = 1.227, y = 275.382, z = 356.524 }, level = 30, area_id = 23 },
	{ config_id = 630013, gadget_id = 70290584, pos = { x = -1055.990, y = 337.472, z = 4001.868 }, rot = { x = 0.000, y = 39.703, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 630014, gadget_id = 70290584, pos = { x = -1067.762, y = 337.782, z = 4014.374 }, rot = { x = 0.000, y = 129.933, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 630015, gadget_id = 70290584, pos = { x = -1044.332, y = 337.916, z = 4023.438 }, rot = { x = 0.000, y = 39.703, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 630016, gadget_id = 70290584, pos = { x = -1047.954, y = 349.979, z = 4008.008 }, rot = { x = 0.000, y = 39.926, z = 90.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 630017, gadget_id = 70290584, pos = { x = -1052.116, y = 349.979, z = 4017.667 }, rot = { x = 0.000, y = 130.277, z = 90.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 630012, shape = RegionShape.POLYGON, pos = { x = -1054.145, y = 333.500, z = 4012.788 }, height = 27.000, point_array = { { x = -1061.353, y = 4006.700 }, { x = -1066.559, y = 4005.051 }, { x = -1070.281, y = 4010.486 }, { x = -1063.208, y = 4018.129 }, { x = -1058.235, y = 4015.392 }, { x = -1049.600, y = 4027.045 }, { x = -1038.008, y = 4015.846 }, { x = -1051.779, y = 3998.530 } }, area_id = 23 },
	{ config_id = 630018, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1046.859, y = 349.215, z = 4014.229 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 隐藏穿帮门
	{ config_id = 1630001, name = "TIME_AXIS_PASS_630001", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_630001", action = "action_EVENT_TIME_AXIS_PASS_630001" },
	{ config_id = 1630002, name = "GROUP_LOAD_630002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_630002", action = "action_EVENT_GROUP_LOAD_630002", trigger_count = 0 },
	{ config_id = 1630011, name = "ANY_MONSTER_DIE_630011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_630011", action = "action_EVENT_ANY_MONSTER_DIE_630011" },
	{ config_id = 1630012, name = "ENTER_REGION_630012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_630012", action = "action_EVENT_ENTER_REGION_630012" },
	{ config_id = 1630018, name = "ENTER_REGION_630018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_630018", action = "action_EVENT_ENTER_REGION_630018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 630006, monster_id = 25210402, pos = { x = -1062.044, y = 342.552, z = 4010.431 }, rot = { x = 0.000, y = 284.516, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9512, area_id = 23 },
		{ config_id = 630007, monster_id = 25210301, pos = { x = -1064.357, y = 342.552, z = 4010.995 }, rot = { x = 0.000, y = 102.627, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9511, area_id = 23 }
	},
	gadgets = {
		{ config_id = 630010, gadget_id = 70220128, pos = { x = -1063.368, y = 342.429, z = 4010.619 }, rot = { x = 0.000, y = 199.599, z = 0.000 }, level = 30, area_id = 23 }
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
		monsters = { 630003, 630004 },
		gadgets = { 630009, 630013, 630014, 630015, 630016, 630017 },
		regions = { 630012, 630018 },
		triggers = { "TIME_AXIS_PASS_630001", "GROUP_LOAD_630002", "ENTER_REGION_630012", "ENTER_REGION_630018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_630011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630001(context, evt)
	if "hideDoor" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630001(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301630, EntityType.GADGET, 630016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301630, EntityType.GADGET, 630017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_630002(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_630002(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301630, EntityType.GADGET, 630016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301630, EntityType.GADGET, 630017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_630011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_630011(context, evt)
	-- 将configid为 630013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 630014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 630015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_630012(context, evt)
	if evt.param1 ~= 630012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_630012(context, evt)
	-- 将configid为 630013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 630014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 630015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301630, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_630018(context, evt)
	if evt.param1 ~= 630018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_630018(context, evt)
	-- 将configid为 630016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 630017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"hideDoor"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "hideDoor", {2}, false)
	
	
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end