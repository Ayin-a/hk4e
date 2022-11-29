-- 基础信息
local base_info = {
	group_id = 133301317
}

-- Trigger变量
local defs = {
	gadget_CoreID = 317005,
	monster_BossID = 317002,
	gadget_Point_1 = 317006,
	gadget_Point_2 = 317007,
	gadget_Point_3 = 317008,
	point_camera = 317019,
	gadget_lookEntity = 317005,
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
	[317002] = { config_id = 317002, monster_id = 22050201, pos = { x = -448.025, y = 223.338, z = 3733.257 }, rot = { x = 0.000, y = 49.629, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", disableWander = true, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[317001] = { config_id = 317001, gadget_id = 70220003, pos = { x = -460.301, y = 223.751, z = 3711.700 }, rot = { x = 0.000, y = 300.783, z = 8.522 }, level = 33, persistent = true, area_id = 22 },
	[317003] = { config_id = 317003, gadget_id = 70220003, pos = { x = -459.812, y = 222.731, z = 3708.544 }, rot = { x = 0.000, y = 46.458, z = 346.560 }, level = 33, persistent = true, area_id = 22 },
	[317004] = { config_id = 317004, gadget_id = 70211121, pos = { x = -451.236, y = 223.518, z = 3730.576 }, rot = { x = 3.120, y = 24.689, z = 357.499 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	[317005] = { config_id = 317005, gadget_id = 70310193, pos = { x = -451.696, y = 223.905, z = 3728.366 }, rot = { x = 0.000, y = 355.022, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[317006] = { config_id = 317006, gadget_id = 70310195, pos = { x = -459.912, y = 225.650, z = 3721.452 }, rot = { x = 41.423, y = 98.932, z = 37.255 }, level = 33, persistent = true, area_id = 22 },
	[317007] = { config_id = 317007, gadget_id = 70310195, pos = { x = -416.855, y = 217.167, z = 3740.938 }, rot = { x = 21.018, y = 320.597, z = 328.013 }, level = 33, persistent = true, area_id = 22 },
	[317008] = { config_id = 317008, gadget_id = 70310195, pos = { x = -435.278, y = 209.667, z = 3784.717 }, rot = { x = 344.515, y = 42.443, z = 345.088 }, level = 33, persistent = true, area_id = 22 },
	[317009] = { config_id = 317009, gadget_id = 70220103, pos = { x = -448.514, y = 227.315, z = 3738.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	[317012] = { config_id = 317012, gadget_id = 70310191, pos = { x = -442.512, y = 223.868, z = 3744.408 }, rot = { x = 0.000, y = 93.547, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[317013] = { config_id = 317013, gadget_id = 70310197, pos = { x = -446.884, y = 224.259, z = 3738.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	[317014] = { config_id = 317014, gadget_id = 70310197, pos = { x = -435.417, y = 222.089, z = 3751.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	[317015] = { config_id = 317015, gadget_id = 70310198, pos = { x = -427.267, y = 214.229, z = 3764.705 }, rot = { x = 0.000, y = 175.859, z = 0.000 }, level = 33, area_id = 22 },
	[317016] = { config_id = 317016, gadget_id = 70310197, pos = { x = -431.618, y = 221.827, z = 3740.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	[317017] = { config_id = 317017, gadget_id = 70310197, pos = { x = -437.633, y = 222.884, z = 3738.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	-- 6
	[317020] = { config_id = 317020, gadget_id = 70310196, pos = { x = -453.019, y = 225.526, z = 3727.458 }, rot = { x = 351.686, y = 227.228, z = 1.512 }, level = 33, persistent = true, area_id = 22 },
	-- 7
	[317021] = { config_id = 317021, gadget_id = 70310196, pos = { x = -450.229, y = 225.826, z = 3730.045 }, rot = { x = 7.898, y = 59.589, z = 4.967 }, level = 33, persistent = true, area_id = 22 },
	-- 8
	[317022] = { config_id = 317022, gadget_id = 70310196, pos = { x = -450.582, y = 225.662, z = 3730.949 }, rot = { x = 1.836, y = 31.330, z = 353.789 }, level = 33, persistent = true, area_id = 22 },
	[317027] = { config_id = 317027, gadget_id = 70310192, pos = { x = -454.487, y = 225.540, z = 3712.653 }, rot = { x = 340.412, y = 274.222, z = 156.658 }, level = 33, persistent = true, area_id = 22 },
	[317029] = { config_id = 317029, gadget_id = 70310192, pos = { x = -447.253, y = 224.549, z = 3730.519 }, rot = { x = 275.596, y = 71.632, z = 342.947 }, level = 33, persistent = true, area_id = 22 },
	[317031] = { config_id = 317031, gadget_id = 70290492, pos = { x = -426.640, y = 219.490, z = 3755.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1317011, name = "ANY_MONSTER_DIE_317011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_317011", action = "action_EVENT_ANY_MONSTER_DIE_317011" },
	-- 核心交互播镜头
	{ config_id = 1317018, name = "LUA_NOTIFY_317018", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_317018", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1317023, name = "ANY_GADGET_DIE_317023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_317023", action = "action_EVENT_ANY_GADGET_DIE_317023" },
	-- 节点死对应特效消失
	{ config_id = 1317024, name = "GADGET_STATE_CHANGE_317024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_317024", action = "action_EVENT_GADGET_STATE_CHANGE_317024" },
	-- 节点死对应特效消失
	{ config_id = 1317025, name = "GADGET_STATE_CHANGE_317025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_317025", action = "action_EVENT_GADGET_STATE_CHANGE_317025" },
	-- 节点死对应特效消失
	{ config_id = 1317026, name = "GADGET_STATE_CHANGE_317026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_317026", action = "action_EVENT_GADGET_STATE_CHANGE_317026" }
}

-- 点位
points = {
	[317019] = { config_id = 317019, pos = { x = -414.686, y = 246.060, z = 3777.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 22 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 317028, gadget_id = 70310192, pos = { x = -442.194, y = 238.654, z = 3733.506 }, rot = { x = 33.631, y = 343.326, z = 90.284 }, level = 33, persistent = true, area_id = 22 },
		{ config_id = 317030, gadget_id = 70310192, pos = { x = -447.047, y = 227.490, z = 3745.855 }, rot = { x = 331.532, y = 111.372, z = 358.693 }, level = 33, persistent = true, area_id = 22 }
	},
	triggers = {
		{ config_id = 1317010, name = "MONSTER_BATTLE_317010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_317010", action = "action_EVENT_MONSTER_BATTLE_317010" }
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
		gadgets = { 317001, 317003, 317005, 317006, 317007, 317008, 317009, 317012, 317015, 317020, 317021, 317022, 317027, 317029, 317031 },
		regions = { },
		triggers = { "LUA_NOTIFY_317018", "ANY_GADGET_DIE_317023", "GADGET_STATE_CHANGE_317024", "GADGET_STATE_CHANGE_317025", "GADGET_STATE_CHANGE_317026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 317002 },
		gadgets = { 317001, 317003, 317013, 317014, 317016, 317017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_317011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 317001, 317003, 317004, 317009, 317012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 317001, 317003, 317004 },
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
function condition_EVENT_ANY_MONSTER_DIE_317011(context, evt)
	--判断死亡怪物的configid是否为 317002
	if evt.param1 ~= 317002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_317011(context, evt)
	-- 将configid为 317012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 317012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_317018(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_317023(context, evt)
	if 317005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_317023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301317, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_317024(context, evt)
	if 317006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_317024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_317025(context, evt)
	if 317007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_317025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_317026(context, evt)
	if 317008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_317026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"