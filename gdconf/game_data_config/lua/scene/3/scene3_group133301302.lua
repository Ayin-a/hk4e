-- 基础信息
local base_info = {
	group_id = 133301302
}

-- Trigger变量
local defs = {
	gadget_CoreID = 302005,
	monster_BossID = 302002,
	gadget_Point_1 = 302006,
	gadget_Point_2 = 302007,
	gadget_Point_3 = 302008,
	point_camera = 302014,
	gadget_lookEntity = 302005,
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
    blend_type = 1,
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
	[302001] = { config_id = 302001, monster_id = 26090501, pos = { x = -284.909, y = 192.300, z = 3303.440 }, rot = { x = 0.000, y = 292.562, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22 },
	[302002] = { config_id = 302002, monster_id = 26120201, pos = { x = -288.058, y = 192.300, z = 3304.550 }, rot = { x = 0.000, y = 293.567, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6116, 6117, 1009, 1007 }, isElite = true, pose_id = 201, area_id = 22 },
	[302003] = { config_id = 302003, monster_id = 26090501, pos = { x = -292.748, y = 192.300, z = 3302.328 }, rot = { x = 0.000, y = 292.562, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22 },
	[302016] = { config_id = 302016, monster_id = 26120201, pos = { x = -269.940, y = 192.300, z = 3307.773 }, rot = { x = 0.000, y = 248.853, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 201, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[302004] = { config_id = 302004, gadget_id = 70211121, pos = { x = -302.734, y = 192.065, z = 3301.359 }, rot = { x = 3.295, y = 272.984, z = 356.357 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	[302005] = { config_id = 302005, gadget_id = 70310194, pos = { x = -289.781, y = 194.709, z = 3302.893 }, rot = { x = 0.304, y = 290.881, z = 12.484 }, level = 27, persistent = true, area_id = 22 },
	[302006] = { config_id = 302006, gadget_id = 70310195, pos = { x = -294.925, y = 221.682, z = 3304.258 }, rot = { x = 353.948, y = 321.839, z = 4.180 }, level = 27, persistent = true, area_id = 22 },
	[302007] = { config_id = 302007, gadget_id = 70310195, pos = { x = -265.312, y = 192.300, z = 3311.868 }, rot = { x = 0.000, y = 213.426, z = 0.000 }, level = 27, persistent = true, area_id = 29 },
	[302008] = { config_id = 302008, gadget_id = 70310195, pos = { x = -296.124, y = 201.735, z = 3283.499 }, rot = { x = 0.000, y = 226.137, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[302009] = { config_id = 302009, gadget_id = 70310192, pos = { x = -282.337, y = 214.053, z = 3326.883 }, rot = { x = 0.000, y = 114.750, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[302010] = { config_id = 302010, gadget_id = 70310192, pos = { x = -299.178, y = 211.344, z = 3298.309 }, rot = { x = 0.000, y = 178.596, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[302011] = { config_id = 302011, gadget_id = 70310192, pos = { x = -286.599, y = 223.264, z = 3304.351 }, rot = { x = 337.966, y = 274.204, z = 8.919 }, level = 27, persistent = true, area_id = 22 },
	[302012] = { config_id = 302012, gadget_id = 70310191, pos = { x = -298.006, y = 191.824, z = 3309.707 }, rot = { x = 0.000, y = 273.591, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[302017] = { config_id = 302017, gadget_id = 70310198, pos = { x = -282.945, y = 203.968, z = 3301.253 }, rot = { x = 0.000, y = 310.397, z = 0.000 }, level = 27, area_id = 22 },
	[302018] = { config_id = 302018, gadget_id = 70310198, pos = { x = -291.247, y = 222.906, z = 3311.267 }, rot = { x = 0.000, y = 269.601, z = 0.000 }, level = 27, area_id = 22 },
	[302019] = { config_id = 302019, gadget_id = 70290596, pos = { x = -330.386, y = 205.149, z = 3294.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	[302020] = { config_id = 302020, gadget_id = 70310196, pos = { x = -289.761, y = 193.206, z = 3302.502 }, rot = { x = 334.133, y = 206.724, z = -0.001 }, level = 27, persistent = true, area_id = 22 },
	[302021] = { config_id = 302021, gadget_id = 70310196, pos = { x = -288.529, y = 194.573, z = 3303.997 }, rot = { x = 359.794, y = 71.603, z = 3.515 }, level = 27, persistent = true, area_id = 22 },
	[302022] = { config_id = 302022, gadget_id = 70310196, pos = { x = -292.627, y = 194.145, z = 3303.422 }, rot = { x = 279.851, y = 248.452, z = 0.000 }, level = 27, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1302013, name = "LUA_NOTIFY_302013", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_302013", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1302023, name = "ANY_GADGET_DIE_302023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_302023", action = "action_EVENT_ANY_GADGET_DIE_302023" },
	-- 节点死对应特效消失
	{ config_id = 1302024, name = "ANY_GADGET_DIE_302024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_302024", action = "action_EVENT_ANY_GADGET_DIE_302024" },
	-- 节点死对应特效消失
	{ config_id = 1302025, name = "ANY_GADGET_DIE_302025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_302025", action = "action_EVENT_ANY_GADGET_DIE_302025" },
	-- 节点死对应特效消失
	{ config_id = 1302026, name = "ANY_GADGET_DIE_302026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_302026", action = "action_EVENT_ANY_GADGET_DIE_302026" }
}

-- 点位
points = {
	[302014] = { config_id = 302014, pos = { x = -316.150, y = 206.504, z = 3289.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 22 }
}

-- 变量
variables = {
	{ config_id = 1, name = "123", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1302015, name = "VARIABLE_CHANGE_302015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_302015", action = "action_EVENT_VARIABLE_CHANGE_302015" }
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
		gadgets = { 302005, 302006, 302007, 302008, 302009, 302010, 302011, 302012, 302017, 302018, 302019, 302020, 302021, 302022 },
		regions = { },
		triggers = { "LUA_NOTIFY_302013", "ANY_GADGET_DIE_302023", "ANY_GADGET_DIE_302024", "ANY_GADGET_DIE_302025", "ANY_GADGET_DIE_302026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 302001, 302002, 302003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 302004, 302017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 302004 },
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
function action_EVENT_LUA_NOTIFY_302013(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_302023(context, evt)
	if 302005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_302023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301302, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_302024(context, evt)
	if 302008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_302024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 302020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_302025(context, evt)
	if 302007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_302025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 302021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 302016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_302026(context, evt)
	if 302006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_302026(context, evt)
	-- 将本组内变量名为 "water" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "water", 1, 133301640) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 302022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"