-- 基础信息
local base_info = {
	group_id = 133303275
}

-- Trigger变量
local defs = {
	gadget_CoreID = 275005,
	monster_BossID = 275002,
	gadget_Point_1 = 275006,
	gadget_Point_2 = 275007,
	gadget_Point_3 = 275008,
	point_camera = 275001,
	gadget_lookEntity = 275005,
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
    is_allow_input = false,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[275002] = { config_id = 275002, monster_id = 24030201, pos = { x = -1633.718, y = 195.416, z = 3482.531 }, rot = { x = 0.000, y = 185.338, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6116, 6117 }, isElite = true, pose_id = 101, area_id = 23 },
	[275032] = { config_id = 275032, monster_id = 24020101, pos = { x = -1645.167, y = 196.038, z = 3475.398 }, rot = { x = 0.000, y = 82.850, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 6117 }, pose_id = 100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[275004] = { config_id = 275004, gadget_id = 70211111, pos = { x = -1641.974, y = 195.802, z = 3477.369 }, rot = { x = 358.007, y = 217.682, z = 14.004 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	[275005] = { config_id = 275005, gadget_id = 70310193, pos = { x = -1639.620, y = 195.242, z = 3478.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 23
	[275006] = { config_id = 275006, gadget_id = 70310195, pos = { x = -1651.246, y = 204.415, z = 3486.379 }, rot = { x = 310.345, y = 231.155, z = 115.929 }, level = 30, persistent = true, area_id = 23 },
	-- 22
	[275007] = { config_id = 275007, gadget_id = 70310195, pos = { x = -1630.566, y = 202.086, z = 3489.977 }, rot = { x = 343.652, y = 39.093, z = 3.496 }, level = 30, persistent = true, area_id = 23 },
	-- 21
	[275008] = { config_id = 275008, gadget_id = 70310195, pos = { x = -1622.659, y = 196.057, z = 3466.926 }, rot = { x = 353.280, y = 227.098, z = 342.756 }, level = 30, persistent = true, area_id = 23 },
	[275010] = { config_id = 275010, gadget_id = 70310197, pos = { x = -1647.479, y = 198.175, z = 3480.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[275011] = { config_id = 275011, gadget_id = 70310197, pos = { x = -1631.363, y = 197.562, z = 3487.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[275012] = { config_id = 275012, gadget_id = 70310191, pos = { x = -1635.536, y = 196.023, z = 3466.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[275013] = { config_id = 275013, gadget_id = 70310197, pos = { x = -1608.473, y = 193.816, z = 3487.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[275014] = { config_id = 275014, gadget_id = 70310197, pos = { x = -1641.648, y = 198.831, z = 3485.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[275015] = { config_id = 275015, gadget_id = 70310197, pos = { x = -1658.977, y = 199.643, z = 3480.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	[275016] = { config_id = 275016, gadget_id = 70310197, pos = { x = -1638.564, y = 196.259, z = 3469.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	[275017] = { config_id = 275017, gadget_id = 70310198, pos = { x = -1658.015, y = 198.678, z = 3478.862 }, rot = { x = 352.818, y = 266.666, z = 27.464 }, level = 30, area_id = 23 },
	[275018] = { config_id = 275018, gadget_id = 70310198, pos = { x = -1621.551, y = 196.304, z = 3488.549 }, rot = { x = 0.000, y = 189.349, z = 0.000 }, level = 30, area_id = 23 },
	[275019] = { config_id = 275019, gadget_id = 70310197, pos = { x = -1623.941, y = 195.021, z = 3480.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[275020] = { config_id = 275020, gadget_id = 70310197, pos = { x = -1628.591, y = 195.174, z = 3471.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[275021] = { config_id = 275021, gadget_id = 70290513, pos = { x = -1637.588, y = 196.888, z = 3477.824 }, rot = { x = 0.000, y = 125.855, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[275022] = { config_id = 275022, gadget_id = 70310196, pos = { x = -1639.558, y = 196.690, z = 3480.479 }, rot = { x = 333.555, y = 46.071, z = 350.962 }, level = 30, persistent = true, area_id = 23 },
	[275023] = { config_id = 275023, gadget_id = 70310196, pos = { x = -1641.792, y = 197.466, z = 3479.942 }, rot = { x = 320.748, y = 308.092, z = 354.856 }, level = 30, persistent = true, area_id = 23 },
	[275029] = { config_id = 275029, gadget_id = 70290491, pos = { x = -1639.620, y = 195.242, z = 3478.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	[275036] = { config_id = 275036, gadget_id = 70220020, pos = { x = -1629.202, y = 195.229, z = 3468.585 }, rot = { x = 356.347, y = 307.563, z = 351.617 }, level = 30, persistent = true, area_id = 23 },
	[275037] = { config_id = 275037, gadget_id = 70220020, pos = { x = -1623.263, y = 195.431, z = 3468.484 }, rot = { x = 16.005, y = 351.171, z = 9.572 }, level = 30, persistent = true, area_id = 23 },
	[275038] = { config_id = 275038, gadget_id = 70220020, pos = { x = -1626.943, y = 194.654, z = 3471.339 }, rot = { x = 354.499, y = 289.406, z = 351.514 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1275003, name = "MONSTER_BATTLE_275003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_275003", action = "action_EVENT_MONSTER_BATTLE_275003" },
	{ config_id = 1275009, name = "ANY_MONSTER_DIE_275009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_275009", action = "action_EVENT_ANY_MONSTER_DIE_275009" },
	-- 节点死对应特效消失
	{ config_id = 1275025, name = "ANY_GADGET_DIE_275025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_275025", action = "action_EVENT_ANY_GADGET_DIE_275025" },
	-- 节点死对应特效消失
	{ config_id = 1275026, name = "ANY_GADGET_DIE_275026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_275026", action = "action_EVENT_ANY_GADGET_DIE_275026" },
	-- 节点死对应特效消失
	{ config_id = 1275027, name = "ANY_GADGET_DIE_275027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_275027", action = "action_EVENT_ANY_GADGET_DIE_275027" },
	-- 核心消失刷宝箱
	{ config_id = 1275030, name = "ANY_GADGET_DIE_275030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_275030", action = "action_EVENT_ANY_GADGET_DIE_275030" },
	-- 核心交互播镜头
	{ config_id = 1275031, name = "LUA_NOTIFY_275031", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CallCamera", condition = "", action = "action_EVENT_LUA_NOTIFY_275031" }
}

-- 点位
points = {
	[275001] = { config_id = 275001, pos = { x = -1608.492, y = 213.775, z = 3480.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
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
		gadgets = { 275005, 275006, 275007, 275008, 275012, 275017, 275018, 275021, 275022, 275023, 275029, 275036, 275037, 275038 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_275025", "ANY_GADGET_DIE_275026", "ANY_GADGET_DIE_275027", "ANY_GADGET_DIE_275030", "LUA_NOTIFY_275031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 275002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_275003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 275004, 275012, 275017, 275018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 275004 },
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
function condition_EVENT_MONSTER_BATTLE_275003(context, evt)
	if 275002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_275003(context, evt)
	-- 创建id为275010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 275010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为275011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 275011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为275016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 275016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为275019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 275019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为275020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 275020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_275009(context, evt)
	if 275002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_275009(context, evt)
	-- 将configid为 275012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_275025(context, evt)
	if 275006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_275026(context, evt)
	if 275007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_275027(context, evt)
	if 275008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 275021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_275030(context, evt)
	if 275005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_275030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303275, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_275031(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/DeathFieldPlay"
require "V3_0/DeathFieldStandard"
require "V3_0/CameraLook"