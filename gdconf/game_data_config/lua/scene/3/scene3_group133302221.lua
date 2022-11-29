-- 基础信息
local base_info = {
	group_id = 133302221
}

-- Trigger变量
local defs = {
	gadget_CoreID = 221005,
	monster_BossID = 221002,
	gadget_Point_1 = 221006,
	gadget_Point_2 = 221007,
	gadget_Point_3 = 221008,
	point_camera = 221001,
	gadget_lookEntity = 221005,
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
	[221002] = { config_id = 221002, monster_id = 26120101, pos = { x = -966.445, y = 209.184, z = 2925.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[221004] = { config_id = 221004, gadget_id = 70211111, pos = { x = -967.647, y = 209.049, z = 2927.190 }, rot = { x = 357.653, y = 99.342, z = 3.237 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[221005] = { config_id = 221005, gadget_id = 70310193, pos = { x = -970.174, y = 209.336, z = 2926.589 }, rot = { x = 0.590, y = 313.692, z = 358.088 }, level = 33, persistent = true, area_id = 23 },
	[221006] = { config_id = 221006, gadget_id = 70310195, pos = { x = -958.618, y = 217.529, z = 2900.608 }, rot = { x = 352.133, y = 190.731, z = 358.514 }, level = 33, persistent = true, area_id = 24 },
	[221007] = { config_id = 221007, gadget_id = 70310195, pos = { x = -959.925, y = 207.055, z = 2945.678 }, rot = { x = 356.582, y = 137.670, z = 1.963 }, level = 33, persistent = true, area_id = 23 },
	[221008] = { config_id = 221008, gadget_id = 70310195, pos = { x = -952.395, y = 214.270, z = 2924.159 }, rot = { x = 12.170, y = 226.582, z = 348.719 }, level = 33, persistent = true, area_id = 23 },
	[221012] = { config_id = 221012, gadget_id = 70310191, pos = { x = -966.785, y = 210.485, z = 2913.862 }, rot = { x = 3.450, y = 2.625, z = 2.840 }, level = 33, area_id = 23 },
	[221017] = { config_id = 221017, gadget_id = 70310198, pos = { x = -943.453, y = 218.511, z = 2892.350 }, rot = { x = 0.991, y = 174.919, z = 358.428 }, level = 33, area_id = 24 },
	[221018] = { config_id = 221018, gadget_id = 70310198, pos = { x = -957.512, y = 209.387, z = 2928.607 }, rot = { x = 3.249, y = 290.884, z = 359.590 }, level = 33, area_id = 23 },
	[221020] = { config_id = 221020, gadget_id = 70310196, pos = { x = -969.077, y = 213.213, z = 2924.559 }, rot = { x = 0.000, y = 158.655, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[221021] = { config_id = 221021, gadget_id = 70310196, pos = { x = -969.541, y = 213.125, z = 2928.735 }, rot = { x = 10.884, y = 30.407, z = 357.460 }, level = 33, persistent = true, area_id = 23 },
	[221022] = { config_id = 221022, gadget_id = 70290513, pos = { x = -967.606, y = 212.675, z = 2926.520 }, rot = { x = 349.700, y = 100.454, z = 6.180 }, level = 33, persistent = true, area_id = 23 },
	[221026] = { config_id = 221026, gadget_id = 70290491, pos = { x = -963.800, y = 219.400, z = 2927.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[221035] = { config_id = 221035, gadget_id = 70220005, pos = { x = -968.403, y = 209.156, z = 2928.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	[221036] = { config_id = 221036, gadget_id = 70220005, pos = { x = -968.790, y = 209.413, z = 2923.825 }, rot = { x = 5.792, y = 32.838, z = 0.000 }, level = 27, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1221009, name = "MONSTER_BATTLE_221009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_221009" },
	{ config_id = 1221010, name = "ANY_MONSTER_DIE_221010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_221010", action = "action_EVENT_ANY_MONSTER_DIE_221010" },
	-- 核心消失刷宝箱
	{ config_id = 1221027, name = "ANY_GADGET_DIE_221027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_221027", action = "action_EVENT_ANY_GADGET_DIE_221027" },
	-- 节点死对应特效消失
	{ config_id = 1221028, name = "GADGET_STATE_CHANGE_221028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221028", action = "action_EVENT_GADGET_STATE_CHANGE_221028" },
	-- 节点死对应特效消失
	{ config_id = 1221029, name = "GADGET_STATE_CHANGE_221029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221029", action = "action_EVENT_GADGET_STATE_CHANGE_221029" },
	-- 节点死对应特效消失
	{ config_id = 1221030, name = "GADGET_STATE_CHANGE_221030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221030", action = "action_EVENT_GADGET_STATE_CHANGE_221030" },
	-- 核心交互播镜头
	{ config_id = 1221032, name = "LUA_NOTIFY_221032", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_221032" }
}

-- 点位
points = {
	[221001] = { config_id = 221001, pos = { x = -952.000, y = 223.000, z = 2912.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 221013, gadget_id = 70310197, pos = { x = -963.141, y = 211.201, z = 2915.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
		{ config_id = 221014, gadget_id = 70310197, pos = { x = -972.388, y = 211.233, z = 2935.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
		{ config_id = 221015, gadget_id = 70310197, pos = { x = -958.254, y = 208.909, z = 2932.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
		{ config_id = 221016, gadget_id = 70310197, pos = { x = -955.549, y = 213.442, z = 2922.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
		{ config_id = 221034, gadget_id = 70330218, pos = { x = -967.128, y = 209.229, z = 2912.111 }, rot = { x = 0.000, y = 1.812, z = 0.000 }, level = 27, persistent = true, area_id = 23 }
	},
	triggers = {
		{ config_id = 1221003, name = "ANY_GADGET_DIE_221003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_221003", action = "action_EVENT_ANY_GADGET_DIE_221003" }
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
		gadgets = { 221005, 221006, 221007, 221008, 221012, 221017, 221018, 221020, 221021, 221022, 221026, 221035, 221036 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_221027", "GADGET_STATE_CHANGE_221028", "GADGET_STATE_CHANGE_221029", "GADGET_STATE_CHANGE_221030", "LUA_NOTIFY_221032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 221002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_221009", "ANY_MONSTER_DIE_221010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 221004, 221017, 221018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 221004 },
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
function action_EVENT_MONSTER_BATTLE_221009(context, evt)
	-- 将configid为 221012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_221010(context, evt)
	--判断死亡怪物的configid是否为 221002
	if evt.param1 ~= 221002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_221010(context, evt)
	-- 将configid为 221012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 221012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_221027(context, evt)
	if 221005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_221027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302221, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221028(context, evt)
	if 221006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 221020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221029(context, evt)
	if 221007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 221021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221030(context, evt)
	if 221008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 221022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_221032(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"