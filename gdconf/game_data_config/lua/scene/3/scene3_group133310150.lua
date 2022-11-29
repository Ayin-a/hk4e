-- 基础信息
local base_info = {
	group_id = 133310150
}

-- Trigger变量
local defs = {
	gadget_CoreID = 150005,
	monster_BossID = 150002,
	gadget_Point_1 = 150006,
	gadget_Point_2 = 150007,
	gadget_Point_3 = 150008,
	target_x = -2112,
	target_y = 147.2902,
	target_z = 4789,
	camera_x = -2109.114,
	camera_y = 151.56,
	camera_z = 4773.65,
	duration = 5
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

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[150001] = { config_id = 150001, monster_id = 26090101, pos = { x = -2100.854, y = 148.550, z = 4806.800 }, rot = { x = 0.000, y = 44.812, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 },
	[150002] = { config_id = 150002, monster_id = 26120301, pos = { x = -2101.419, y = 148.550, z = 4791.089 }, rot = { x = 0.000, y = 274.200, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6116, 6117 }, pose_id = 101, area_id = 26 },
	[150003] = { config_id = 150003, monster_id = 20010101, pos = { x = -2104.055, y = 148.705, z = 4789.094 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 201, area_id = 26 },
	[150010] = { config_id = 150010, monster_id = 20011001, pos = { x = -2119.455, y = 148.550, z = 4780.936 }, rot = { x = 0.000, y = 236.087, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, area_id = 26 },
	[150011] = { config_id = 150011, monster_id = 26090101, pos = { x = -2098.894, y = 148.550, z = 4802.821 }, rot = { x = 0.000, y = 16.659, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 },
	[150012] = { config_id = 150012, monster_id = 20011001, pos = { x = -2114.153, y = 148.550, z = 4780.338 }, rot = { x = 0.000, y = 204.370, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, area_id = 26 },
	[150013] = { config_id = 150013, monster_id = 20011401, pos = { x = -2117.930, y = 149.031, z = 4810.454 }, rot = { x = 0.000, y = 315.452, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, area_id = 26 },
	[150014] = { config_id = 150014, monster_id = 20011401, pos = { x = -2122.582, y = 149.036, z = 4806.531 }, rot = { x = 0.000, y = 244.561, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, area_id = 26 },
	[150032] = { config_id = 150032, monster_id = 26090101, pos = { x = -2107.221, y = 148.550, z = 4785.420 }, rot = { x = 0.000, y = 305.704, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 },
	[150033] = { config_id = 150033, monster_id = 26090101, pos = { x = -2103.979, y = 148.550, z = 4792.832 }, rot = { x = 0.000, y = 281.469, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[150004] = { config_id = 150004, gadget_id = 70211101, pos = { x = -2105.578, y = 148.221, z = 4790.718 }, rot = { x = 347.472, y = 296.126, z = 349.616 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	[150005] = { config_id = 150005, gadget_id = 70310193, pos = { x = -2105.347, y = 148.232, z = 4789.791 }, rot = { x = 0.000, y = 17.285, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	[150006] = { config_id = 150006, gadget_id = 70310195, pos = { x = -2114.519, y = 148.233, z = 4812.470 }, rot = { x = 0.000, y = 184.149, z = 0.000 }, level = 32, area_id = 26 },
	[150007] = { config_id = 150007, gadget_id = 70310195, pos = { x = -2096.683, y = 149.749, z = 4805.847 }, rot = { x = 351.198, y = 289.012, z = 14.701 }, level = 32, area_id = 26 },
	[150008] = { config_id = 150008, gadget_id = 70310195, pos = { x = -2117.215, y = 148.320, z = 4779.867 }, rot = { x = 0.000, y = 226.219, z = 0.000 }, level = 32, area_id = 26 },
	[150009] = { config_id = 150009, gadget_id = 70310192, pos = { x = -2106.614, y = 149.428, z = 4778.324 }, rot = { x = 331.384, y = 350.927, z = 337.876 }, level = 32, area_id = 26 },
	[150017] = { config_id = 150017, gadget_id = 70330435, pos = { x = -2119.990, y = 148.227, z = 4789.678 }, rot = { x = 0.000, y = 256.106, z = 0.000 }, level = 32, area_id = 26 },
	[150020] = { config_id = 150020, gadget_id = 70310196, pos = { x = -2106.648, y = 149.331, z = 4790.888 }, rot = { x = 0.000, y = 324.556, z = 0.000 }, level = 32, area_id = 26 },
	[150021] = { config_id = 150021, gadget_id = 70310196, pos = { x = -2107.364, y = 149.025, z = 4788.402 }, rot = { x = 0.000, y = 228.542, z = 0.000 }, level = 32, area_id = 26 },
	[150022] = { config_id = 150022, gadget_id = 70290513, pos = { x = -2105.760, y = 149.613, z = 4791.276 }, rot = { x = 0.000, y = 7.464, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心消失刷宝箱
	{ config_id = 1150027, name = "ANY_GADGET_DIE_150027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_150027", action = "action_EVENT_ANY_GADGET_DIE_150027" },
	-- 节点死对应特效消失
	{ config_id = 1150028, name = "GADGET_STATE_CHANGE_150028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150028", action = "action_EVENT_GADGET_STATE_CHANGE_150028" },
	-- 节点死对应特效消失
	{ config_id = 1150029, name = "GADGET_STATE_CHANGE_150029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150029", action = "action_EVENT_GADGET_STATE_CHANGE_150029" },
	-- 节点死对应特效消失
	{ config_id = 1150030, name = "GADGET_STATE_CHANGE_150030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150030", action = "action_EVENT_GADGET_STATE_CHANGE_150030" },
	-- 核心交互播镜头
	{ config_id = 1150031, name = "LUA_NOTIFY_150031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_150031" }
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
		monsters = { 150001, 150003, 150010, 150011, 150012, 150013, 150014 },
		gadgets = { 150005, 150006, 150007, 150008, 150009, 150017, 150020, 150021, 150022 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_150027", "GADGET_STATE_CHANGE_150028", "GADGET_STATE_CHANGE_150029", "GADGET_STATE_CHANGE_150030", "LUA_NOTIFY_150031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 150002, 150032, 150033 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 150004, 150017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 150004 },
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
function condition_EVENT_ANY_GADGET_DIE_150027(context, evt)
	if 150005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_150027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310150, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150028(context, evt)
	if 150006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150029(context, evt)
	if 150007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150030(context, evt)
	if 150008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_150031(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-3024.84, y=268.74, z=4872.4}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=defs.target_x, y=defs.target_y, z=defs.target_z}
	  local pos_follow = {x=defs.camera_x, y=defs.camera_y, z=defs.camera_z}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = defs.duration, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true,is_abs_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"