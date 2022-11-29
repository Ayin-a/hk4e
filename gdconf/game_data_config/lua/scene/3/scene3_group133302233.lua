-- 基础信息
local base_info = {
	group_id = 133302233
}

-- Trigger变量
local defs = {
	gadget_CoreID = 233005,
	monster_BossID = 233002,
	gadget_Point_1 = 233006,
	gadget_Point_2 = 233007,
	gadget_Point_3 = 233008,
	point_camera = 233001,
	gadget_lookEntity = 233005,
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
	[233002] = { config_id = 233002, monster_id = 26120301, pos = { x = -357.161, y = 107.499, z = 2259.652 }, rot = { x = 0.000, y = 284.847, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[233016] = { config_id = 233016, monster_id = 26090101, pos = { x = -356.748, y = 106.641, z = 2262.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 24 },
	[233017] = { config_id = 233017, monster_id = 26090101, pos = { x = -358.928, y = 108.928, z = 2257.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[233004] = { config_id = 233004, gadget_id = 70211111, pos = { x = -366.295, y = 108.540, z = 2269.152 }, rot = { x = 359.036, y = 351.361, z = 357.616 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	[233005] = { config_id = 233005, gadget_id = 70310193, pos = { x = -365.450, y = 108.500, z = 2266.980 }, rot = { x = 0.000, y = 257.417, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[233006] = { config_id = 233006, gadget_id = 70310195, pos = { x = -350.817, y = 108.588, z = 2230.969 }, rot = { x = 0.000, y = 167.398, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[233007] = { config_id = 233007, gadget_id = 70310195, pos = { x = -397.921, y = 107.144, z = 2243.376 }, rot = { x = 0.000, y = 108.789, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[233008] = { config_id = 233008, gadget_id = 70310195, pos = { x = -355.524, y = 106.560, z = 2287.885 }, rot = { x = 0.000, y = 226.888, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[233009] = { config_id = 233009, gadget_id = 70310192, pos = { x = -350.494, y = 116.857, z = 2260.156 }, rot = { x = 0.000, y = 310.925, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[233010] = { config_id = 233010, gadget_id = 70310192, pos = { x = -390.835, y = 117.293, z = 2237.501 }, rot = { x = 0.000, y = 39.368, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[233011] = { config_id = 233011, gadget_id = 70310192, pos = { x = -352.807, y = 120.948, z = 2229.841 }, rot = { x = 0.000, y = 340.210, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[233012] = { config_id = 233012, gadget_id = 70310191, pos = { x = -373.829, y = 107.899, z = 2250.937 }, rot = { x = 0.000, y = 242.522, z = 0.000 }, level = 33, persistent = true, area_id = 24 },
	[233014] = { config_id = 233014, gadget_id = 70360001, pos = { x = -365.017, y = 108.737, z = 2268.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[233020] = { config_id = 233020, gadget_id = 70310196, pos = { x = -365.190, y = 111.160, z = 2267.167 }, rot = { x = 5.757, y = 163.679, z = 355.608 }, level = 33, persistent = true, area_id = 24 },
	[233021] = { config_id = 233021, gadget_id = 70310196, pos = { x = -365.190, y = 111.160, z = 2267.167 }, rot = { x = 356.175, y = 248.493, z = 357.998 }, level = 33, persistent = true, area_id = 24 },
	[233022] = { config_id = 233022, gadget_id = 70290513, pos = { x = -365.190, y = 111.160, z = 2267.167 }, rot = { x = 5.399, y = 25.669, z = 2.117 }, level = 33, persistent = true, area_id = 24 },
	[233023] = { config_id = 233023, gadget_id = 70310192, pos = { x = -354.633, y = 113.996, z = 2255.459 }, rot = { x = 0.000, y = 321.205, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[233024] = { config_id = 233024, gadget_id = 70310192, pos = { x = -347.144, y = 112.326, z = 2257.728 }, rot = { x = 0.000, y = 285.595, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[233025] = { config_id = 233025, gadget_id = 70310192, pos = { x = -333.586, y = 110.541, z = 2281.385 }, rot = { x = 0.000, y = 273.990, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[233026] = { config_id = 233026, gadget_id = 70310197, pos = { x = -374.895, y = 107.481, z = 2253.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[233032] = { config_id = 233032, gadget_id = 70310197, pos = { x = -359.329, y = 107.555, z = 2266.450 }, rot = { x = 0.000, y = 110.699, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[233033] = { config_id = 233033, gadget_id = 70310197, pos = { x = -371.763, y = 107.663, z = 2264.947 }, rot = { x = 0.000, y = 214.473, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[233034] = { config_id = 233034, gadget_id = 70310197, pos = { x = -349.026, y = 105.290, z = 2259.535 }, rot = { x = 0.000, y = 4.758, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	[233035] = { config_id = 233035, gadget_id = 70310197, pos = { x = -365.627, y = 109.004, z = 2253.325 }, rot = { x = 0.000, y = 318.702, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1233003, name = "SPECIFIC_MONSTER_HP_CHANGE_233003", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "233002", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_233003", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_233003" },
	{ config_id = 1233013, name = "QUEST_START_233013", event = EventType.EVENT_QUEST_START, source = "7306117", condition = "", action = "action_EVENT_QUEST_START_233013", trigger_count = 0 },
	{ config_id = 1233015, name = "GADGET_STATE_CHANGE_233015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_233015", action = "action_EVENT_GADGET_STATE_CHANGE_233015" },
	{ config_id = 1233019, name = "ANY_MONSTER_DIE_233019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_233019", action = "action_EVENT_ANY_MONSTER_DIE_233019", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1233027, name = "ANY_GADGET_DIE_233027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_233027", action = "action_EVENT_ANY_GADGET_DIE_233027" },
	-- 节点死对应特效消失
	{ config_id = 1233028, name = "GADGET_STATE_CHANGE_233028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_233028", action = "action_EVENT_GADGET_STATE_CHANGE_233028" },
	-- 节点死对应特效消失
	{ config_id = 1233029, name = "GADGET_STATE_CHANGE_233029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_233029", action = "action_EVENT_GADGET_STATE_CHANGE_233029" },
	-- 节点死对应特效消失
	{ config_id = 1233030, name = "GADGET_STATE_CHANGE_233030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_233030", action = "action_EVENT_GADGET_STATE_CHANGE_233030" },
	-- 核心交互播镜头
	{ config_id = 1233031, name = "LUA_NOTIFY_233031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_233031" }
}

-- 点位
points = {
	[233001] = { config_id = 233001, pos = { x = -408.200, y = 131.200, z = 2276.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1233018, name = "MONSTER_BATTLE_233018", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_233018", action = "action_EVENT_MONSTER_BATTLE_233018", trigger_count = 0 }
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
		gadgets = { 233005, 233006, 233007, 233008, 233010, 233011, 233012, 233014, 233020, 233021, 233022, 233025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_233015", "ANY_GADGET_DIE_233027", "GADGET_STATE_CHANGE_233028", "GADGET_STATE_CHANGE_233029", "GADGET_STATE_CHANGE_233030", "LUA_NOTIFY_233031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 233002 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_233003", "ANY_MONSTER_DIE_233019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 233004, 233012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 233004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_233013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_233003(context, evt)
	--[[判断指定configid的怪物的血量小于%70时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_233003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 233016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 233017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_233013(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302233, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_233015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302233, 233014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_233015(context, evt)
	 ScriptLib.SetWeatherAreaState(context, 4076, 1)
	 ScriptLib.SetWeatherAreaState(context, 4046, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_233019(context, evt)
	if 233002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_233019(context, evt)
	-- 将configid为 233012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 233012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_233027(context, evt)
	if 233005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_233027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302233, 4)
	
	-- 将configid为 233014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 233014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_233028(context, evt)
	if 233006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_233028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 233020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_233029(context, evt)
	if 233007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_233029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 233021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_233030(context, evt)
	if 233008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_233030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 233022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_233031(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"