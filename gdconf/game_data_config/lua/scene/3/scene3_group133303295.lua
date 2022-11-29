-- 基础信息
local base_info = {
	group_id = 133303295
}

-- Trigger变量
local defs = {
	gadget_CoreID = 295005,
	monster_BossID = 295002,
	gadget_Point_1 = 295006,
	gadget_Point_2 = 295007,
	gadget_Point_3 = 295008,
	point_camera = 295001,
	gadget_lookEntity = 295005,
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
	[295002] = { config_id = 295002, monster_id = 22050201, pos = { x = -1393.840, y = 260.095, z = 3843.057 }, rot = { x = 0.000, y = 101.587, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[295032] = { config_id = 295032, monster_id = 20011201, pos = { x = -1399.700, y = 258.469, z = 3838.199 }, rot = { x = 0.000, y = 65.401, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, area_id = 23 },
	[295033] = { config_id = 295033, monster_id = 20011201, pos = { x = -1399.441, y = 259.567, z = 3843.348 }, rot = { x = 0.000, y = 44.675, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, area_id = 23 },
	[295034] = { config_id = 295034, monster_id = 20011201, pos = { x = -1394.131, y = 259.592, z = 3838.939 }, rot = { x = 0.000, y = 15.619, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[295004] = { config_id = 295004, gadget_id = 70211111, pos = { x = -1396.011, y = 259.140, z = 3838.978 }, rot = { x = 358.394, y = 153.377, z = 354.813 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[295005] = { config_id = 295005, gadget_id = 70310193, pos = { x = -1396.990, y = 258.981, z = 3841.450 }, rot = { x = 357.000, y = 6.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 21
	[295006] = { config_id = 295006, gadget_id = 70310195, pos = { x = -1410.924, y = 259.428, z = 3844.396 }, rot = { x = 26.319, y = 158.086, z = 22.566 }, level = 30, persistent = true, area_id = 23 },
	-- 23
	[295007] = { config_id = 295007, gadget_id = 70310195, pos = { x = -1386.641, y = 277.543, z = 3860.042 }, rot = { x = 7.684, y = 164.646, z = 6.151 }, level = 30, persistent = true, area_id = 23 },
	-- 22
	[295008] = { config_id = 295008, gadget_id = 70310195, pos = { x = -1436.478, y = 258.661, z = 3838.588 }, rot = { x = 351.000, y = 187.000, z = 355.000 }, level = 30, persistent = true, area_id = 23 },
	[295012] = { config_id = 295012, gadget_id = 70310191, pos = { x = -1418.527, y = 255.051, z = 3825.019 }, rot = { x = 358.376, y = 227.200, z = 353.611 }, level = 30, persistent = true, area_id = 23 },
	[295013] = { config_id = 295013, gadget_id = 70310197, pos = { x = -1408.226, y = 280.999, z = 3864.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[295014] = { config_id = 295014, gadget_id = 70310197, pos = { x = -1375.324, y = 275.112, z = 3865.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[295015] = { config_id = 295015, gadget_id = 70310197, pos = { x = -1399.241, y = 261.504, z = 3850.771 }, rot = { x = 0.000, y = 290.256, z = 0.000 }, level = 30, area_id = 23 },
	[295016] = { config_id = 295016, gadget_id = 70310197, pos = { x = -1386.166, y = 263.953, z = 3829.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[295017] = { config_id = 295017, gadget_id = 70310198, pos = { x = -1407.990, y = 255.880, z = 3830.327 }, rot = { x = 0.000, y = 178.000, z = 354.000 }, level = 30, area_id = 23 },
	[295018] = { config_id = 295018, gadget_id = 70310198, pos = { x = -1385.823, y = 262.531, z = 3844.358 }, rot = { x = 0.000, y = 192.343, z = 0.000 }, level = 30, area_id = 23 },
	[295020] = { config_id = 295020, gadget_id = 70310197, pos = { x = -1392.416, y = 263.240, z = 3852.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[295021] = { config_id = 295021, gadget_id = 70310196, pos = { x = -1399.411, y = 259.886, z = 3840.905 }, rot = { x = 356.989, y = 285.554, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 22
	[295022] = { config_id = 295022, gadget_id = 70290513, pos = { x = -1399.723, y = 259.775, z = 3840.090 }, rot = { x = 0.000, y = 255.702, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[295023] = { config_id = 295023, gadget_id = 70310196, pos = { x = -1395.497, y = 261.287, z = 3842.434 }, rot = { x = 312.589, y = 31.574, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[295024] = { config_id = 295024, gadget_id = 70310197, pos = { x = -1402.403, y = 258.061, z = 3834.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[295028] = { config_id = 295028, gadget_id = 70310197, pos = { x = -1381.881, y = 265.302, z = 3846.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[295029] = { config_id = 295029, gadget_id = 70290491, pos = { x = -1396.675, y = 259.307, z = 3840.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[295035] = { config_id = 295035, gadget_id = 70217020, pos = { x = -1407.360, y = 260.139, z = 3847.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	[295036] = { config_id = 295036, gadget_id = 70690027, pos = { x = -1386.434, y = 265.948, z = 3853.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[295038] = { config_id = 295038, gadget_id = 71700521, pos = { x = -1387.752, y = 263.405, z = 3853.630 }, rot = { x = 22.595, y = 48.857, z = 348.978 }, level = 30, persistent = true, area_id = 23 },
	[295039] = { config_id = 295039, gadget_id = 70310197, pos = { x = -1381.098, y = 263.478, z = 3838.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[295043] = { config_id = 295043, gadget_id = 70310198, pos = { x = -1409.827, y = 280.483, z = 3869.742 }, rot = { x = 0.000, y = 16.100, z = 0.000 }, level = 30, area_id = 23 },
	[295047] = { config_id = 295047, gadget_id = 70310197, pos = { x = -1409.823, y = 254.688, z = 3825.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[295048] = { config_id = 295048, gadget_id = 70310197, pos = { x = -1426.561, y = 258.340, z = 3836.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[295050] = { config_id = 295050, gadget_id = 70310197, pos = { x = -1413.983, y = 258.756, z = 3839.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 节点死对应伏击怪
	{ config_id = 1295003, name = "GADGET_STATE_CHANGE_295003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_295003", action = "action_EVENT_GADGET_STATE_CHANGE_295003" },
	{ config_id = 1295010, name = "MONSTER_BATTLE_295010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_295010", action = "action_EVENT_MONSTER_BATTLE_295010" },
	{ config_id = 1295011, name = "ANY_MONSTER_DIE_295011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_295011", action = "action_EVENT_ANY_MONSTER_DIE_295011" },
	-- 节点死对应特效消失
	{ config_id = 1295025, name = "ANY_GADGET_DIE_295025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295025", action = "action_EVENT_ANY_GADGET_DIE_295025" },
	-- 节点死对应特效消失
	{ config_id = 1295026, name = "ANY_GADGET_DIE_295026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295026", action = "action_EVENT_ANY_GADGET_DIE_295026" },
	-- 节点死对应特效消失
	{ config_id = 1295027, name = "ANY_GADGET_DIE_295027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295027", action = "action_EVENT_ANY_GADGET_DIE_295027" },
	-- 核心消失刷宝箱
	{ config_id = 1295030, name = "ANY_GADGET_DIE_295030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295030", action = "action_EVENT_ANY_GADGET_DIE_295030" },
	-- 核心交互播镜头
	{ config_id = 1295031, name = "LUA_NOTIFY_295031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_295031" },
	-- 创造风场
	{ config_id = 1295037, name = "ANY_GADGET_DIE_295037", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295037", action = "action_EVENT_ANY_GADGET_DIE_295037" }
}

-- 点位
points = {
	[295001] = { config_id = 295001, pos = { x = -1430.254, y = 275.348, z = 3821.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
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
		gadgets = { 295005, 295006, 295007, 295008, 295012, 295017, 295018, 295021, 295022, 295023, 295029, 295035, 295038, 295043 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_295003", "ANY_GADGET_DIE_295025", "ANY_GADGET_DIE_295026", "ANY_GADGET_DIE_295027", "ANY_GADGET_DIE_295030", "LUA_NOTIFY_295031", "ANY_GADGET_DIE_295037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 295002, 295032, 295033, 295034 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_295010", "ANY_MONSTER_DIE_295011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 295004, 295012, 295017, 295018, 295035, 295043 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 295004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_295003(context, evt)
	if 295006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_295003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303298, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_295010(context, evt)
	if 295002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_295010(context, evt)
	-- 创建id为295015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 295015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为295020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 295020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为295024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 295024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为295028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 295028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为295039的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 295039 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_295011(context, evt)
	if 295002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_295011(context, evt)
	-- 将configid为 295012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 295012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295025(context, evt)
	if 295006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 295021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295026(context, evt)
	if 295007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 295023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295027(context, evt)
	if 295008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 295022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295030(context, evt)
	if 295005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303295, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_295031(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_295037(context, evt)
	if 295038 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_295037(context, evt)
	-- 创建id为295036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 295036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"