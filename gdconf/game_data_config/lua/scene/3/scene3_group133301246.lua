-- 基础信息
local base_info = {
	group_id = 133301246
}

-- Trigger变量
local defs = {
	gadget_CoreID = 246005,
	monster_BossID = 246002,
	gadget_Point_1 = 246006,
	gadget_Point_2 = 246007,
	gadget_Point_3 = 246008,
	target_x = -571.585,
	target_y = 221.2439,
	target_z = 3227.051,
	camera_x = -566.4,
	camera_y = 222.67,
	camera_z = 3244.26,
	duration = 5,
	point_camera = 246001,
	gadget_lookEntity = 246005,
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
	[246002] = { config_id = 246002, monster_id = 26120101, pos = { x = -570.141, y = 219.513, z = 3229.131 }, rot = { x = 0.000, y = 358.997, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[246014] = { config_id = 246014, monster_id = 26090201, pos = { x = -566.890, y = 219.709, z = 3225.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22 },
	[246015] = { config_id = 246015, monster_id = 26090201, pos = { x = -574.433, y = 219.372, z = 3226.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[246003] = { config_id = 246003, gadget_id = 70310198, pos = { x = -557.174, y = 223.507, z = 3237.223 }, rot = { x = 0.000, y = 37.313, z = 0.000 }, level = 33, area_id = 22 },
	[246004] = { config_id = 246004, gadget_id = 70211111, pos = { x = -575.721, y = 219.426, z = 3227.801 }, rot = { x = 0.638, y = 118.369, z = 356.197 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	[246005] = { config_id = 246005, gadget_id = 70310193, pos = { x = -571.279, y = 219.379, z = 3226.654 }, rot = { x = 0.000, y = 256.105, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[246006] = { config_id = 246006, gadget_id = 70310195, pos = { x = -558.652, y = 222.388, z = 3227.859 }, rot = { x = 347.653, y = 124.285, z = 348.623 }, level = 33, persistent = true, area_id = 22 },
	[246007] = { config_id = 246007, gadget_id = 70310195, pos = { x = -564.733, y = 222.955, z = 3252.511 }, rot = { x = 342.384, y = 39.025, z = 2.420 }, level = 33, persistent = true, area_id = 22 },
	[246008] = { config_id = 246008, gadget_id = 70310195, pos = { x = -588.812, y = 218.885, z = 3220.280 }, rot = { x = 2.377, y = 227.152, z = 20.109 }, level = 33, persistent = true, area_id = 22 },
	[246010] = { config_id = 246010, gadget_id = 70310192, pos = { x = -562.174, y = 224.440, z = 3209.263 }, rot = { x = 0.000, y = 331.467, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[246011] = { config_id = 246011, gadget_id = 70330218, pos = { x = -575.943, y = 220.027, z = 3241.546 }, rot = { x = 0.000, y = 133.622, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[246012] = { config_id = 246012, gadget_id = 70310191, pos = { x = -576.572, y = 220.530, z = 3239.046 }, rot = { x = 0.000, y = 297.489, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[246017] = { config_id = 246017, gadget_id = 70310198, pos = { x = -577.756, y = 220.973, z = 3206.748 }, rot = { x = 0.000, y = 272.488, z = 0.000 }, level = 33, area_id = 22 },
	[246019] = { config_id = 246019, gadget_id = 70330197, pos = { x = -581.851, y = 221.126, z = 3232.430 }, rot = { x = 0.000, y = 275.752, z = 0.000 }, level = 33, area_id = 22 },
	[246020] = { config_id = 246020, gadget_id = 70310196, pos = { x = -569.934, y = 222.118, z = 3226.508 }, rot = { x = 352.648, y = 88.269, z = 358.535 }, level = 33, persistent = true, area_id = 22 },
	[246021] = { config_id = 246021, gadget_id = 70310196, pos = { x = -571.584, y = 222.458, z = 3228.731 }, rot = { x = 355.373, y = 20.376, z = 358.560 }, level = 33, persistent = true, area_id = 22 },
	[246022] = { config_id = 246022, gadget_id = 70290513, pos = { x = -572.605, y = 222.365, z = 3225.071 }, rot = { x = 10.474, y = 252.017, z = 0.000 }, level = 33, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1246013, name = "ANY_GADGET_DIE_246013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_246013", action = "action_EVENT_ANY_GADGET_DIE_246013" },
	-- 核心消失刷宝箱
	{ config_id = 1246027, name = "ANY_GADGET_DIE_246027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_246027", action = "action_EVENT_ANY_GADGET_DIE_246027" },
	-- 节点死对应特效消失
	{ config_id = 1246028, name = "GADGET_STATE_CHANGE_246028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246028", action = "action_EVENT_GADGET_STATE_CHANGE_246028" },
	-- 节点死对应特效消失
	{ config_id = 1246029, name = "GADGET_STATE_CHANGE_246029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246029", action = "action_EVENT_GADGET_STATE_CHANGE_246029" },
	-- 节点死对应特效消失
	{ config_id = 1246030, name = "GADGET_STATE_CHANGE_246030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246030", action = "action_EVENT_GADGET_STATE_CHANGE_246030" },
	-- 核心交互播镜头
	{ config_id = 1246031, name = "LUA_NOTIFY_246031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_246031", trigger_count = 0 }
}

-- 点位
points = {
	-- 摄像机位置
	[246001] = { config_id = 246001, pos = { x = -577.747, y = 226.897, z = 3209.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 22 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 246009, gadget_id = 70310192, pos = { x = -587.711, y = 222.987, z = 3224.096 }, rot = { x = 0.000, y = 71.550, z = 0.000 }, level = 33, persistent = true, area_id = 22 }
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
		gadgets = { 246003, 246005, 246006, 246007, 246008, 246010, 246011, 246017, 246019, 246020, 246021, 246022 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_246013", "ANY_GADGET_DIE_246027", "GADGET_STATE_CHANGE_246028", "GADGET_STATE_CHANGE_246029", "GADGET_STATE_CHANGE_246030", "LUA_NOTIFY_246031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 246002, 246014, 246015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 246004, 246017, 246019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 246004 },
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
function condition_EVENT_ANY_GADGET_DIE_246013(context, evt)
	if 246011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_246013(context, evt)
	-- 创建id为246012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 246012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_246027(context, evt)
	if 246005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_246027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301246, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_246028(context, evt)
	if 246006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_246028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 246020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301249, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_246029(context, evt)
	if 246007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_246029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 246021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301249, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_246030(context, evt)
	if 246008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_246030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 246022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301249, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_246031(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"