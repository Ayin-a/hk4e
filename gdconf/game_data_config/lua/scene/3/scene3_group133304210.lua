-- 基础信息
local base_info = {
	group_id = 133304210
}

-- Trigger变量
local defs = {
	gadget_CoreID = 210005,
	monster_BossID = 210002,
	gadget_Point_1 = 210006,
	gadget_Point_2 = 210007,
	gadget_Point_3 = 210008,
	point_camera = 210001,
	gadget_lookEntity = 210005,
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
    is_allow_input = true,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[210002] = { config_id = 210002, monster_id = 26120101, pos = { x = -1611.351, y = 212.223, z = 2782.191 }, rot = { x = 0.000, y = 216.188, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 21 },
	[210003] = { config_id = 210003, monster_id = 26120101, pos = { x = -1617.344, y = 212.918, z = 2782.049 }, rot = { x = 0.000, y = 24.534, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 201, area_id = 21 },
	[210016] = { config_id = 210016, monster_id = 26090201, pos = { x = -1620.541, y = 212.858, z = 2778.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[210019] = { config_id = 210019, monster_id = 26090201, pos = { x = -1615.525, y = 211.493, z = 2775.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[210004] = { config_id = 210004, gadget_id = 70211011, pos = { x = -1619.880, y = 215.203, z = 2795.157 }, rot = { x = 358.732, y = 56.207, z = 357.076 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	[210005] = { config_id = 210005, gadget_id = 70310193, pos = { x = -1607.454, y = 215.125, z = 2796.128 }, rot = { x = 350.386, y = 352.268, z = 9.382 }, level = 30, persistent = true, area_id = 21 },
	[210006] = { config_id = 210006, gadget_id = 70310195, pos = { x = -1641.261, y = 220.683, z = 2785.732 }, rot = { x = 0.000, y = 80.632, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[210007] = { config_id = 210007, gadget_id = 70310195, pos = { x = -1621.564, y = 211.928, z = 2773.438 }, rot = { x = 21.521, y = 87.325, z = 358.436 }, level = 30, persistent = true, area_id = 21 },
	[210008] = { config_id = 210008, gadget_id = 70310195, pos = { x = -1610.977, y = 207.246, z = 2753.659 }, rot = { x = 356.499, y = 354.472, z = 2.218 }, level = 30, persistent = true, area_id = 21 },
	[210012] = { config_id = 210012, gadget_id = 70310191, pos = { x = -1631.318, y = 214.740, z = 2777.016 }, rot = { x = 0.000, y = 323.695, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[210013] = { config_id = 210013, gadget_id = 70310197, pos = { x = -1599.851, y = 213.251, z = 2775.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[210014] = { config_id = 210014, gadget_id = 70310197, pos = { x = -1650.702, y = 219.013, z = 2772.629 }, rot = { x = 0.000, y = 43.613, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[210015] = { config_id = 210015, gadget_id = 70310197, pos = { x = -1622.623, y = 209.959, z = 2762.254 }, rot = { x = 0.000, y = 13.851, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[210017] = { config_id = 210017, gadget_id = 70310198, pos = { x = -1635.634, y = 215.507, z = 2757.994 }, rot = { x = 0.000, y = 60.622, z = 0.000 }, level = 30, area_id = 21 },
	[210018] = { config_id = 210018, gadget_id = 70310198, pos = { x = -1624.326, y = 215.553, z = 2791.652 }, rot = { x = 9.382, y = 138.682, z = 354.894 }, level = 30, area_id = 21 },
	[210020] = { config_id = 210020, gadget_id = 70310196, pos = { x = -1609.988, y = 216.088, z = 2795.114 }, rot = { x = 2.044, y = 254.538, z = 5.014 }, level = 30, persistent = true, area_id = 21 },
	[210021] = { config_id = 210021, gadget_id = 70310196, pos = { x = -1608.857, y = 215.755, z = 2793.694 }, rot = { x = 0.000, y = 211.567, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[210022] = { config_id = 210022, gadget_id = 70310196, pos = { x = -1607.323, y = 216.012, z = 2792.916 }, rot = { x = 0.000, y = 183.857, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[210029] = { config_id = 210029, gadget_id = 70290492, pos = { x = -1620.981, y = 214.217, z = 2773.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1210009, name = "LUA_NOTIFY_210009", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_210009" },
	{ config_id = 1210010, name = "MONSTER_BATTLE_210010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_210010", action = "action_EVENT_MONSTER_BATTLE_210010" },
	{ config_id = 1210011, name = "ANY_MONSTER_DIE_210011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210011", action = "action_EVENT_ANY_MONSTER_DIE_210011" },
	-- 核心消失刷宝箱
	{ config_id = 1210023, name = "ANY_GADGET_DIE_210023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_210023", action = "action_EVENT_ANY_GADGET_DIE_210023" },
	-- 节点死对应特效消失
	{ config_id = 1210024, name = "ANY_GADGET_DIE_210024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_210024", action = "action_EVENT_ANY_GADGET_DIE_210024" },
	-- 节点死对应特效消失
	{ config_id = 1210025, name = "ANY_GADGET_DIE_210025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_210025", action = "action_EVENT_ANY_GADGET_DIE_210025" },
	-- 节点死对应特效消失
	{ config_id = 1210026, name = "ANY_GADGET_DIE_210026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_210026", action = "action_EVENT_ANY_GADGET_DIE_210026" }
}

-- 点位
points = {
	[210001] = { config_id = 210001, pos = { x = -1624.055, y = 231.013, z = 2788.125 }, rot = { x = 0.000, y = 64.195, z = 0.000 }, area_id = 21 }
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
		gadgets = { 210005, 210006, 210007, 210008, 210012, 210017, 210018, 210020, 210021, 210022, 210029 },
		regions = { },
		triggers = { "LUA_NOTIFY_210009", "ANY_GADGET_DIE_210023", "ANY_GADGET_DIE_210024", "ANY_GADGET_DIE_210025", "ANY_GADGET_DIE_210026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 210002, 210003, 210016, 210019 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_210010", "ANY_MONSTER_DIE_210011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 210004, 210012, 210017, 210018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 210004 },
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

-- 触发操作
function action_EVENT_LUA_NOTIFY_210009(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_210010(context, evt)
	if 210002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_210010(context, evt)
	-- 将configid为 210012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为210013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 210013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为210014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 210014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为210015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 210015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_210011(context, evt)
	if 210002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_210011(context, evt)
	-- 将configid为 210012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_210023(context, evt)
	if 210005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_210023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304210, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_210024(context, evt)
	if 210006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_210024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_210025(context, evt)
	if 210007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_210025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_210026(context, evt)
	if 210008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_210026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"