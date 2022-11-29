-- 基础信息
local base_info = {
	group_id = 133302280
}

-- Trigger变量
local defs = {
	gadget_CoreID = 280005,
	monster_BossID = 280002,
	gadget_Point_1 = 280006,
	gadget_Point_2 = 280007,
	gadget_Point_3 = 280008,
	point_camera = 280024,
	gadget_lookEntity = 280005,
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
	[280002] = { config_id = 280002, monster_id = 26120301, pos = { x = -89.046, y = 230.025, z = 2103.780 }, rot = { x = 0.000, y = 346.909, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, title_id = 10123, special_name_id = 10173, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[280003] = { config_id = 280003, monster_id = 26120301, pos = { x = -90.492, y = 229.700, z = 2112.237 }, rot = { x = 0.000, y = 161.861, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6116, 6117 }, pose_id = 101, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[280004] = { config_id = 280004, gadget_id = 70211111, pos = { x = -90.012, y = 229.763, z = 2109.808 }, rot = { x = 0.000, y = 180.671, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	[280005] = { config_id = 280005, gadget_id = 70310193, pos = { x = -89.644, y = 229.408, z = 2107.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 20 },
	[280006] = { config_id = 280006, gadget_id = 70310195, pos = { x = -82.690, y = 242.512, z = 2066.586 }, rot = { x = 15.449, y = 0.000, z = 10.409 }, level = 33, persistent = true, area_id = 20 },
	[280007] = { config_id = 280007, gadget_id = 70310195, pos = { x = -96.501, y = 242.176, z = 2147.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 20 },
	[280008] = { config_id = 280008, gadget_id = 70310195, pos = { x = -81.280, y = 229.513, z = 2087.590 }, rot = { x = 9.456, y = 357.479, z = 345.001 }, level = 33, persistent = true, area_id = 20 },
	[280009] = { config_id = 280009, gadget_id = 70310192, pos = { x = -79.095, y = 251.112, z = 2138.589 }, rot = { x = 0.000, y = 224.394, z = 0.000 }, level = 33, persistent = true, area_id = 20 },
	[280010] = { config_id = 280010, gadget_id = 70310192, pos = { x = -96.223, y = 241.267, z = 2096.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 20 },
	[280011] = { config_id = 280011, gadget_id = 70310192, pos = { x = -110.468, y = 256.431, z = 2097.029 }, rot = { x = 348.689, y = 69.872, z = 354.431 }, level = 33, persistent = true, area_id = 20 },
	[280012] = { config_id = 280012, gadget_id = 70310191, pos = { x = -107.257, y = 252.406, z = 2146.621 }, rot = { x = 0.000, y = 67.702, z = 0.000 }, level = 33, persistent = true, area_id = 20 },
	[280013] = { config_id = 280013, gadget_id = 70310197, pos = { x = -102.071, y = 239.042, z = 2115.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	[280014] = { config_id = 280014, gadget_id = 70310197, pos = { x = -117.876, y = 239.950, z = 2128.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	[280015] = { config_id = 280015, gadget_id = 70310197, pos = { x = -96.341, y = 242.172, z = 2093.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	[280016] = { config_id = 280016, gadget_id = 70310197, pos = { x = -123.153, y = 259.429, z = 2162.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	[280017] = { config_id = 280017, gadget_id = 70220103, pos = { x = -86.094, y = 239.759, z = 2092.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[280018] = { config_id = 280018, gadget_id = 70220103, pos = { x = -81.311, y = 242.791, z = 2079.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[280019] = { config_id = 280019, gadget_id = 70330197, pos = { x = -110.430, y = 240.240, z = 2141.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 20 },
	[280020] = { config_id = 280020, gadget_id = 70310196, pos = { x = -89.077, y = 233.101, z = 2108.053 }, rot = { x = 341.111, y = 168.023, z = 179.861 }, level = 33, persistent = true, area_id = 20 },
	[280021] = { config_id = 280021, gadget_id = 70310196, pos = { x = -89.077, y = 233.101, z = 2108.053 }, rot = { x = 323.649, y = 354.807, z = 180.000 }, level = 33, persistent = true, area_id = 20 },
	[280022] = { config_id = 280022, gadget_id = 70310196, pos = { x = -89.077, y = 233.101, z = 2108.053 }, rot = { x = 3.404, y = 153.944, z = 179.386 }, level = 33, persistent = true, area_id = 20 },
	[280026] = { config_id = 280026, gadget_id = 70310191, pos = { x = -90.085, y = 229.539, z = 2115.262 }, rot = { x = 0.000, y = 4.715, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[280031] = { config_id = 280031, gadget_id = 70360001, pos = { x = -86.797, y = 229.700, z = 2093.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1280001, name = "LUA_NOTIFY_280001", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_280001", trigger_count = 0 },
	-- 保底
	{ config_id = 1280025, name = "GROUP_LOAD_280025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_280025", action = "action_EVENT_GROUP_LOAD_280025", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1280027, name = "ANY_GADGET_DIE_280027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_280027", action = "action_EVENT_ANY_GADGET_DIE_280027" },
	-- 节点死对应特效消失
	{ config_id = 1280028, name = "GADGET_STATE_CHANGE_280028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280028", action = "action_EVENT_GADGET_STATE_CHANGE_280028" },
	-- 节点死对应特效消失
	{ config_id = 1280029, name = "GADGET_STATE_CHANGE_280029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280029", action = "action_EVENT_GADGET_STATE_CHANGE_280029" },
	-- 节点死对应特效消失
	{ config_id = 1280030, name = "GADGET_STATE_CHANGE_280030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_280030", action = "action_EVENT_GADGET_STATE_CHANGE_280030" }
}

-- 点位
points = {
	[280024] = { config_id = 280024, pos = { x = -91.320, y = 243.884, z = 2129.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 280033, monster_id = 26120301, pos = { x = -85.466, y = 229.700, z = 2108.253 }, rot = { x = 0.000, y = 262.204, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6116, 6117 }, pose_id = 101, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
	},
	gadgets = {
		{ config_id = 280023, gadget_id = 70310198, pos = { x = -90.326, y = 229.700, z = 2111.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
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
		gadgets = { 280005, 280006, 280007, 280008, 280009, 280010, 280011, 280012, 280013, 280014, 280015, 280016, 280019, 280020, 280021, 280022, 280026, 280031 },
		regions = { },
		triggers = { "LUA_NOTIFY_280001", "ANY_GADGET_DIE_280027", "GADGET_STATE_CHANGE_280028", "GADGET_STATE_CHANGE_280029", "GADGET_STATE_CHANGE_280030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 280002, 280003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 280004, 280012, 280017, 280018, 280019, 280026 },
		regions = { },
		triggers = { "GROUP_LOAD_280025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 280004, 280017, 280018 },
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
function action_EVENT_LUA_NOTIFY_280001(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_280025(context, evt)
	-- 判断变量"PlayPhase"为3
	if ScriptLib.GetGroupVariableValue(context, "PlayPhase") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_280025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306910") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_280027(context, evt)
	if 280005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_280027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302280, 4)
	
	-- 将configid为 280031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 280031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_280028(context, evt)
	if 280006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_280029(context, evt)
	if 280007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_280030(context, evt)
	if 280008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_280030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 280022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"