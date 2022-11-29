-- 基础信息
local base_info = {
	group_id = 133008363
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363006, monster_id = 21020401, pos = { x = 1126.584, y = 506.350, z = -830.826 }, rot = { x = 0.000, y = 272.912, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 1007, 1014, 1019 }, pose_id = 401, climate_area_id = 1, area_id = 10 },
	{ config_id = 363014, monster_id = 21011301, pos = { x = 1140.463, y = 506.377, z = -829.086 }, rot = { x = 0.000, y = 262.033, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 363015, monster_id = 21011301, pos = { x = 1128.391, y = 506.364, z = -840.631 }, rot = { x = 0.000, y = 342.158, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 363022, monster_id = 21010901, pos = { x = 1119.243, y = 506.389, z = -835.096 }, rot = { x = 0.000, y = 34.987, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 363023, monster_id = 21010901, pos = { x = 1115.448, y = 507.781, z = -819.443 }, rot = { x = 0.000, y = 113.083, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 363024, monster_id = 21010901, pos = { x = 1135.849, y = 506.234, z = -830.804 }, rot = { x = 0.000, y = 260.747, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 363027, monster_id = 21010901, pos = { x = 1131.860, y = 506.287, z = -817.840 }, rot = { x = 0.000, y = 192.644, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 363028, monster_id = 21010901, pos = { x = 1112.251, y = 506.260, z = -830.044 }, rot = { x = 0.000, y = 88.567, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 363001, gadget_id = 70800025, pos = { x = 1138.000, y = 506.461, z = -849.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 363002, gadget_id = 70310027, pos = { x = 1123.770, y = 505.486, z = -819.129 }, rot = { x = 353.630, y = 14.699, z = 0.001 }, level = 30, area_id = 10 },
	{ config_id = 363003, gadget_id = 70310027, pos = { x = 1132.020, y = 505.518, z = -837.371 }, rot = { x = 355.826, y = 151.729, z = 0.001 }, level = 30, area_id = 10 },
	{ config_id = 363004, gadget_id = 70310027, pos = { x = 1116.116, y = 505.493, z = -835.043 }, rot = { x = 3.973, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 363005, gadget_id = 70310015, pos = { x = 1124.526, y = 506.235, z = -839.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 363007, gadget_id = 70310027, pos = { x = 1124.682, y = 505.666, z = -840.124 }, rot = { x = 355.928, y = 139.026, z = 0.918 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 363008, gadget_id = 70310027, pos = { x = 1134.741, y = 505.621, z = -824.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 363010, gadget_id = 70310015, pos = { x = 1134.702, y = 506.283, z = -824.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 363011, gadget_id = 70310015, pos = { x = 1116.676, y = 506.316, z = -824.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 363013, gadget_id = 70310027, pos = { x = 1116.805, y = 505.754, z = -824.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 363031, gadget_id = 70310015, pos = { x = 1124.526, y = 506.235, z = -839.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 363043, gadget_id = 70310015, pos = { x = 1116.675, y = 506.316, z = -824.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 363044, gadget_id = 70310015, pos = { x = 1134.702, y = 506.283, z = -824.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1363009, name = "ANY_MONSTER_DIE_363009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363009", action = "action_EVENT_ANY_MONSTER_DIE_363009", trigger_count = 0 },
	{ config_id = 1363012, name = "ANY_GADGET_DIE_363012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363012", action = "action_EVENT_ANY_GADGET_DIE_363012" },
	{ config_id = 1363016, name = "ANY_GADGET_DIE_363016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363016", action = "action_EVENT_ANY_GADGET_DIE_363016" },
	{ config_id = 1363017, name = "GROUP_LOAD_363017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_363017", trigger_count = 0 },
	{ config_id = 1363020, name = "SPECIFIC_MONSTER_HP_CHANGE_363020", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "363006", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363020", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363020" },
	{ config_id = 1363021, name = "SPECIFIC_MONSTER_HP_CHANGE_363021", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "363006", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363021", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363021" },
	{ config_id = 1363029, name = "MONSTER_BATTLE_363029", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_363029", action = "action_EVENT_MONSTER_BATTLE_363029" },
	{ config_id = 1363033, name = "ANY_GADGET_DIE_363033", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363033", action = "action_EVENT_ANY_GADGET_DIE_363033" },
	{ config_id = 1363034, name = "ANY_GADGET_DIE_363034", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363034", action = "action_EVENT_ANY_GADGET_DIE_363034" },
	{ config_id = 1363036, name = "SPECIFIC_MONSTER_HP_CHANGE_363036", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "363006", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363036", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363036" },
	{ config_id = 1363041, name = "ANY_GADGET_DIE_363041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363041", action = "action_EVENT_ANY_GADGET_DIE_363041" },
	{ config_id = 1363042, name = "ANY_GADGET_DIE_363042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363042", action = "action_EVENT_ANY_GADGET_DIE_363042" }
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
	end_suite = 4,
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
		monsters = { 363006 },
		gadgets = { 363001, 363005, 363043, 363044 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363009", "GROUP_LOAD_363017", "SPECIFIC_MONSTER_HP_CHANGE_363020", "SPECIFIC_MONSTER_HP_CHANGE_363021", "MONSTER_BATTLE_363029", "SPECIFIC_MONSTER_HP_CHANGE_363036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 363022, 363023, 363024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 363014, 363015, 363027, 363028 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 363005, 363043, 363044 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 363002, 363003, 363004, 363007, 363008, 363013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_363016", "ANY_GADGET_DIE_363033", "ANY_GADGET_DIE_363034" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 363002, 363003, 363004, 363007, 363008, 363013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_363012", "ANY_GADGET_DIE_363041", "ANY_GADGET_DIE_363042" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363009(context, evt)
	--判断死亡怪物的configid是否为 363006
	if evt.param1 ~= 363006 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008363, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008363, 3)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008363, 6)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008363, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363012(context, evt)
	if 363007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363012(context, evt)
	-- 创建id为363031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363016(context, evt)
	if 363007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363016(context, evt)
	-- 创建id为363031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_363017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008363, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363020(context, evt)
	--[[判断指定configid的怪物的血量小于%70时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008363, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363021(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363021(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008363, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_363029(context, evt)
	if 363006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_363029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363043 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363044 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008363, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363033(context, evt)
	if 363013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363033(context, evt)
	-- 创建id为363011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363034(context, evt)
	if 363008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363034(context, evt)
	-- 创建id为363010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363036(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_363036(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008363, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008363, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363041(context, evt)
	if 363008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363041(context, evt)
	-- 创建id为363010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363042(context, evt)
	if 363013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363042(context, evt)
	-- 创建id为363011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end