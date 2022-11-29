-- 基础信息
local base_info = {
	group_id = 144002005
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
	{ config_id = 5001, gadget_id = 70350267, pos = { x = 511.306, y = 123.111, z = -64.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 5002, gadget_id = 70350264, pos = { x = 510.842, y = 120.096, z = -121.057 }, rot = { x = 0.000, y = 235.699, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 5003, gadget_id = 70350265, pos = { x = 544.341, y = 124.612, z = -92.665 }, rot = { x = 357.999, y = 89.310, z = 4.043 }, level = 1, area_id = 102 },
	-- 发球机1区域
	{ config_id = 5004, gadget_id = 70350220, pos = { x = 510.138, y = 121.461, z = -53.069 }, rot = { x = 0.000, y = 355.662, z = 0.000 }, level = 1, autopick = true, area_id = 102 },
	-- 目标指引点2
	{ config_id = 5006, gadget_id = 70350085, pos = { x = 507.931, y = 120.028, z = -121.534 }, rot = { x = 0.000, y = 79.472, z = 0.000 }, level = 1, area_id = 102 },
	-- 目标指引点3
	{ config_id = 5007, gadget_id = 70350085, pos = { x = 553.008, y = 122.042, z = -93.327 }, rot = { x = 0.000, y = 272.916, z = 0.000 }, level = 1, area_id = 102 },
	-- 发球机2区域
	{ config_id = 5008, gadget_id = 70350220, pos = { x = 504.008, y = 120.000, z = -125.457 }, rot = { x = 0.000, y = 54.752, z = 0.000 }, level = 1, area_id = 102 },
	-- 发球机3区域
	{ config_id = 5009, gadget_id = 70350220, pos = { x = 550.991, y = 122.500, z = -93.284 }, rot = { x = 0.000, y = 272.916, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 5012, gadget_id = 70211121, pos = { x = 543.085, y = 123.505, z = -75.997 }, rot = { x = 6.134, y = 127.787, z = 17.711 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 5014, gadget_id = 70360001, pos = { x = 515.148, y = 121.753, z = -53.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 5020, gadget_id = 70350084, pos = { x = 515.148, y = 121.753, z = -53.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- 目标指引点3
	{ config_id = 5028, gadget_id = 70350085, pos = { x = 510.138, y = 121.461, z = -53.069 }, rot = { x = 0.000, y = 272.916, z = 0.000 }, level = 1, area_id = 102 },
	-- 区域1的镜头控制器
	{ config_id = 5029, gadget_id = 70350278, pos = { x = 511.306, y = 123.111, z = -64.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- 区域2的镜头控制器
	{ config_id = 5030, gadget_id = 70350278, pos = { x = 510.842, y = 120.096, z = -121.057 }, rot = { x = 0.000, y = 235.699, z = 0.000 }, level = 1, area_id = 102 },
	-- 区域3的镜头控制器
	{ config_id = 5031, gadget_id = 70350278, pos = { x = 544.341, y = 124.612, z = -92.665 }, rot = { x = 357.999, y = 89.310, z = 4.043 }, level = 1, area_id = 102 },
	{ config_id = 5032, gadget_id = 70690010, pos = { x = 540.700, y = 122.649, z = -76.639 }, rot = { x = 0.000, y = 356.977, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	-- 进入区域1后加载技能
	{ config_id = 5013, shape = RegionShape.SPHERE, radius = 3, pos = { x = 510.138, y = 121.461, z = -53.069 }, area_id = 102, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	-- 进入区域2后加载技能
	{ config_id = 5015, shape = RegionShape.SPHERE, radius = 3, pos = { x = 504.008, y = 120.000, z = -125.457 }, area_id = 102, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	-- 进入区域3后加载技能
	{ config_id = 5017, shape = RegionShape.SPHERE, radius = 3, pos = { x = 550.991, y = 122.500, z = -93.284 }, area_id = 102, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	-- 进入场地边线1后将石板1变为gearstart
	{ config_id = 5018, shape = RegionShape.SPHERE, radius = 3, pos = { x = 510.138, y = 121.461, z = -53.069 }, area_id = 102 },
	-- 在石板2尚存时，每次离开场地边线2将石板2变为default
	{ config_id = 5019, shape = RegionShape.SPHERE, radius = 3, pos = { x = 510.138, y = 121.461, z = -53.069 }, area_id = 102 },
	-- 进入场地边线2t后将石板2变为gearstart
	{ config_id = 5024, shape = RegionShape.SPHERE, radius = 3, pos = { x = 504.008, y = 120.000, z = -125.457 }, area_id = 102 },
	-- 在石板2尚存时，每次离开场地边线2将石板2变为default
	{ config_id = 5025, shape = RegionShape.SPHERE, radius = 3, pos = { x = 504.008, y = 120.000, z = -125.457 }, area_id = 102 },
	-- 进入场地边线3后将石板3变为gearstart
	{ config_id = 5026, shape = RegionShape.SPHERE, radius = 3, pos = { x = 550.991, y = 122.500, z = -93.284 }, area_id = 102 },
	-- 场地边线3变为default后将石板3变为default
	{ config_id = 5027, shape = RegionShape.SPHERE, radius = 3, pos = { x = 550.991, y = 122.500, z = -93.284 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 销毁发球机1后
	{ config_id = 1005005, name = "ANY_GADGET_DIE_5005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5005", action = "action_EVENT_ANY_GADGET_DIE_5005", tag = "666" },
	-- 销毁发球机2后
	{ config_id = 1005010, name = "ANY_GADGET_DIE_5010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5010", action = "action_EVENT_ANY_GADGET_DIE_5010", tag = "666" },
	-- 销毁发球机3后
	{ config_id = 1005011, name = "ANY_GADGET_DIE_5011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5011", action = "action_EVENT_ANY_GADGET_DIE_5011", tag = "666" },
	-- 挑战成功后刷出宝箱
	{ config_id = 1005016, name = "CHALLENGE_SUCCESS_5016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5016", trigger_count = 0 },
	-- 进入场地边线1后将石板1变为gearstart
	{ config_id = 1005018, name = "ENTER_REGION_5018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5018", action = "action_EVENT_ENTER_REGION_5018", trigger_count = 0 },
	-- 在石板2尚存时，每次离开场地边线2将石板2变为default
	{ config_id = 1005019, name = "LEAVE_REGION_5019", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_5019", action = "action_EVENT_LEAVE_REGION_5019", trigger_count = 0 },
	-- 创建隐形操作台时加选项
	{ config_id = 1005021, name = "GADGET_CREATE_5021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5021", action = "action_EVENT_GADGET_CREATE_5021", trigger_count = 0 },
	-- 点击了开始挑战按钮后...
	{ config_id = 1005022, name = "SELECT_OPTION_5022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5022", action = "action_EVENT_SELECT_OPTION_5022" },
	-- 挑战失败后重置Group
	{ config_id = 1005023, name = "CHALLENGE_FAIL_5023", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5023", trigger_count = 0 },
	-- 进入场地边线2t后将石板2变为gearstart
	{ config_id = 1005024, name = "ENTER_REGION_5024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5024", action = "action_EVENT_ENTER_REGION_5024", trigger_count = 0 },
	-- 在石板2尚存时，每次离开场地边线2将石板2变为default
	{ config_id = 1005025, name = "LEAVE_REGION_5025", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_5025", action = "action_EVENT_LEAVE_REGION_5025", trigger_count = 0 },
	-- 进入场地边线3后将石板3变为gearstart
	{ config_id = 1005026, name = "ENTER_REGION_5026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5026", action = "action_EVENT_ENTER_REGION_5026", trigger_count = 0 },
	-- 场地边线3变为default后将石板3变为default
	{ config_id = 1005027, name = "LEAVE_REGION_5027", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_5027", action = "action_EVENT_LEAVE_REGION_5027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "remainingSlate", value = 3, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 5,
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
		-- description = [默认加载的Suite],
		monsters = { },
		gadgets = { 5001, 5002, 5003, 5014, 5020 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5016", "GADGET_CREATE_5021", "SELECT_OPTION_5022", "CHALLENGE_FAIL_5023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 发球机2区域,
		monsters = { },
		gadgets = { 5006, 5008 },
		regions = { 5015, 5024, 5025 },
		triggers = { "ANY_GADGET_DIE_5010", "ENTER_REGION_5024", "LEAVE_REGION_5025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 发球机3区域,
		monsters = { },
		gadgets = { 5007, 5009 },
		regions = { 5017, 5026, 5027 },
		triggers = { "ANY_GADGET_DIE_5011", "ENTER_REGION_5026", "LEAVE_REGION_5027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 发球机1区域,
		monsters = { },
		gadgets = { 5004, 5028 },
		regions = { 5013, 5018, 5019 },
		triggers = { "ANY_GADGET_DIE_5005", "ENTER_REGION_5018", "LEAVE_REGION_5019" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [完成挑战后的Suite],
		monsters = { },
		gadgets = { 5012, 5020, 5032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5005(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5005(context, evt)
	-- 针对当前group内变量名为 "remainingSlate" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "remainingSlate", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5028 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002005, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002005, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5010(context, evt)
	if 5002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5010(context, evt)
	-- 针对当前group内变量名为 "remainingSlate" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "remainingSlate", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002005, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5011(context, evt)
	if 5003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5011(context, evt)
	-- 针对当前group内变量名为 "remainingSlate" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "remainingSlate", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为5012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5016(context, evt)
	-- 将configid为 5020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002005, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002005, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002005, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002005, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5018(context, evt)
	if evt.param1 ~= 5018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5018(context, evt)
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为5029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_5019(context, evt)
	if evt.param1 ~=5019 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_5019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 5001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5021(context, evt)
	if 5014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002005, 5014, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5022(context, evt)
	-- 判断是gadgetid 5014 option_id 175
	if 5014 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5022(context, evt)
	-- 将configid为 5020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144002005 ；指定config：5014；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144002005, 5014, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002005, 4)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为63的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 63, 90, 2, 666, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5023(context, evt)
	-- 将本组内变量名为 "remainingSlate" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "remainingSlate", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 5020 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5020, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5024(context, evt)
	if evt.param1 ~= 5024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5024(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为5030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_5025(context, evt)
	if evt.param1 ~=5025 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_5025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 5002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5026(context, evt)
	if evt.param1 ~= 5026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5026(context, evt)
	-- 将configid为 5003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为5031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_5027(context, evt)
	if evt.param1 ~=5027 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_5027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 5003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end