-- 基础信息
local base_info = {
	group_id = 133301360
}

-- Trigger变量
local defs = {
	gadget_CoreID = 360005,
	monster_BossID = 360002,
	gadget_Point_1 = 360006,
	gadget_Point_2 = 360007,
	gadget_Point_3 = 360008,
	point_camera = 360003,
	gadget_lookEntity = 360005,
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
	[360002] = { config_id = 360002, monster_id = 26120101, pos = { x = -708.616, y = 224.486, z = 3528.615 }, rot = { x = 0.000, y = 344.404, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117, 6116 }, pose_id = 201, area_id = 22 },
	[360011] = { config_id = 360011, monster_id = 26090401, pos = { x = -706.290, y = 223.900, z = 3531.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22 },
	[360013] = { config_id = 360013, monster_id = 26090401, pos = { x = -711.948, y = 224.121, z = 3530.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[360004] = { config_id = 360004, gadget_id = 70211111, pos = { x = -716.524, y = 224.347, z = 3528.972 }, rot = { x = 9.145, y = 49.410, z = 11.816 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	[360005] = { config_id = 360005, gadget_id = 70310193, pos = { x = -718.188, y = 225.194, z = 3526.496 }, rot = { x = 17.941, y = 20.496, z = 3.864 }, level = 33, persistent = true, area_id = 22 },
	[360006] = { config_id = 360006, gadget_id = 70310195, pos = { x = -719.885, y = 231.375, z = 3522.268 }, rot = { x = 343.250, y = 313.417, z = 9.216 }, level = 33, persistent = true, area_id = 22 },
	[360007] = { config_id = 360007, gadget_id = 70310195, pos = { x = -701.945, y = 222.216, z = 3505.886 }, rot = { x = 3.917, y = 148.409, z = 20.753 }, level = 33, persistent = true, area_id = 22 },
	[360008] = { config_id = 360008, gadget_id = 70310195, pos = { x = -707.845, y = 223.036, z = 3541.346 }, rot = { x = 356.954, y = 295.479, z = 357.562 }, level = 33, persistent = true, area_id = 22 },
	[360009] = { config_id = 360009, gadget_id = 70310192, pos = { x = -711.119, y = 230.307, z = 3514.710 }, rot = { x = 0.000, y = 60.928, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[360010] = { config_id = 360010, gadget_id = 70310192, pos = { x = -697.732, y = 222.981, z = 3512.693 }, rot = { x = 331.557, y = 28.583, z = 35.278 }, level = 33, persistent = true, area_id = 22 },
	[360012] = { config_id = 360012, gadget_id = 70310191, pos = { x = -706.184, y = 225.217, z = 3525.448 }, rot = { x = 0.000, y = 2.849, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	[360015] = { config_id = 360015, gadget_id = 70310197, pos = { x = -707.081, y = 224.250, z = 3535.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	[360016] = { config_id = 360016, gadget_id = 70310197, pos = { x = -710.845, y = 225.231, z = 3526.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	[360017] = { config_id = 360017, gadget_id = 70310197, pos = { x = -718.859, y = 223.293, z = 3537.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	[360018] = { config_id = 360018, gadget_id = 70310198, pos = { x = -692.116, y = 218.078, z = 3526.210 }, rot = { x = 0.000, y = 238.188, z = 0.000 }, level = 33, area_id = 22 },
	[360019] = { config_id = 360019, gadget_id = 70330197, pos = { x = -696.097, y = 222.299, z = 3531.616 }, rot = { x = 0.000, y = 260.077, z = 0.000 }, level = 33, area_id = 22 },
	[360020] = { config_id = 360020, gadget_id = 70310196, pos = { x = -717.230, y = 225.864, z = 3527.836 }, rot = { x = 308.691, y = 197.999, z = 340.492 }, level = 33, persistent = true, area_id = 22 },
	[360021] = { config_id = 360021, gadget_id = 70310196, pos = { x = -717.230, y = 225.864, z = 3527.836 }, rot = { x = 345.335, y = 141.391, z = 8.217 }, level = 33, persistent = true, area_id = 22 },
	[360022] = { config_id = 360022, gadget_id = 70310196, pos = { x = -717.230, y = 225.864, z = 3527.836 }, rot = { x = 6.289, y = 34.366, z = 358.420 }, level = 33, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 核心交互播镜头
	{ config_id = 1360001, name = "LUA_NOTIFY_360001", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_360001", trigger_count = 0 },
	{ config_id = 1360014, name = "MONSTER_BATTLE_360014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_360014", action = "action_EVENT_MONSTER_BATTLE_360014", trigger_count = 0 },
	-- 核心消失刷宝箱
	{ config_id = 1360023, name = "ANY_GADGET_DIE_360023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360023", action = "action_EVENT_ANY_GADGET_DIE_360023" },
	-- 节点死对应特效消失
	{ config_id = 1360024, name = "GADGET_STATE_CHANGE_360024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360024", action = "action_EVENT_GADGET_STATE_CHANGE_360024" },
	-- 节点死对应特效消失
	{ config_id = 1360025, name = "GADGET_STATE_CHANGE_360025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360025", action = "action_EVENT_GADGET_STATE_CHANGE_360025" },
	-- 节点死对应特效消失
	{ config_id = 1360026, name = "GADGET_STATE_CHANGE_360026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360026", action = "action_EVENT_GADGET_STATE_CHANGE_360026" }
}

-- 点位
points = {
	[360003] = { config_id = 360003, pos = { x = -681.364, y = 236.156, z = 3559.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 22 }
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
		gadgets = { 360005, 360006, 360007, 360008, 360009, 360010, 360012, 360018, 360019, 360020, 360021, 360022 },
		regions = { },
		triggers = { "LUA_NOTIFY_360001", "MONSTER_BATTLE_360014", "ANY_GADGET_DIE_360023", "GADGET_STATE_CHANGE_360024", "GADGET_STATE_CHANGE_360025", "GADGET_STATE_CHANGE_360026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 360002, 360011, 360013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 360004, 360012, 360018, 360019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 360004 },
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
function action_EVENT_LUA_NOTIFY_360001(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_360014(context, evt)
	if 360002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_360014(context, evt)
	-- 将configid为 360012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360023(context, evt)
	if 360005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301360, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360024(context, evt)
	if 360006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 360020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360025(context, evt)
	if 360007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 360021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360026(context, evt)
	if 360008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 360022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"