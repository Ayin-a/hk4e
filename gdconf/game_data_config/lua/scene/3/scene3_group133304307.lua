-- 基础信息
local base_info = {
	group_id = 133304307
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 307001, monster_id = 25210201, pos = { x = -1171.855, y = 282.349, z = 2173.113 }, rot = { x = 0.000, y = 0.748, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 21 },
	{ config_id = 307003, monster_id = 25210301, pos = { x = -1143.674, y = 285.002, z = 2161.913 }, rot = { x = 0.000, y = 319.087, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, area_id = 21 },
	{ config_id = 307004, monster_id = 25210502, pos = { x = -1181.402, y = 288.183, z = 2164.287 }, rot = { x = 0.000, y = 194.521, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9001, area_id = 21 },
	{ config_id = 307011, monster_id = 25210301, pos = { x = -1182.240, y = 288.183, z = 2160.222 }, rot = { x = 0.000, y = 13.454, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9007, area_id = 21 },
	{ config_id = 307023, monster_id = 25210502, pos = { x = -1163.397, y = 292.891, z = 2152.843 }, rot = { x = 0.000, y = 88.476, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 21 },
	{ config_id = 307028, monster_id = 25210201, pos = { x = -1149.956, y = 286.318, z = 2154.970 }, rot = { x = 0.000, y = 283.059, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 21 },
	{ config_id = 307029, monster_id = 28020313, pos = { x = -1158.821, y = 290.246, z = 2137.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 307006, gadget_id = 70310479, pos = { x = -1168.640, y = 292.859, z = 2150.461 }, rot = { x = 0.000, y = 328.887, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 307007, gadget_id = 70310479, pos = { x = -1174.019, y = 292.838, z = 2152.040 }, rot = { x = 0.000, y = 333.263, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 307008, gadget_id = 70310479, pos = { x = -1158.250, y = 298.630, z = 2136.072 }, rot = { x = 0.000, y = 288.809, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 307009, gadget_id = 70310479, pos = { x = -1162.297, y = 298.623, z = 2137.218 }, rot = { x = 0.000, y = 29.593, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 307014, gadget_id = 70290584, pos = { x = -1160.530, y = 298.365, z = 2135.386 }, rot = { x = 0.000, y = 16.291, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 307015, gadget_id = 70290584, pos = { x = -1171.609, y = 292.851, z = 2150.162 }, rot = { x = 0.000, y = 15.245, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 307022, gadget_id = 70330216, pos = { x = -1157.119, y = 293.705, z = 2128.469 }, rot = { x = 337.513, y = 155.778, z = 1.695 }, level = 30, area_id = 21 },
	{ config_id = 307024, gadget_id = 70310198, pos = { x = -1172.487, y = 293.130, z = 2130.481 }, rot = { x = 354.375, y = 62.702, z = 7.273 }, level = 30, area_id = 21 },
	{ config_id = 307025, gadget_id = 70330218, pos = { x = -1158.341, y = 290.103, z = 2137.394 }, rot = { x = 0.000, y = 206.416, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1307002, name = "GROUP_LOAD_307002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_307002", action = "action_EVENT_GROUP_LOAD_307002", trigger_count = 0 },
	{ config_id = 1307030, name = "ANY_GADGET_DIE_307030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307030", action = "action_EVENT_ANY_GADGET_DIE_307030" },
	{ config_id = 1307031, name = "VARIABLE_CHANGE_307031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_307031", action = "action_EVENT_VARIABLE_CHANGE_307031" },
	{ config_id = 1307032, name = "TIME_AXIS_PASS_307032", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_307032", action = "action_EVENT_TIME_AXIS_PASS_307032" }
}

-- 变量
variables = {
	{ config_id = 1, name = "door", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 307005, monster_id = 25210502, pos = { x = -1182.755, y = 292.922, z = 2124.382 }, rot = { x = 0.000, y = 224.017, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 21 },
		{ config_id = 307012, monster_id = 25210301, pos = { x = -1184.759, y = 288.182, z = 2159.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9007, area_id = 21 },
		{ config_id = 307013, monster_id = 25210401, pos = { x = -1185.063, y = 292.762, z = 2126.912 }, rot = { x = 0.000, y = 154.650, z = 0.000 }, level = 30, drop_tag = "镀金旅团", affix = { 4180 }, pose_id = 9001, area_id = 21 }
	},
	gadgets = {
		{ config_id = 307016, gadget_id = 70210101, pos = { x = -1156.502, y = 286.756, z = 2154.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
		{ config_id = 307017, gadget_id = 70210101, pos = { x = -1167.009, y = 288.989, z = 2166.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", area_id = 21 },
		{ config_id = 307018, gadget_id = 70210101, pos = { x = -1175.979, y = 288.765, z = 2156.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
		{ config_id = 307019, gadget_id = 70210101, pos = { x = -1168.293, y = 292.742, z = 2132.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", area_id = 21 },
		{ config_id = 307020, gadget_id = 70210101, pos = { x = -1156.432, y = 299.414, z = 2128.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
		{ config_id = 307021, gadget_id = 70210101, pos = { x = -1156.144, y = 293.847, z = 2131.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 21 },
		{ config_id = 307026, gadget_id = 70210101, pos = { x = -1178.833, y = 282.838, z = 2167.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", area_id = 21 }
	},
	triggers = {
		{ config_id = 1307010, name = "GROUP_LOAD_307010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_307010", action = "action_EVENT_GROUP_LOAD_307010" }
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
		monsters = { 307001, 307003, 307004, 307011, 307023, 307028 },
		gadgets = { 307006, 307007, 307008, 307009, 307014, 307015, 307022, 307024, 307025 },
		regions = { },
		triggers = { "GROUP_LOAD_307002", "ANY_GADGET_DIE_307030", "VARIABLE_CHANGE_307031", "TIME_AXIS_PASS_307032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_307002(context, evt)
	-- 判断变量"door"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "door", 133304307) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_307002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 307014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_307030(context, evt)
	if 307025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_307030(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 307029, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_307031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "door", 133304307) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_307031(context, evt)
	-- 将configid为 307014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 307014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"delay"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_307032(context, evt)
	if "delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_307032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 307014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end