-- 基础信息
local base_info = {
	group_id = 133303283
}

-- Trigger变量
local defs = {
	gadget_CoreID = 283005,
	monster_BossID = 283002,
	gadget_Point_1 = 283006,
	gadget_Point_2 = 283007,
	gadget_Point_3 = 283008,
	point_camera = 283001,
	gadget_lookEntity = 283005,
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
	[283002] = { config_id = 283002, monster_id = 26120101, pos = { x = -1345.384, y = 200.578, z = 3254.286 }, rot = { x = 0.000, y = 228.653, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 201, area_id = 23 },
	[283010] = { config_id = 283010, monster_id = 26090201, pos = { x = -1339.422, y = 201.147, z = 3252.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23 },
	[283011] = { config_id = 283011, monster_id = 26090201, pos = { x = -1337.854, y = 201.479, z = 3255.467 }, rot = { x = 0.000, y = 228.759, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23 },
	[283020] = { config_id = 283020, monster_id = 26090201, pos = { x = -1347.418, y = 201.065, z = 3250.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23 },
	[283024] = { config_id = 283024, monster_id = 26090201, pos = { x = -1343.343, y = 201.230, z = 3248.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[283003] = { config_id = 283003, gadget_id = 70310191, pos = { x = -1347.360, y = 202.012, z = 3242.900 }, rot = { x = 0.000, y = 333.545, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[283004] = { config_id = 283004, gadget_id = 70211111, pos = { x = -1343.605, y = 201.371, z = 3250.161 }, rot = { x = 4.917, y = 235.375, z = 357.694 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[283005] = { config_id = 283005, gadget_id = 70310193, pos = { x = -1344.982, y = 201.151, z = 3251.614 }, rot = { x = 0.000, y = 170.955, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 22
	[283006] = { config_id = 283006, gadget_id = 70310195, pos = { x = -1335.833, y = 203.330, z = 3266.211 }, rot = { x = 28.011, y = 217.929, z = 12.356 }, level = 30, persistent = true, area_id = 23 },
	-- 21
	[283007] = { config_id = 283007, gadget_id = 70310195, pos = { x = -1331.800, y = 203.835, z = 3251.060 }, rot = { x = 355.372, y = 32.253, z = 26.968 }, level = 30, persistent = true, area_id = 23 },
	-- 23
	[283008] = { config_id = 283008, gadget_id = 70310195, pos = { x = -1345.920, y = 207.172, z = 3242.929 }, rot = { x = 310.384, y = 336.507, z = 152.689 }, level = 30, persistent = true, area_id = 23 },
	[283009] = { config_id = 283009, gadget_id = 70310192, pos = { x = -1338.004, y = 205.014, z = 3247.899 }, rot = { x = 0.000, y = 0.357, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[283013] = { config_id = 283013, gadget_id = 70310197, pos = { x = -1347.170, y = 201.440, z = 3245.940 }, rot = { x = 0.000, y = 281.495, z = 0.000 }, level = 30, area_id = 23 },
	[283014] = { config_id = 283014, gadget_id = 70310192, pos = { x = -1348.214, y = 205.486, z = 3260.721 }, rot = { x = 70.334, y = 245.183, z = 254.049 }, level = 30, area_id = 23 },
	[283015] = { config_id = 283015, gadget_id = 70290491, pos = { x = -1344.982, y = 201.151, z = 3251.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[283017] = { config_id = 283017, gadget_id = 70310198, pos = { x = -1361.692, y = 202.758, z = 3249.468 }, rot = { x = 0.000, y = 233.749, z = 0.000 }, level = 30, area_id = 23 },
	[283018] = { config_id = 283018, gadget_id = 70310198, pos = { x = -1336.720, y = 201.487, z = 3249.173 }, rot = { x = 0.000, y = 337.458, z = 0.000 }, level = 30, area_id = 23 },
	[283021] = { config_id = 283021, gadget_id = 70290513, pos = { x = -1343.225, y = 202.280, z = 3251.357 }, rot = { x = 344.555, y = 93.276, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[283022] = { config_id = 283022, gadget_id = 70310196, pos = { x = -1343.176, y = 202.068, z = 3253.427 }, rot = { x = 0.000, y = 30.091, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[283023] = { config_id = 283023, gadget_id = 70310196, pos = { x = -1345.669, y = 201.992, z = 3249.059 }, rot = { x = 320.872, y = 198.191, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[283029] = { config_id = 283029, gadget_id = 70310197, pos = { x = -1345.980, y = 202.072, z = 3260.221 }, rot = { x = 0.000, y = 281.495, z = 0.000 }, level = 30, area_id = 23 },
	[283030] = { config_id = 283030, gadget_id = 70310197, pos = { x = -1336.609, y = 201.806, z = 3251.468 }, rot = { x = 0.000, y = 140.276, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1283012, name = "MONSTER_BATTLE_283012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_283012", action = "action_EVENT_MONSTER_BATTLE_283012" },
	-- 核心消失刷宝箱
	{ config_id = 1283016, name = "ANY_GADGET_DIE_283016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_283016", action = "action_EVENT_ANY_GADGET_DIE_283016" },
	-- 核心交互播镜头
	{ config_id = 1283019, name = "LUA_NOTIFY_283019", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_283019" },
	-- 节点死对应特效消失
	{ config_id = 1283025, name = "ANY_GADGET_DIE_283025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_283025", action = "action_EVENT_ANY_GADGET_DIE_283025" },
	-- 节点死对应特效消失
	{ config_id = 1283026, name = "ANY_GADGET_DIE_283026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_283026", action = "action_EVENT_ANY_GADGET_DIE_283026" },
	-- 节点死对应特效消失
	{ config_id = 1283027, name = "ANY_GADGET_DIE_283027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_283027", action = "action_EVENT_ANY_GADGET_DIE_283027" }
}

-- 点位
points = {
	[283001] = { config_id = 283001, pos = { x = -1349.387, y = 206.044, z = 3242.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
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
		gadgets = { 283003, 283005, 283006, 283007, 283008, 283009, 283015, 283017, 283018, 283021, 283022, 283023 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_283016", "LUA_NOTIFY_283019", "ANY_GADGET_DIE_283025", "ANY_GADGET_DIE_283026", "ANY_GADGET_DIE_283027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 283002, 283020, 283024 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_283012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 283004, 283017, 283018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 283004 },
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
function condition_EVENT_MONSTER_BATTLE_283012(context, evt)
	if 283002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_283012(context, evt)
	-- 创建id为283013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 283013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为283014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 283014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为283029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 283029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为283030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 283030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_283016(context, evt)
	if 283005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_283016(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303283, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_283019(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_283025(context, evt)
	if 283006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_283025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 283022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_283026(context, evt)
	if 283007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_283026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 283021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 283010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 283011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_283027(context, evt)
	if 283008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_283027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 283023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"