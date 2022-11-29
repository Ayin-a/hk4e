-- 基础信息
local base_info = {
	group_id = 133304200
}

-- Trigger变量
local defs = {
	gadget_CoreID = 200005,
	monster_BossID = 200002,
	gadget_Point_1 = 200006,
	gadget_Point_2 = 200007,
	gadget_Point_3 = 200008,
	point_camera = 200001,
	gadget_lookEntity = 200005,
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
	[200002] = { config_id = 200002, monster_id = 26120301, pos = { x = -1140.851, y = 262.048, z = 2501.135 }, rot = { x = 0.000, y = 328.177, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 21 },
	[200003] = { config_id = 200003, monster_id = 26090101, pos = { x = -1138.628, y = 261.017, z = 2504.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 },
	[200010] = { config_id = 200010, monster_id = 26090101, pos = { x = -1142.903, y = 261.650, z = 2503.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[200004] = { config_id = 200004, gadget_id = 70211111, pos = { x = -1142.834, y = 262.806, z = 2499.497 }, rot = { x = 17.386, y = 21.236, z = 358.404 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	[200005] = { config_id = 200005, gadget_id = 70310193, pos = { x = -1137.890, y = 262.050, z = 2496.360 }, rot = { x = 0.000, y = 55.250, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[200006] = { config_id = 200006, gadget_id = 70310195, pos = { x = -1157.447, y = 260.430, z = 2512.999 }, rot = { x = 7.708, y = 37.345, z = 14.476 }, level = 30, persistent = true, area_id = 21 },
	[200007] = { config_id = 200007, gadget_id = 70310195, pos = { x = -1131.002, y = 259.899, z = 2511.155 }, rot = { x = 0.000, y = 200.156, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[200008] = { config_id = 200008, gadget_id = 70310195, pos = { x = -1156.762, y = 258.418, z = 2522.909 }, rot = { x = 344.180, y = 169.975, z = 355.771 }, level = 30, persistent = true, area_id = 21 },
	[200012] = { config_id = 200012, gadget_id = 70310191, pos = { x = -1138.681, y = 260.411, z = 2515.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[200013] = { config_id = 200013, gadget_id = 70310197, pos = { x = -1138.105, y = 261.660, z = 2512.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[200014] = { config_id = 200014, gadget_id = 70310197, pos = { x = -1131.712, y = 260.997, z = 2497.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	[200016] = { config_id = 200016, gadget_id = 70310197, pos = { x = -1149.503, y = 261.930, z = 2505.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[200017] = { config_id = 200017, gadget_id = 70310198, pos = { x = -1150.821, y = 262.182, z = 2505.010 }, rot = { x = 0.000, y = 95.969, z = 0.000 }, level = 30, area_id = 21 },
	[200018] = { config_id = 200018, gadget_id = 70310197, pos = { x = -1148.675, y = 260.104, z = 2520.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[200020] = { config_id = 200020, gadget_id = 70310196, pos = { x = -1139.168, y = 262.766, z = 2497.523 }, rot = { x = 0.000, y = 311.529, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[200021] = { config_id = 200021, gadget_id = 70310196, pos = { x = -1137.451, y = 263.464, z = 2497.583 }, rot = { x = 0.000, y = 32.721, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[200022] = { config_id = 200022, gadget_id = 70310196, pos = { x = -1138.537, y = 263.402, z = 2498.313 }, rot = { x = 0.000, y = 328.846, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1200009, name = "LUA_NOTIFY_200009", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_200009" },
	{ config_id = 1200011, name = "MONSTER_BATTLE_200011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_200011", action = "action_EVENT_MONSTER_BATTLE_200011" },
	{ config_id = 1200015, name = "ANY_MONSTER_DIE_200015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_200015", action = "action_EVENT_ANY_MONSTER_DIE_200015" },
	-- 核心消失刷宝箱
	{ config_id = 1200023, name = "ANY_GADGET_DIE_200023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_200023", action = "action_EVENT_ANY_GADGET_DIE_200023" },
	-- 节点死对应特效消失
	{ config_id = 1200024, name = "GADGET_STATE_CHANGE_200024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200024", action = "action_EVENT_GADGET_STATE_CHANGE_200024" },
	-- 节点死对应特效消失
	{ config_id = 1200025, name = "GADGET_STATE_CHANGE_200025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200025", action = "action_EVENT_GADGET_STATE_CHANGE_200025" },
	-- 节点死对应特效消失
	{ config_id = 1200026, name = "GADGET_STATE_CHANGE_200026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200026", action = "action_EVENT_GADGET_STATE_CHANGE_200026" }
}

-- 点位
points = {
	[200001] = { config_id = 200001, pos = { x = -1157.575, y = 279.923, z = 2515.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
}

-- 变量
variables = {
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
		gadgets = { 200005, 200006, 200007, 200008, 200012, 200017, 200020, 200021, 200022 },
		regions = { },
		triggers = { "LUA_NOTIFY_200009", "ANY_GADGET_DIE_200023", "GADGET_STATE_CHANGE_200024", "GADGET_STATE_CHANGE_200025", "GADGET_STATE_CHANGE_200026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 200002, 200003, 200010 },
		gadgets = { 200016, 200018 },
		regions = { },
		triggers = { "MONSTER_BATTLE_200011", "ANY_MONSTER_DIE_200015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 200004, 200012, 200017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 200004 },
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
function action_EVENT_LUA_NOTIFY_200009(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_200011(context, evt)
	if 200002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_200011(context, evt)
	-- 将configid为 200012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 200012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为200013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为200014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 200014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_200015(context, evt)
	if 200002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_200015(context, evt)
	-- 将configid为 200012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 200012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_200023(context, evt)
	if 200005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_200023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304200, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200024(context, evt)
	if 200006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 200020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200025(context, evt)
	if 200007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 200021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_200026(context, evt)
	if 200008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_200026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 200022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"