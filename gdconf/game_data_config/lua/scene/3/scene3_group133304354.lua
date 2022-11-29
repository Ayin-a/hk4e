-- 基础信息
local base_info = {
	group_id = 133304354
}

-- Trigger变量
local defs = {
	gadget_CoreID = 354005,
	monster_BossID = 354002,
	gadget_Point_1 = 354006,
	gadget_Point_2 = 354007,
	gadget_Point_3 = 354008,
	point_camera = 354033,
	gadget_lookEntity = 354005,
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
	[354002] = { config_id = 354002, monster_id = 24030101, pos = { x = -1303.788, y = 237.136, z = 1874.414 }, rot = { x = 0.000, y = 299.760, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, title_id = 10123, special_name_id = 10174, area_id = 21, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[354001] = { config_id = 354001, gadget_id = 70310191, pos = { x = -1321.866, y = 237.276, z = 1867.297 }, rot = { x = 4.271, y = 359.276, z = 356.747 }, level = 30, persistent = true, area_id = 21 },
	[354004] = { config_id = 354004, gadget_id = 70211111, pos = { x = -1301.542, y = 254.407, z = 1862.208 }, rot = { x = 4.169, y = 323.709, z = 5.331 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	[354005] = { config_id = 354005, gadget_id = 70310194, pos = { x = -1303.822, y = 251.235, z = 1867.535 }, rot = { x = 318.430, y = 317.609, z = 13.451 }, level = 30, persistent = true, area_id = 21 },
	[354006] = { config_id = 354006, gadget_id = 70310195, pos = { x = -1342.347, y = 273.336, z = 1943.389 }, rot = { x = 17.900, y = 300.420, z = 27.442 }, level = 30, persistent = true, area_id = 21 },
	[354007] = { config_id = 354007, gadget_id = 70310195, pos = { x = -1313.458, y = 237.069, z = 1889.076 }, rot = { x = 341.252, y = 61.470, z = 14.882 }, level = 30, persistent = true, area_id = 21 },
	[354008] = { config_id = 354008, gadget_id = 70310195, pos = { x = -1303.788, y = 237.136, z = 1874.414 }, rot = { x = 347.332, y = 91.100, z = 19.500 }, level = 30, persistent = true, area_id = 21 },
	[354009] = { config_id = 354009, gadget_id = 70310192, pos = { x = -1340.129, y = 273.407, z = 1941.085 }, rot = { x = 326.350, y = 253.168, z = -0.001 }, level = 30, persistent = true, area_id = 21 },
	[354012] = { config_id = 354012, gadget_id = 70310191, pos = { x = -1352.339, y = 272.967, z = 1920.694 }, rot = { x = 4.271, y = 359.276, z = 356.747 }, level = 30, persistent = true, area_id = 21 },
	[354013] = { config_id = 354013, gadget_id = 70310197, pos = { x = -1365.232, y = 272.068, z = 1951.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	[354014] = { config_id = 354014, gadget_id = 70310197, pos = { x = -1341.416, y = 272.727, z = 1934.626 }, rot = { x = 356.186, y = 0.279, z = 351.633 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	[354015] = { config_id = 354015, gadget_id = 70310197, pos = { x = -1329.702, y = 272.365, z = 1921.881 }, rot = { x = 1.785, y = 359.930, z = 355.533 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	[354016] = { config_id = 354016, gadget_id = 70360001, pos = { x = -1309.892, y = 237.020, z = 1850.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	[354017] = { config_id = 354017, gadget_id = 70310197, pos = { x = -1289.789, y = 237.466, z = 1872.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[354018] = { config_id = 354018, gadget_id = 70310198, pos = { x = -1366.280, y = 272.270, z = 1925.924 }, rot = { x = 1.255, y = 77.744, z = 1.559 }, level = 30, area_id = 21 },
	[354019] = { config_id = 354019, gadget_id = 70220103, pos = { x = -1299.101, y = 256.656, z = 1866.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	[354020] = { config_id = 354020, gadget_id = 70310196, pos = { x = -1303.822, y = 251.235, z = 1867.535 }, rot = { x = 342.558, y = 337.885, z = 358.459 }, level = 30, persistent = true, area_id = 21 },
	[354021] = { config_id = 354021, gadget_id = 70310196, pos = { x = -1303.822, y = 251.235, z = 1867.535 }, rot = { x = 28.054, y = 343.832, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[354022] = { config_id = 354022, gadget_id = 70310196, pos = { x = -1303.822, y = 251.235, z = 1867.535 }, rot = { x = 63.931, y = 333.477, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[354027] = { config_id = 354027, gadget_id = 70220103, pos = { x = -1331.205, y = 272.647, z = 1912.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	[354028] = { config_id = 354028, gadget_id = 70310197, pos = { x = -1296.853, y = 237.466, z = 1886.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[354029] = { config_id = 354029, gadget_id = 70310197, pos = { x = -1303.569, y = 237.466, z = 1862.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[354030] = { config_id = 354030, gadget_id = 70220103, pos = { x = -1317.890, y = 262.699, z = 1891.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[354031] = { config_id = 354031, gadget_id = 70310198, pos = { x = -1286.057, y = 237.277, z = 1877.808 }, rot = { x = 0.000, y = 317.010, z = 0.000 }, level = 30, area_id = 21 },
	[354032] = { config_id = 354032, gadget_id = 70220103, pos = { x = -1372.277, y = 307.858, z = 1969.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1354003, name = "GROUP_LOAD_354003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_354003", action = "action_EVENT_GROUP_LOAD_354003", trigger_count = 0 },
	-- 核心交互播镜头
	{ config_id = 1354011, name = "LUA_NOTIFY_354011", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_354011" },
	-- 核心消失刷宝箱
	{ config_id = 1354023, name = "ANY_GADGET_DIE_354023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_354023", action = "action_EVENT_ANY_GADGET_DIE_354023" },
	-- 节点死对应特效消失
	{ config_id = 1354024, name = "GADGET_STATE_CHANGE_354024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_354024", action = "action_EVENT_GADGET_STATE_CHANGE_354024" },
	-- 节点死对应特效消失
	{ config_id = 1354025, name = "GADGET_STATE_CHANGE_354025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_354025", action = "action_EVENT_GADGET_STATE_CHANGE_354025" },
	-- 节点死对应特效消失
	{ config_id = 1354026, name = "GADGET_STATE_CHANGE_354026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_354026", action = "action_EVENT_GADGET_STATE_CHANGE_354026" }
}

-- 点位
points = {
	[354033] = { config_id = 354033, pos = { x = -1325.641, y = 274.741, z = 1895.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 354010, gadget_id = 70310192, pos = { x = -1317.025, y = 241.385, z = 1881.378 }, rot = { x = 13.132, y = 134.788, z = 159.099 }, level = 30, persistent = true, area_id = 21 }
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
		gadgets = { 354001, 354005, 354006, 354007, 354008, 354009, 354012, 354013, 354014, 354015, 354016, 354017, 354018, 354019, 354020, 354021, 354022, 354027, 354028, 354029, 354030, 354031, 354032 },
		regions = { },
		triggers = { "LUA_NOTIFY_354011", "ANY_GADGET_DIE_354023", "GADGET_STATE_CHANGE_354024", "GADGET_STATE_CHANGE_354025", "GADGET_STATE_CHANGE_354026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 354002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 354001, 354004, 354012, 354018, 354019, 354027, 354030, 354031, 354032 },
		regions = { },
		triggers = { "GROUP_LOAD_354003" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 354004 },
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
function condition_EVENT_GROUP_LOAD_354003(context, evt)
	-- 判断变量"PlayPhase"为3
	if ScriptLib.GetGroupVariableValue(context, "PlayPhase") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_354003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7307409") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_354011(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_354023(context, evt)
	if 354005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_354023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304354, 4)
	
	-- 将configid为 354016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_354024(context, evt)
	if 354006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_354024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 354020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_354025(context, evt)
	if 354007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_354025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 354021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_354026(context, evt)
	if 354008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_354026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 354022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"