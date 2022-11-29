-- 基础信息
local base_info = {
	group_id = 133302246
}

-- Trigger变量
local defs = {
	gadget_CoreID = 246005,
	monster_BossID = 246002,
	gadget_Point_1 = 246006,
	gadget_Point_2 = 246007,
	gadget_Point_3 = 246008,
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
	[246002] = { config_id = 246002, monster_id = 22050101, pos = { x = -58.274, y = 228.782, z = 2515.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[246003] = { config_id = 246003, gadget_id = 70310197, pos = { x = -54.624, y = 227.595, z = 2506.223 }, rot = { x = 345.108, y = 0.429, z = 343.181 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	[246004] = { config_id = 246004, gadget_id = 70211111, pos = { x = -57.644, y = 228.203, z = 2517.990 }, rot = { x = 2.151, y = 165.781, z = 353.940 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	[246005] = { config_id = 246005, gadget_id = 70310193, pos = { x = -63.442, y = 229.203, z = 2509.124 }, rot = { x = 356.563, y = 0.388, z = 340.244 }, level = 33, persistent = true, area_id = 20 },
	[246006] = { config_id = 246006, gadget_id = 70310195, pos = { x = -52.099, y = 227.242, z = 2499.355 }, rot = { x = 12.836, y = 189.270, z = 347.256 }, level = 33, persistent = true, area_id = 20 },
	[246007] = { config_id = 246007, gadget_id = 70310195, pos = { x = -69.625, y = 233.002, z = 2518.529 }, rot = { x = 1.941, y = 39.721, z = 336.344 }, level = 33, persistent = true, area_id = 20 },
	[246008] = { config_id = 246008, gadget_id = 70310195, pos = { x = -55.602, y = 229.359, z = 2525.563 }, rot = { x = 23.156, y = 223.914, z = 350.917 }, level = 33, persistent = true, area_id = 20 },
	[246009] = { config_id = 246009, gadget_id = 70310197, pos = { x = -55.021, y = 229.018, z = 2520.763 }, rot = { x = 345.108, y = 0.429, z = 343.181 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	[246010] = { config_id = 246010, gadget_id = 70310191, pos = { x = -51.509, y = 228.710, z = 2510.046 }, rot = { x = 0.000, y = 0.000, z = 4.601 }, level = 27, persistent = true, area_id = 20 },
	[246014] = { config_id = 246014, gadget_id = 70310197, pos = { x = -66.182, y = 229.322, z = 2518.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 20 },
	[246016] = { config_id = 246016, gadget_id = 70310197, pos = { x = -68.585, y = 231.964, z = 2499.628 }, rot = { x = 345.108, y = 0.429, z = 343.181 }, level = 33, state = GadgetState.GearStart, area_id = 20 },
	[246017] = { config_id = 246017, gadget_id = 70310198, pos = { x = -61.728, y = 228.819, z = 2540.180 }, rot = { x = 350.628, y = 358.445, z = 14.100 }, level = 33, area_id = 20 },
	[246018] = { config_id = 246018, gadget_id = 70310198, pos = { x = -45.214, y = 227.142, z = 2486.374 }, rot = { x = 344.615, y = 24.301, z = 6.370 }, level = 33, area_id = 20 },
	[246020] = { config_id = 246020, gadget_id = 70310196, pos = { x = -61.124, y = 230.892, z = 2507.687 }, rot = { x = 21.568, y = 131.459, z = 37.853 }, level = 33, persistent = true, area_id = 20 },
	[246021] = { config_id = 246021, gadget_id = 70310196, pos = { x = -63.644, y = 232.385, z = 2510.109 }, rot = { x = 3.011, y = 314.815, z = 351.387 }, level = 33, persistent = true, area_id = 20 },
	[246022] = { config_id = 246022, gadget_id = 70290513, pos = { x = -61.261, y = 231.559, z = 2510.900 }, rot = { x = 359.440, y = 23.001, z = 71.750 }, level = 33, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1246012, name = "MONSTER_BATTLE_246012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_246012" },
	{ config_id = 1246013, name = "ANY_MONSTER_DIE_246013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_246013", action = "action_EVENT_ANY_MONSTER_DIE_246013" },
	-- 核心消失刷宝箱
	{ config_id = 1246027, name = "ANY_GADGET_DIE_246027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_246027", action = "action_EVENT_ANY_GADGET_DIE_246027" },
	-- 06节点死对应特效消失
	{ config_id = 1246028, name = "GADGET_STATE_CHANGE_246028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246028", action = "action_EVENT_GADGET_STATE_CHANGE_246028" },
	-- 07节点死对应特效消失
	{ config_id = 1246029, name = "GADGET_STATE_CHANGE_246029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246029", action = "action_EVENT_GADGET_STATE_CHANGE_246029" },
	-- 节点死对应特效消失
	{ config_id = 1246030, name = "GADGET_STATE_CHANGE_246030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246030", action = "action_EVENT_GADGET_STATE_CHANGE_246030" },
	-- 核心交互播镜头
	{ config_id = 1246031, name = "LUA_NOTIFY_246031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_246031" }
}

-- 点位
points = {
	[246001] = { config_id = 246001, pos = { x = -61.000, y = 237.000, z = 2490.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
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
		gadgets = { 246005, 246006, 246007, 246008, 246010, 246017, 246018, 246020, 246021, 246022 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_246027", "GADGET_STATE_CHANGE_246028", "GADGET_STATE_CHANGE_246029", "GADGET_STATE_CHANGE_246030", "LUA_NOTIFY_246031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 246002 },
		gadgets = { 246003, 246009, 246014, 246016 },
		regions = { },
		triggers = { "MONSTER_BATTLE_246012", "ANY_MONSTER_DIE_246013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 246004, 246017, 246018 },
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_246012(context, evt)
	-- 将configid为 246010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_246013(context, evt)
	--判断死亡怪物的configid是否为 246002
	if evt.param1 ~= 246002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_246013(context, evt)
	-- 将configid为 246010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
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
	    ScriptLib.AddExtraGroupSuite(context, 133302246, 4)
	
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
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302248, 5)
	
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
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302248, 6)
	
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
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302248, 5)
	
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