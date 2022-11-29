-- 基础信息
local base_info = {
	group_id = 133303419
}

-- Trigger变量
local defs = {
	gadget_CoreID = 419005,
	monster_BossID = 419002,
	gadget_Point_1 = 419006,
	gadget_Point_2 = 419007,
	gadget_Point_3 = 419008,
	point_camera = 419043,
	gadget_lookEntity = 419042,
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
	[419002] = { config_id = 419002, monster_id = 26120101, pos = { x = -1107.304, y = 82.504, z = 3851.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, title_id = 10123, special_name_id = 10172, area_id = 23 },
	[419044] = { config_id = 419044, monster_id = 26120101, pos = { x = -1114.180, y = 82.395, z = 3856.712 }, rot = { x = 0.000, y = 153.189, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, title_id = 10123, special_name_id = 10172, area_id = 23 },
	[419047] = { config_id = 419047, monster_id = 26090401, pos = { x = -1117.279, y = 82.499, z = 3855.891 }, rot = { x = 0.000, y = 96.865, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23 },
	[419048] = { config_id = 419048, monster_id = 26090401, pos = { x = -1118.433, y = 82.527, z = 3851.855 }, rot = { x = 0.000, y = 43.213, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23 },
	[419049] = { config_id = 419049, monster_id = 26090401, pos = { x = -1114.569, y = 82.278, z = 3849.420 }, rot = { x = 0.000, y = 43.213, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[419004] = { config_id = 419004, gadget_id = 70211121, pos = { x = -1115.666, y = 82.250, z = 3852.172 }, rot = { x = 1.314, y = 317.664, z = 0.350 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[419005] = { config_id = 419005, gadget_id = 70310193, pos = { x = -1113.029, y = 82.406, z = 3853.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[419006] = { config_id = 419006, gadget_id = 70310195, pos = { x = -1108.782, y = 90.392, z = 3872.681 }, rot = { x = 18.835, y = 204.800, z = 23.277 }, level = 30, persistent = true, area_id = 23 },
	[419007] = { config_id = 419007, gadget_id = 70310195, pos = { x = -1068.248, y = 84.892, z = 3856.790 }, rot = { x = 20.610, y = 205.178, z = 336.903 }, level = 30, persistent = true, area_id = 23 },
	[419008] = { config_id = 419008, gadget_id = 70310195, pos = { x = -1136.617, y = 86.321, z = 3836.357 }, rot = { x = 320.480, y = 184.977, z = 58.865 }, level = 30, persistent = true, area_id = 23 },
	[419009] = { config_id = 419009, gadget_id = 70310192, pos = { x = -1110.743, y = 86.689, z = 3863.786 }, rot = { x = 348.187, y = 151.190, z = 160.686 }, level = 30, persistent = true, area_id = 23 },
	[419010] = { config_id = 419010, gadget_id = 70310192, pos = { x = -1103.496, y = 85.979, z = 3843.740 }, rot = { x = 309.459, y = 271.717, z = 0.001 }, level = 30, persistent = true, area_id = 23 },
	[419011] = { config_id = 419011, gadget_id = 70310192, pos = { x = -1081.380, y = 99.678, z = 3817.214 }, rot = { x = 86.090, y = 157.612, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[419012] = { config_id = 419012, gadget_id = 70310191, pos = { x = -1103.312, y = 84.807, z = 3859.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[419013] = { config_id = 419013, gadget_id = 70310197, pos = { x = -1130.572, y = 82.146, z = 3833.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[419014] = { config_id = 419014, gadget_id = 70310197, pos = { x = -1127.289, y = 82.000, z = 3866.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[419015] = { config_id = 419015, gadget_id = 70310197, pos = { x = -1098.331, y = 88.490, z = 3882.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[419016] = { config_id = 419016, gadget_id = 70310197, pos = { x = -1081.585, y = 86.256, z = 3852.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[419017] = { config_id = 419017, gadget_id = 70310198, pos = { x = -1137.604, y = 83.945, z = 3839.505 }, rot = { x = 0.000, y = 123.302, z = 0.000 }, level = 30, area_id = 23 },
	[419018] = { config_id = 419018, gadget_id = 70310198, pos = { x = -1107.445, y = 83.368, z = 3857.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[419019] = { config_id = 419019, gadget_id = 70330197, pos = { x = -1118.979, y = 83.115, z = 3863.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[419020] = { config_id = 419020, gadget_id = 70310196, pos = { x = -1113.297, y = 83.172, z = 3854.989 }, rot = { x = 342.545, y = 24.858, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[419021] = { config_id = 419021, gadget_id = 70290513, pos = { x = -1111.095, y = 83.477, z = 3853.183 }, rot = { x = 357.662, y = 88.393, z = 352.804 }, level = 30, persistent = true, area_id = 23 },
	[419022] = { config_id = 419022, gadget_id = 70310196, pos = { x = -1114.955, y = 83.288, z = 3852.657 }, rot = { x = 0.000, y = 232.416, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[419027] = { config_id = 419027, gadget_id = 70310192, pos = { x = -1262.601, y = 117.056, z = 3636.097 }, rot = { x = 322.862, y = 94.470, z = 359.993 }, level = 30, persistent = true, area_id = 23 },
	[419028] = { config_id = 419028, gadget_id = 70310192, pos = { x = -1258.878, y = 116.064, z = 3650.519 }, rot = { x = 340.329, y = 192.629, z = 4.738 }, level = 30, persistent = true, area_id = 23 },
	[419029] = { config_id = 419029, gadget_id = 70310192, pos = { x = -1243.034, y = 117.371, z = 3678.427 }, rot = { x = 345.618, y = 160.610, z = 14.353 }, level = 30, persistent = true, area_id = 23 },
	[419030] = { config_id = 419030, gadget_id = 70310192, pos = { x = -1208.361, y = 116.182, z = 3693.945 }, rot = { x = 12.014, y = 331.777, z = 343.626 }, level = 30, persistent = true, area_id = 23 },
	[419031] = { config_id = 419031, gadget_id = 70310192, pos = { x = -1179.877, y = 85.661, z = 3716.248 }, rot = { x = 36.299, y = 317.968, z = 4.774 }, level = 30, persistent = true, area_id = 23 },
	[419032] = { config_id = 419032, gadget_id = 70310192, pos = { x = -1174.566, y = 86.722, z = 3755.105 }, rot = { x = 11.926, y = 298.794, z = 258.642 }, level = 30, persistent = true, area_id = 23 },
	[419033] = { config_id = 419033, gadget_id = 70310192, pos = { x = -1166.977, y = 83.764, z = 3793.607 }, rot = { x = 341.895, y = 145.056, z = 115.497 }, level = 30, persistent = true, area_id = 23 },
	[419034] = { config_id = 419034, gadget_id = 70310191, pos = { x = -1120.823, y = 82.616, z = 3858.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[419036] = { config_id = 419036, gadget_id = 70310197, pos = { x = -1099.386, y = 85.141, z = 3847.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[419037] = { config_id = 419037, gadget_id = 70360001, pos = { x = -1113.029, y = 82.406, z = 3853.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[419039] = { config_id = 419039, gadget_id = 70330197, pos = { x = -1081.426, y = 84.628, z = 3852.818 }, rot = { x = 0.000, y = 41.019, z = 0.000 }, level = 30, area_id = 23 },
	[419040] = { config_id = 419040, gadget_id = 70290582, pos = { x = -1195.225, y = 103.140, z = 3704.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 23 },
	[419041] = { config_id = 419041, gadget_id = 70290583, pos = { x = -1195.225, y = 103.140, z = 3704.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 23 },
	-- 看点占位
	[419042] = { config_id = 419042, gadget_id = 70290196, pos = { x = -1114.253, y = 91.152, z = 3859.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[419045] = { config_id = 419045, gadget_id = 70290491, pos = { x = -1113.029, y = 82.406, z = 3853.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[419050] = { config_id = 419050, gadget_id = 70310197, pos = { x = -1103.002, y = 83.243, z = 3851.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[419051] = { config_id = 419051, gadget_id = 70310197, pos = { x = -1108.158, y = 82.566, z = 3853.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	-- 帮助小白贴心勾爪
	[419054] = { config_id = 419054, gadget_id = 70220103, pos = { x = -1102.706, y = 87.142, z = 3857.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	-- 帮助小白贴心勾爪
	[419055] = { config_id = 419055, gadget_id = 70220103, pos = { x = -1119.398, y = 85.213, z = 3857.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1419001, name = "MONSTER_BATTLE_419001", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_419001", action = "action_EVENT_MONSTER_BATTLE_419001" },
	-- 核心消失刷宝箱
	{ config_id = 1419023, name = "ANY_GADGET_DIE_419023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_419023", action = "action_EVENT_ANY_GADGET_DIE_419023" },
	-- 节点死对应特效消失
	{ config_id = 1419024, name = "GADGET_STATE_CHANGE_419024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_419024", action = "action_EVENT_GADGET_STATE_CHANGE_419024" },
	-- 节点死对应特效消失
	{ config_id = 1419025, name = "GADGET_STATE_CHANGE_419025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_419025", action = "action_EVENT_GADGET_STATE_CHANGE_419025" },
	-- 节点死对应特效消失
	{ config_id = 1419026, name = "GADGET_STATE_CHANGE_419026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_419026", action = "action_EVENT_GADGET_STATE_CHANGE_419026" },
	-- 核心消失手写刷天气环境
	{ config_id = 1419038, name = "ANY_GADGET_DIE_419038", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_419038", action = "action_EVENT_ANY_GADGET_DIE_419038" },
	-- 核心交互播镜头
	{ config_id = 1419046, name = "LUA_NOTIFY_419046", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_419046" },
	{ config_id = 1419052, name = "GROUP_LOAD_419052", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_419052", action = "action_EVENT_GROUP_LOAD_419052", trigger_count = 0 },
	{ config_id = 1419053, name = "QUEST_START_419053", event = EventType.EVENT_QUEST_START, source = "7307001", condition = "condition_EVENT_QUEST_START_419053", action = "action_EVENT_QUEST_START_419053", trigger_count = 0 }
}

-- 点位
points = {
	[419043] = { config_id = 419043, pos = { x = -1137.401, y = 94.181, z = 3870.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1419003, name = "ANY_MONSTER_DIE_419003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_419003", action = "action_EVENT_ANY_MONSTER_DIE_419003" },
		{ config_id = 1419035, name = "ANY_MONSTER_DIE_419035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_419035", action = "action_EVENT_ANY_MONSTER_DIE_419035" }
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
		gadgets = { 419005, 419006, 419007, 419008, 419009, 419010, 419011, 419012, 419017, 419018, 419019, 419020, 419021, 419022, 419027, 419028, 419029, 419030, 419031, 419032, 419033, 419034, 419037, 419039, 419040, 419042, 419045, 419054, 419055 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_419023", "GADGET_STATE_CHANGE_419024", "GADGET_STATE_CHANGE_419025", "GADGET_STATE_CHANGE_419026", "ANY_GADGET_DIE_419038", "LUA_NOTIFY_419046" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 419002, 419044, 419047, 419048, 419049 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_419001" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 419004, 419012, 419017, 419018, 419019, 419034 },
		regions = { },
		triggers = { "GROUP_LOAD_419052", "QUEST_START_419053" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 419004, 419041 },
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
function condition_EVENT_MONSTER_BATTLE_419001(context, evt)
	if 419002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_419001(context, evt)
	-- 创建id为419036的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 419036 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为419050的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 419050 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为419051的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 419051 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_419023(context, evt)
	if 419005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_419023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303419, 4)
	
	-- 将configid为 419037 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 419037, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303419, EntityType.GADGET, 419040 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_419024(context, evt)
	if 419006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_419024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 419020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_419025(context, evt)
	if 419007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_419025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 419021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_419026(context, evt)
	if 419008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_419026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 419022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_419038(context, evt)
	if 419005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_419038(context, evt)
	ScriptLib.SetWeatherAreaState(context, 4069, 1)
	ScriptLib.SetWeatherAreaState(context, 4071, 1)
	ScriptLib.SetWeatherAreaState(context, 4026, 1)
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_419046(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_419052(context, evt)
	-- 判断变量"PlayPhase"为3
	if ScriptLib.GetGroupVariableValue(context, "PlayPhase") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_419052(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7307001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_419053(context, evt)
	-- 判断变量"PlayPhase"为3
	if ScriptLib.GetGroupVariableValue(context, "PlayPhase") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_419053(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7307001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"