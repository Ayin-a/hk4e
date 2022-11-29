-- 基础信息
local base_info = {
	group_id = 133303291
}

-- Trigger变量
local defs = {
	gadget_CoreID = 291005,
	monster_BossID = 291002,
	gadget_Point_1 = 291006,
	gadget_Point_2 = 291007,
	gadget_Point_3 = 291008,
	point_camera = 291003,
	gadget_lookEntity = 291005,
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
	[291002] = { config_id = 291002, monster_id = 24030101, pos = { x = -1497.795, y = 219.965, z = 3121.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[291004] = { config_id = 291004, gadget_id = 70211111, pos = { x = -1496.532, y = 219.477, z = 3126.912 }, rot = { x = 3.744, y = 324.249, z = 0.609 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[291005] = { config_id = 291005, gadget_id = 70310193, pos = { x = -1500.370, y = 218.840, z = 3128.680 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 22
	[291006] = { config_id = 291006, gadget_id = 70310195, pos = { x = -1477.392, y = 223.998, z = 3134.159 }, rot = { x = 352.853, y = 125.984, z = 357.395 }, level = 30, persistent = true, area_id = 23 },
	-- 21
	[291007] = { config_id = 291007, gadget_id = 70310195, pos = { x = -1516.820, y = 218.447, z = 3134.077 }, rot = { x = 358.548, y = 40.613, z = 356.647 }, level = 30, persistent = true, area_id = 23 },
	-- 23
	[291008] = { config_id = 291008, gadget_id = 70310195, pos = { x = -1514.394, y = 231.581, z = 3108.799 }, rot = { x = 10.403, y = 24.096, z = 354.582 }, level = 30, persistent = true, area_id = 21 },
	[291010] = { config_id = 291010, gadget_id = 70310197, pos = { x = -1485.012, y = 221.785, z = 3124.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[291011] = { config_id = 291011, gadget_id = 70220020, pos = { x = -1482.859, y = 221.305, z = 3135.510 }, rot = { x = 5.136, y = 0.747, z = 16.536 }, level = 30, persistent = true, area_id = 23 },
	[291012] = { config_id = 291012, gadget_id = 70310191, pos = { x = -1507.638, y = 221.352, z = 3117.838 }, rot = { x = 0.000, y = 236.786, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[291013] = { config_id = 291013, gadget_id = 70310197, pos = { x = -1508.478, y = 221.793, z = 3114.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	[291014] = { config_id = 291014, gadget_id = 70310197, pos = { x = -1490.619, y = 220.360, z = 3133.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[291015] = { config_id = 291015, gadget_id = 70310197, pos = { x = -1485.337, y = 220.532, z = 3136.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[291016] = { config_id = 291016, gadget_id = 70310197, pos = { x = -1498.672, y = 219.276, z = 3133.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[291017] = { config_id = 291017, gadget_id = 70310198, pos = { x = -1510.220, y = 214.029, z = 3150.335 }, rot = { x = 18.639, y = 311.580, z = 354.714 }, level = 30, area_id = 23 },
	[291018] = { config_id = 291018, gadget_id = 70310198, pos = { x = -1483.247, y = 221.206, z = 3133.350 }, rot = { x = 0.000, y = 252.222, z = 0.000 }, level = 30, area_id = 23 },
	[291019] = { config_id = 291019, gadget_id = 70330197, pos = { x = -1519.942, y = 232.832, z = 3107.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[291020] = { config_id = 291020, gadget_id = 70220020, pos = { x = -1484.683, y = 221.063, z = 3131.540 }, rot = { x = 7.819, y = 226.374, z = 349.031 }, level = 30, persistent = true, area_id = 23 },
	[291021] = { config_id = 291021, gadget_id = 70310196, pos = { x = -1502.404, y = 219.892, z = 3129.641 }, rot = { x = 0.000, y = 289.084, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[291022] = { config_id = 291022, gadget_id = 70310196, pos = { x = -1498.498, y = 220.107, z = 3129.757 }, rot = { x = 348.999, y = 83.254, z = 11.599 }, level = 30, persistent = true, area_id = 23 },
	[291023] = { config_id = 291023, gadget_id = 70290513, pos = { x = -1502.172, y = 220.270, z = 3127.763 }, rot = { x = 328.708, y = 216.471, z = 1.997 }, level = 30, persistent = true, area_id = 23 },
	[291024] = { config_id = 291024, gadget_id = 70220020, pos = { x = -1480.726, y = 222.105, z = 3133.213 }, rot = { x = 342.466, y = 97.425, z = 0.333 }, level = 30, persistent = true, area_id = 23 },
	[291028] = { config_id = 291028, gadget_id = 70310197, pos = { x = -1496.013, y = 222.005, z = 3115.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[291029] = { config_id = 291029, gadget_id = 70310197, pos = { x = -1502.123, y = 220.592, z = 3122.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[291031] = { config_id = 291031, gadget_id = 70290491, pos = { x = -1500.370, y = 218.840, z = 3128.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[291038] = { config_id = 291038, gadget_id = 70310197, pos = { x = -1501.492, y = 218.071, z = 3152.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[291039] = { config_id = 291039, gadget_id = 70310197, pos = { x = -1553.239, y = 207.692, z = 3157.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[291040] = { config_id = 291040, gadget_id = 70310197, pos = { x = -1470.523, y = 217.759, z = 3164.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[291041] = { config_id = 291041, gadget_id = 70310197, pos = { x = -1464.339, y = 225.260, z = 3143.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 加生命源质
	{ config_id = 1291009, name = "MONSTER_BATTLE_291009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_291009", action = "action_EVENT_MONSTER_BATTLE_291009" },
	-- 节点死对应特效消失
	{ config_id = 1291025, name = "ANY_GADGET_DIE_291025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_291025", action = "action_EVENT_ANY_GADGET_DIE_291025" },
	-- 节点死对应特效消失
	{ config_id = 1291026, name = "ANY_GADGET_DIE_291026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_291026", action = "action_EVENT_ANY_GADGET_DIE_291026" },
	-- 节点死对应特效消失
	{ config_id = 1291027, name = "ANY_GADGET_DIE_291027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_291027", action = "action_EVENT_ANY_GADGET_DIE_291027" },
	{ config_id = 1291030, name = "ANY_MONSTER_DIE_291030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291030", action = "action_EVENT_ANY_MONSTER_DIE_291030" },
	-- 核心消失刷宝箱,死域结束刷勾爪发射器
	{ config_id = 1291032, name = "ANY_GADGET_DIE_291032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_291032", action = "action_EVENT_ANY_GADGET_DIE_291032" },
	-- 核心交互播镜头
	{ config_id = 1291033, name = "LUA_NOTIFY_291033", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_291033" },
	-- 延迟刷新勾爪发射器
	{ config_id = 1291034, name = "TIME_AXIS_PASS_291034", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_291034", action = "action_EVENT_TIME_AXIS_PASS_291034" }
}

-- 点位
points = {
	[291003] = { config_id = 291003, pos = { x = -1529.300, y = 225.750, z = 3168.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 291001, monster_id = 24020101, pos = { x = -1490.694, y = 220.073, z = 3127.979 }, rot = { x = 0.000, y = 277.618, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 100, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
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
		gadgets = { 291005, 291006, 291007, 291008, 291011, 291012, 291017, 291018, 291019, 291020, 291021, 291022, 291023, 291024, 291031 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_291025", "ANY_GADGET_DIE_291026", "ANY_GADGET_DIE_291027", "ANY_GADGET_DIE_291032", "LUA_NOTIFY_291033", "TIME_AXIS_PASS_291034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 291002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_291009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 291004, 291012, 291017, 291018, 291019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 291004 },
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
function condition_EVENT_MONSTER_BATTLE_291009(context, evt)
	if 291002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_291009(context, evt)
	-- 创建id为291010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 291010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为291014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 291014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为291016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 291016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为291028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 291028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为291029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 291029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_291025(context, evt)
	if 291006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_291025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 291022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_291026(context, evt)
	if 291007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_291026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 291021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_291027(context, evt)
	if 291008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_291027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 291023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291030(context, evt)
	if 291002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_291030(context, evt)
	-- 将configid为 291012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 291012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_291032(context, evt)
	if 291005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_291032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303291, 4)
	
	-- 将本组内变量名为 "deathzoneover" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "deathzoneover", 1, 133303052) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"gptimer"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "gptimer", {5}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_291033(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_291034(context, evt)
	if "gptimer" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_291034(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303052, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"