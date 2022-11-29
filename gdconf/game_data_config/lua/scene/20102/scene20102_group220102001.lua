-- 基础信息
local base_info = {
	group_id = 220102001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010201, pos = { x = 26.000, y = 1.969, z = 112.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 21010201, pos = { x = 22.000, y = 1.959, z = 112.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 21010502, pos = { x = -2.217, y = 1.884, z = 102.693 }, rot = { x = 0.000, y = 95.935, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 1006, monster_id = 21030301, pos = { x = 0.997, y = 1.871, z = 105.446 }, rot = { x = 0.000, y = 184.439, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1007, monster_id = 21010201, pos = { x = 3.377, y = 1.877, z = 103.962 }, rot = { x = 0.000, y = 239.943, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 1008, monster_id = 21010201, pos = { x = 1.220, y = 1.871, z = 100.023 }, rot = { x = 0.000, y = 337.315, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 },
	{ config_id = 1017, monster_id = 21011201, pos = { x = 24.000, y = 1.969, z = 113.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, monster_id = 21010201, pos = { x = -5.094, y = 1.930, z = 112.819 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9016 },
	{ config_id = 1034, monster_id = 21011002, pos = { x = -8.270, y = 1.886, z = 93.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1003, gadget_id = 70350025, pos = { x = 13.979, y = 10.467, z = 106.173 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350005, pos = { x = -12.982, y = 0.070, z = 110.956 }, rot = { x = 359.243, y = 90.000, z = 0.014 }, level = 1 },
	{ config_id = 1011, gadget_id = 70310004, pos = { x = 0.686, y = 1.894, z = 103.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1012, gadget_id = 70220013, pos = { x = -8.155, y = 1.856, z = 92.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220013, pos = { x = -9.891, y = 1.852, z = 93.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220014, pos = { x = -4.515, y = 1.943, z = 90.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70220014, pos = { x = 10.023, y = 1.905, z = 113.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70220013, pos = { x = 8.245, y = 1.911, z = 114.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70211101, pos = { x = 9.156, y = 1.888, z = 116.160 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 1019, gadget_id = 70220014, pos = { x = 9.707, y = 1.892, z = 114.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70220026, pos = { x = 8.931, y = 1.902, z = 90.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70220026, pos = { x = -7.428, y = 1.888, z = 91.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70211101, pos = { x = -9.533, y = 6.116, z = 25.822 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 1023, gadget_id = 70220013, pos = { x = -10.884, y = 6.132, z = 28.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70220014, pos = { x = -12.359, y = 6.145, z = 28.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70220013, pos = { x = -10.081, y = 6.169, z = 30.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70220026, pos = { x = -32.523, y = 6.110, z = 26.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70220013, pos = { x = -31.388, y = 6.110, z = 25.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1035, gadget_id = 70900201, pos = { x = -22.449, y = -0.124, z = 111.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70900201, pos = { x = -22.538, y = 9.607, z = 54.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1039, gadget_id = 70220004, pos = { x = 1.567, y = 1.000, z = 123.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 1040, gadget_id = 70220004, pos = { x = 7.971, y = 1.009, z = 123.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 1041, gadget_id = 70220004, pos = { x = 7.099, y = 1.930, z = 94.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 1042, gadget_id = 70220004, pos = { x = 2.701, y = 1.962, z = 114.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 1043, gadget_id = 70220004, pos = { x = 6.391, y = 1.867, z = 102.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 },
	{ config_id = 1044, gadget_id = 70220004, pos = { x = -12.965, y = 1.931, z = 81.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35 }
}

-- 区域
regions = {
	{ config_id = 1036, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 2.000 }, pos = { x = -22.750, y = 2.952, z = 128.200 } },
	{ config_id = 1037, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 10.000 }, pos = { x = -23.042, y = 1.812, z = 110.361 } }
}

-- 触发器
triggers = {
	{ config_id = 1001009, name = "ANY_MONSTER_DIE_1009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1009", action = "action_EVENT_ANY_MONSTER_DIE_1009" },
	{ config_id = 1001010, name = "ANY_MONSTER_DIE_1010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1010", action = "action_EVENT_ANY_MONSTER_DIE_1010" },
	{ config_id = 1001036, name = "ENTER_REGION_1036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1036", action = "action_EVENT_ENTER_REGION_1036" },
	{ config_id = 1001037, name = "ENTER_REGION_1037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1037", action = "action_EVENT_ENTER_REGION_1037" }
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
		monsters = { 1001, 1002, 1017 },
		gadgets = { 1003, 1004, 1011, 1012, 1013, 1014, 1015, 1016, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1027, 1028, 1039, 1040, 1041, 1042, 1043, 1044 },
		regions = { 1036, 1037 },
		triggers = { "ANY_MONSTER_DIE_1009", "ENTER_REGION_1036", "ENTER_REGION_1037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1005, 1006, 1007, 1008, 1033, 1034 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220102001, 2)
	
	-- 改变指定group组220102001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102001, 1003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1010(context, evt)
	-- 改变指定group组220102001中， configid为1004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102001, 1004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1036(context, evt)
	if evt.param1 ~= 1036 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1036(context, evt)
	-- 创建id为1035的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1035 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1037(context, evt)
	if evt.param1 ~= 1037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1037(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为1038的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1038 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组220102002中， configid为2011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102002, 2011, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220102002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102002, 2002, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end