-- 基础信息
local base_info = {
	group_id = 133304222
}

-- Trigger变量
local defs = {
	gadget_CoreID = 222005,
	monster_BossID = 222002,
	gadget_Point_1 = 222006,
	gadget_Point_2 = 222007,
	gadget_Point_3 = 222008,
	point_camera = 222001,
	gadget_lookEntity = 222005,
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
	[222002] = { config_id = 222002, monster_id = 24030201, pos = { x = -1303.854, y = 276.678, z = 2868.020 }, rot = { x = 0.000, y = 82.542, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[222003] = { config_id = 222003, gadget_id = 70310197, pos = { x = -1305.896, y = 276.137, z = 2885.255 }, rot = { x = 0.000, y = 321.505, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[222004] = { config_id = 222004, gadget_id = 70211011, pos = { x = -1318.431, y = 275.788, z = 2855.485 }, rot = { x = 353.306, y = 100.001, z = 7.255 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	[222005] = { config_id = 222005, gadget_id = 70310193, pos = { x = -1311.280, y = 277.680, z = 2848.530 }, rot = { x = 10.605, y = 7.696, z = 19.252 }, level = 30, persistent = true, area_id = 21 },
	[222006] = { config_id = 222006, gadget_id = 70310195, pos = { x = -1310.363, y = 275.557, z = 2883.087 }, rot = { x = 0.000, y = 123.249, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[222007] = { config_id = 222007, gadget_id = 70310195, pos = { x = -1276.307, y = 283.075, z = 2860.161 }, rot = { x = 0.000, y = 233.171, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[222008] = { config_id = 222008, gadget_id = 70310195, pos = { x = -1295.579, y = 284.930, z = 2840.118 }, rot = { x = 0.000, y = 1.921, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[222009] = { config_id = 222009, gadget_id = 70330197, pos = { x = -1327.366, y = 274.595, z = 2865.337 }, rot = { x = 1.000, y = 347.577, z = 359.780 }, level = 30, area_id = 21 },
	[222012] = { config_id = 222012, gadget_id = 70310191, pos = { x = -1308.500, y = 275.478, z = 2876.002 }, rot = { x = 0.000, y = 306.593, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[222013] = { config_id = 222013, gadget_id = 70310197, pos = { x = -1299.563, y = 277.550, z = 2873.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[222014] = { config_id = 222014, gadget_id = 70310197, pos = { x = -1307.640, y = 278.309, z = 2855.973 }, rot = { x = 0.000, y = 321.505, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[222015] = { config_id = 222015, gadget_id = 70290492, pos = { x = -1309.007, y = 280.173, z = 2882.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 21 },
	[222017] = { config_id = 222017, gadget_id = 70310198, pos = { x = -1314.055, y = 275.415, z = 2868.241 }, rot = { x = 0.000, y = 223.486, z = 0.000 }, level = 30, area_id = 21 },
	[222018] = { config_id = 222018, gadget_id = 70310197, pos = { x = -1321.334, y = 275.549, z = 2856.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[222019] = { config_id = 222019, gadget_id = 70310197, pos = { x = -1284.688, y = 280.985, z = 2864.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[222020] = { config_id = 222020, gadget_id = 70310196, pos = { x = -1312.246, y = 278.741, z = 2852.187 }, rot = { x = 0.000, y = 5.058, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[222021] = { config_id = 222021, gadget_id = 70310196, pos = { x = -1307.981, y = 281.051, z = 2850.202 }, rot = { x = 0.000, y = 69.831, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[222022] = { config_id = 222022, gadget_id = 70310196, pos = { x = -1309.763, y = 280.397, z = 2847.776 }, rot = { x = 345.420, y = 120.305, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1222010, name = "LUA_NOTIFY_222010", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_222010" },
	{ config_id = 1222011, name = "MONSTER_BATTLE_222011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_222011", action = "action_EVENT_MONSTER_BATTLE_222011", trigger_count = 0 },
	{ config_id = 1222016, name = "ANY_MONSTER_DIE_222016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_222016", action = "action_EVENT_ANY_MONSTER_DIE_222016" },
	-- 核心消失刷宝箱
	{ config_id = 1222023, name = "ANY_GADGET_DIE_222023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_222023", action = "action_EVENT_ANY_GADGET_DIE_222023" },
	-- 节点死对应特效消失
	{ config_id = 1222024, name = "ANY_GADGET_DIE_222024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_222024", action = "action_EVENT_ANY_GADGET_DIE_222024" },
	-- 节点死对应特效消失
	{ config_id = 1222025, name = "ANY_GADGET_DIE_222025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_222025", action = "action_EVENT_ANY_GADGET_DIE_222025" },
	-- 节点死对应特效消失
	{ config_id = 1222026, name = "ANY_GADGET_DIE_222026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_222026", action = "action_EVENT_ANY_GADGET_DIE_222026" }
}

-- 点位
points = {
	[222001] = { config_id = 222001, pos = { x = -1322.000, y = 295.000, z = 2835.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
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
		gadgets = { 222005, 222006, 222007, 222008, 222009, 222012, 222015, 222017, 222020, 222021, 222022 },
		regions = { },
		triggers = { "LUA_NOTIFY_222010", "ANY_GADGET_DIE_222023", "ANY_GADGET_DIE_222024", "ANY_GADGET_DIE_222025", "ANY_GADGET_DIE_222026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 222002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_222011", "ANY_MONSTER_DIE_222016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 222004, 222009, 222012, 222017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 222004 },
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
function action_EVENT_LUA_NOTIFY_222010(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_222011(context, evt)
	if 222002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_222011(context, evt)
	-- 将configid为 222012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为222003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 222003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为222013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 222013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为222014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 222014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为222018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 222018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为222019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 222019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_222016(context, evt)
	if 222002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_222016(context, evt)
	-- 将configid为 222012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_222023(context, evt)
	if 222005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_222023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304222, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_222024(context, evt)
	if 222006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_222024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 222020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_222025(context, evt)
	if 222007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_222025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 222021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "dead" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "dead", 1, 133304225) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_222026(context, evt)
	if 222008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_222026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 222022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"