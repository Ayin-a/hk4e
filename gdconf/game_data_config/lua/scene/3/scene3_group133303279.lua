-- 基础信息
local base_info = {
	group_id = 133303279
}

-- Trigger变量
local defs = {
	gadget_CoreID = 279005,
	monster_BossID = 279002,
	gadget_Point_1 = 279006,
	gadget_Point_2 = 279007,
	gadget_Point_3 = 279008,
	point_camera = 279001,
	gadget_lookEntity = 279005,
	look_duration = 5
}

-- DEFS_MISCS
local RequireSuite = {} --死域玩法的初始suit。若不填或不注入，默认走init_config.suite

local DeathField ={
	CoreID = defs.gadget_CoreID,
	BossID = defs.monster_BossID,
	BossSuite = 2,
	EndSuite = 3,
	PointList = {defs.gadget_Point_1,defs.gadget_Point_2,defs.gadget_Point_3},
}

local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[279002] = { config_id = 279002, monster_id = 26120101, pos = { x = -1833.773, y = 355.827, z = 3568.629 }, rot = { x = 0.000, y = 50.382, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[279033] = { config_id = 279033, monster_id = 26090201, pos = { x = -1830.660, y = 356.891, z = 3565.279 }, rot = { x = 0.000, y = 254.303, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23 },
	[279034] = { config_id = 279034, monster_id = 26090201, pos = { x = -1837.688, y = 356.678, z = 3566.450 }, rot = { x = 0.000, y = 25.511, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[279003] = { config_id = 279003, gadget_id = 70220020, pos = { x = -1825.828, y = 358.287, z = 3545.713 }, rot = { x = 6.179, y = 355.364, z = 339.852 }, level = 30, persistent = true, area_id = 23 },
	[279004] = { config_id = 279004, gadget_id = 70211111, pos = { x = -1832.491, y = 356.246, z = 3564.482 }, rot = { x = 0.998, y = 123.634, z = 4.952 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[279005] = { config_id = 279005, gadget_id = 70310193, pos = { x = -1833.900, y = 356.040, z = 3566.200 }, rot = { x = 0.000, y = 17.968, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 22
	[279006] = { config_id = 279006, gadget_id = 70310195, pos = { x = -1845.040, y = 357.687, z = 3571.604 }, rot = { x = 25.213, y = 67.289, z = 5.919 }, level = 30, persistent = true, area_id = 23 },
	-- 23
	[279007] = { config_id = 279007, gadget_id = 70310195, pos = { x = -1851.889, y = 366.538, z = 3554.770 }, rot = { x = 27.681, y = 20.529, z = 337.444 }, level = 30, persistent = true, area_id = 23 },
	-- 21
	[279008] = { config_id = 279008, gadget_id = 70310195, pos = { x = -1825.088, y = 357.972, z = 3542.968 }, rot = { x = 3.700, y = 36.349, z = 340.016 }, level = 30, persistent = true, area_id = 23 },
	[279012] = { config_id = 279012, gadget_id = 70310191, pos = { x = -1834.431, y = 357.803, z = 3549.499 }, rot = { x = 0.000, y = 349.310, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[279013] = { config_id = 279013, gadget_id = 70310197, pos = { x = -1829.604, y = 356.521, z = 3562.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[279014] = { config_id = 279014, gadget_id = 70310197, pos = { x = -1838.857, y = 358.478, z = 3553.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[279015] = { config_id = 279015, gadget_id = 70310197, pos = { x = -1840.939, y = 358.232, z = 3562.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[279016] = { config_id = 279016, gadget_id = 70310197, pos = { x = -1833.082, y = 355.318, z = 3574.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[279017] = { config_id = 279017, gadget_id = 70310198, pos = { x = -1835.152, y = 358.139, z = 3542.595 }, rot = { x = 0.000, y = 268.010, z = 0.000 }, level = 30, area_id = 23 },
	[279018] = { config_id = 279018, gadget_id = 70310197, pos = { x = -1831.515, y = 358.664, z = 3550.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[279021] = { config_id = 279021, gadget_id = 70290513, pos = { x = -1833.504, y = 357.689, z = 3564.913 }, rot = { x = 0.000, y = 161.825, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[279022] = { config_id = 279022, gadget_id = 70310196, pos = { x = -1835.361, y = 357.345, z = 3566.915 }, rot = { x = 353.041, y = 299.368, z = 12.430 }, level = 30, persistent = true, area_id = 23 },
	[279023] = { config_id = 279023, gadget_id = 70310196, pos = { x = -1835.326, y = 356.963, z = 3565.566 }, rot = { x = 338.082, y = 236.826, z = 5.772 }, level = 30, persistent = true, area_id = 23 },
	[279029] = { config_id = 279029, gadget_id = 70290491, pos = { x = -1833.900, y = 356.040, z = 3566.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[279036] = { config_id = 279036, gadget_id = 71700434, pos = { x = -1844.440, y = 357.262, z = 3573.434 }, rot = { x = 0.000, y = 172.998, z = 15.967 }, level = 30, persistent = true, area_id = 23 },
	[279037] = { config_id = 279037, gadget_id = 71700434, pos = { x = -1842.950, y = 357.013, z = 3571.064 }, rot = { x = 0.000, y = 17.723, z = 351.326 }, level = 30, persistent = true, area_id = 23 },
	[279045] = { config_id = 279045, gadget_id = 70310198, pos = { x = -1840.500, y = 354.899, z = 3587.691 }, rot = { x = 0.000, y = 63.859, z = 0.000 }, level = 30, area_id = 23 },
	[279047] = { config_id = 279047, gadget_id = 70220020, pos = { x = -1822.987, y = 356.979, z = 3546.102 }, rot = { x = 15.368, y = 359.100, z = 342.509 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1279009, name = "MONSTER_BATTLE_279009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_279009", action = "action_EVENT_MONSTER_BATTLE_279009" },
	{ config_id = 1279010, name = "ANY_MONSTER_DIE_279010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_279010", action = "action_EVENT_ANY_MONSTER_DIE_279010" },
	-- 节点死对应特效消失
	{ config_id = 1279025, name = "ANY_GADGET_DIE_279025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279025", action = "action_EVENT_ANY_GADGET_DIE_279025" },
	-- 节点死对应特效消失
	{ config_id = 1279026, name = "ANY_GADGET_DIE_279026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279026", action = "action_EVENT_ANY_GADGET_DIE_279026" },
	-- 节点死对应特效消失
	{ config_id = 1279027, name = "ANY_GADGET_DIE_279027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279027", action = "action_EVENT_ANY_GADGET_DIE_279027" },
	-- 核心消失刷宝箱
	{ config_id = 1279030, name = "ANY_GADGET_DIE_279030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_279030", action = "action_EVENT_ANY_GADGET_DIE_279030" },
	-- 核心交互播镜头
	{ config_id = 1279031, name = "LUA_NOTIFY_279031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_279031" }
}

-- 点位
points = {
	[279001] = { config_id = 279001, pos = { x = -1803.558, y = 361.448, z = 3568.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
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
	end_suite = 3,
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
		gadgets = { 279003, 279005, 279006, 279007, 279008, 279012, 279017, 279021, 279022, 279023, 279029, 279036, 279037, 279045, 279047 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_279025", "ANY_GADGET_DIE_279026", "ANY_GADGET_DIE_279027", "ANY_GADGET_DIE_279030", "LUA_NOTIFY_279031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 279002, 279033, 279034 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_279009", "ANY_MONSTER_DIE_279010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 279004, 279012, 279017, 279045 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 279004 },
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
function condition_EVENT_MONSTER_BATTLE_279009(context, evt)
	if 279002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_279009(context, evt)
	-- 将configid为 279012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为279013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 279013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为279014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 279014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为279015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 279015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为279016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 279016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为279018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 279018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_279010(context, evt)
	if 279002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_279010(context, evt)
	-- 将configid为 279012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279025(context, evt)
	if 279006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 279022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279026(context, evt)
	if 279007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 279023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279027(context, evt)
	if 279008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 279021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_279030(context, evt)
	if 279005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_279030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303279, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_279031(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"