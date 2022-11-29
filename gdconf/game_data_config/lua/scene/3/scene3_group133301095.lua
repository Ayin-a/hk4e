-- 基础信息
local base_info = {
	group_id = 133301095
}

-- Trigger变量
local defs = {
	gadget_CoreID = 95005,
	monster_BossID = 95002,
	gadget_Point_1 = 95006,
	gadget_Point_2 = 95007,
	gadget_Point_3 = 95008,
	point_camera = 95015,
	gadget_lookEntity = 95003,
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
	[95002] = { config_id = 95002, monster_id = 24030101, pos = { x = -900.032, y = 309.311, z = 3308.466 }, rot = { x = 0.000, y = 17.166, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 占位看点，没用核心作为看点
	[95003] = { config_id = 95003, gadget_id = 70290196, pos = { x = -906.580, y = 309.166, z = 3296.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[95004] = { config_id = 95004, gadget_id = 70211111, pos = { x = -900.877, y = 309.684, z = 3309.237 }, rot = { x = 355.394, y = 358.190, z = 355.689 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[95005] = { config_id = 95005, gadget_id = 70310194, pos = { x = -906.580, y = 309.166, z = 3296.607 }, rot = { x = 0.000, y = 64.363, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[95006] = { config_id = 95006, gadget_id = 70310195, pos = { x = -922.880, y = 312.550, z = 3312.465 }, rot = { x = 11.571, y = 50.790, z = 352.833 }, level = 30, persistent = true, area_id = 23 },
	[95007] = { config_id = 95007, gadget_id = 70310195, pos = { x = -885.806, y = 314.374, z = 3324.952 }, rot = { x = 353.316, y = 358.996, z = 354.112 }, level = 30, persistent = true, area_id = 23 },
	[95008] = { config_id = 95008, gadget_id = 70310195, pos = { x = -858.373, y = 312.011, z = 3311.688 }, rot = { x = 354.571, y = 40.296, z = 25.184 }, level = 30, persistent = true, area_id = 23 },
	[95012] = { config_id = 95012, gadget_id = 70310191, pos = { x = -893.057, y = 314.216, z = 3321.554 }, rot = { x = 356.383, y = 24.110, z = 355.110 }, level = 30, persistent = true, area_id = 23 },
	[95013] = { config_id = 95013, gadget_id = 70310197, pos = { x = -877.678, y = 316.361, z = 3300.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[95014] = { config_id = 95014, gadget_id = 70290492, pos = { x = -869.670, y = 320.600, z = 3313.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[95016] = { config_id = 95016, gadget_id = 70310191, pos = { x = -873.012, y = 312.700, z = 3306.661 }, rot = { x = 2.410, y = 25.007, z = 355.594 }, level = 30, persistent = true, area_id = 23 },
	[95017] = { config_id = 95017, gadget_id = 70310198, pos = { x = -919.207, y = 312.155, z = 3327.459 }, rot = { x = 4.796, y = 298.561, z = 21.806 }, level = 30, area_id = 23 },
	[95018] = { config_id = 95018, gadget_id = 70310198, pos = { x = -870.335, y = 313.121, z = 3322.849 }, rot = { x = 352.130, y = 203.701, z = 356.536 }, level = 30, area_id = 23 },
	[95019] = { config_id = 95019, gadget_id = 70330197, pos = { x = -924.516, y = 319.689, z = 3343.018 }, rot = { x = 0.000, y = 16.044, z = 0.000 }, level = 30, area_id = 23 },
	[95020] = { config_id = 95020, gadget_id = 70310196, pos = { x = -908.446, y = 314.033, z = 3302.154 }, rot = { x = 353.411, y = 315.509, z = 0.001 }, level = 30, persistent = true, area_id = 23 },
	[95021] = { config_id = 95021, gadget_id = 70310196, pos = { x = -900.438, y = 312.080, z = 3304.597 }, rot = { x = 349.892, y = 38.729, z = 5.477 }, level = 30, persistent = true, area_id = 23 },
	[95022] = { config_id = 95022, gadget_id = 70310196, pos = { x = -888.340, y = 313.759, z = 3304.229 }, rot = { x = 0.879, y = 77.274, z = 5.547 }, level = 30, persistent = true, area_id = 23 },
	[95027] = { config_id = 95027, gadget_id = 70310191, pos = { x = -926.193, y = 310.218, z = 3316.033 }, rot = { x = 9.822, y = 24.507, z = 355.462 }, level = 30, persistent = true, area_id = 23 },
	[95028] = { config_id = 95028, gadget_id = 70310197, pos = { x = -862.545, y = 315.322, z = 3331.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[95029] = { config_id = 95029, gadget_id = 70310197, pos = { x = -914.203, y = 317.535, z = 3331.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1095001, name = "LUA_NOTIFY_95001", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_95001", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1095023, name = "ANY_GADGET_DIE_95023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95023", action = "action_EVENT_ANY_GADGET_DIE_95023" },
	-- 节点死对应特效消失
	{ config_id = 1095024, name = "ANY_GADGET_DIE_95024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95024", action = "action_EVENT_ANY_GADGET_DIE_95024" },
	-- 节点死对应特效消失
	{ config_id = 1095025, name = "ANY_GADGET_DIE_95025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95025", action = "action_EVENT_ANY_GADGET_DIE_95025" },
	-- 节点死对应特效消失
	{ config_id = 1095026, name = "ANY_GADGET_DIE_95026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95026", action = "action_EVENT_ANY_GADGET_DIE_95026" },
	{ config_id = 1095032, name = "ANY_MONSTER_DIE_95032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_95032", action = "action_EVENT_ANY_MONSTER_DIE_95032" }
}

-- 点位
points = {
	[95015] = { config_id = 95015, pos = { x = -864.918, y = 327.450, z = 3322.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 95030, monster_id = 24020101, pos = { x = -906.387, y = 310.807, z = 3313.862 }, rot = { x = 0.000, y = 80.676, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 100, area_id = 23 },
		{ config_id = 95031, monster_id = 24020101, pos = { x = -883.799, y = 310.605, z = 3310.628 }, rot = { x = 0.000, y = 279.823, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 100, area_id = 23 }
	},
	gadgets = {
		{ config_id = 95009, gadget_id = 70310192, pos = { x = -899.694, y = 309.440, z = 3328.572 }, rot = { x = 0.000, y = 90.720, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 95010, gadget_id = 70310192, pos = { x = -885.431, y = 308.484, z = 3290.726 }, rot = { x = 0.000, y = 294.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
		{ config_id = 95011, gadget_id = 70310192, pos = { x = -895.472, y = 314.252, z = 3300.849 }, rot = { x = 327.790, y = 339.140, z = 199.922 }, level = 30, persistent = true, area_id = 23 }
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
		gadgets = { 95003, 95005, 95006, 95007, 95008, 95012, 95014, 95016, 95017, 95018, 95019, 95020, 95021, 95022, 95027 },
		regions = { },
		triggers = { "LUA_NOTIFY_95001", "ANY_GADGET_DIE_95023", "ANY_GADGET_DIE_95024", "ANY_GADGET_DIE_95025", "ANY_GADGET_DIE_95026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 95002 },
		gadgets = { 95013, 95028, 95029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 95004, 95017, 95018, 95019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 95004 },
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
function action_EVENT_LUA_NOTIFY_95001(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95023(context, evt)
	if 95005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301095, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95024(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95025(context, evt)
	if 95007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95026(context, evt)
	if 95008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_95032(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_95032(context, evt)
	-- 将configid为 95016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 95027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"