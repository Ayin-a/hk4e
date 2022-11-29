-- 基础信息
local base_info = {
	group_id = 220000001
}

-- Trigger变量
local defs = {
	monster_id_1 = 1001,
	monster_id_2 = 1002,
	monster_id_3 = 1003,
	monster_id_4 = 1004,
	monster_id_5 = 1005,
	monster_id_6 = 1006,
	monster_id_7 = 1007,
	monster_id_8 = 1008,
	gadget_id_1 = 100,
	gadget_id_2 = 101,
	gadget_id_3 = 102
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010801, pos = { x = 57.499, y = 0.500, z = -2.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20010801, pos = { x = 64.907, y = 0.500, z = 5.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20011001, pos = { x = 60.626, y = 0.500, z = 0.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 20010901, pos = { x = 56.622, y = 0.500, z = 8.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 20011001, pos = { x = 53.984, y = 0.500, z = 5.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 20011001, pos = { x = 58.994, y = 0.500, z = 5.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 20011101, pos = { x = 52.430, y = 0.500, z = 6.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 20010901, pos = { x = 62.412, y = 0.500, z = 7.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1009, gadget_id = 70350001, pos = { x = 57.011, y = 0.500, z = -22.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70360002, pos = { x = 63.180, y = 0.500, z = -28.576 }, rot = { x = 0.000, y = 161.385, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70211011, pos = { x = 111.400, y = 22.900, z = -36.916 }, rot = { x = 0.000, y = 95.413, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", isOneoff = true },
	{ config_id = 1012, gadget_id = 70211011, pos = { x = 111.417, y = 22.900, z = -40.480 }, rot = { x = 0.000, y = 29.270, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", isOneoff = true },
	{ config_id = 1013, gadget_id = 70380002, pos = { x = 21.541, y = 2.923, z = -22.585 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1 }
}

-- 区域
regions = {
	{ config_id = 10, shape = RegionShape.SPHERE, radius = 19.05, pos = { x = 58.247, y = 0.500, z = -39.930 } },
	{ config_id = 11, shape = RegionShape.SPHERE, radius = 20.08, pos = { x = 18.585, y = 0.500, z = -41.411 } }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "GADGET_CREATE_1", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1", action = "action_EVENT_GADGET_CREATE_1" },
	{ config_id = 1000003, name = "SELECT_OPTION_3", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3", action = "action_EVENT_SELECT_OPTION_3", forbid_guest = false },
	{ config_id = 1000004, name = "SELECT_OPTION_4", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4", action = "action_EVENT_SELECT_OPTION_4", forbid_guest = false },
	{ config_id = 1000005, name = "SELECT_OPTION_5", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5", action = "action_EVENT_SELECT_OPTION_5", forbid_guest = false },
	{ config_id = 1000010, name = "ENTER_REGION_10", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10", action = "action_EVENT_ENTER_REGION_10", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000011, name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11", trigger_count = 0, forbid_guest = false }
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
	end_suite = 0,
	rand_suite = true
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
		gadgets = { 1009, 1010, 1011, 1012, 1013 },
		regions = { 10, 11 },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_3", "SELECT_OPTION_4", "SELECT_OPTION_5", "ENTER_REGION_10", "ENTER_REGION_11" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1(context, evt)
	if 1010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {100,101,102}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3(context, evt)
	-- 判断是gadgetid 1010
	if 1010 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_1 == evt.param2 then
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_2, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_3, delay_time = 0 }) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.monster_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4(context, evt)
	-- 判断是gadgetid 1010
	if 1010 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_2 == evt.param2 then
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_4, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_5, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_6, delay_time = 0 }) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.monster_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5(context, evt)
	-- 判断是gadgetid 1010
	if 1010 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_3 == evt.param2 then
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_7, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_8, delay_time = 0 }) then
	  return -1
	end
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.monster_id_1, GadgetState.GearStart) then
			return -1
		end 
		return 0
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10(context, evt)
	if evt.param1 ~= 10 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		pos = {x=53, y=2, z=-53}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		pos = {x=53, y=2, z=-53}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 2, is_broadcast = false }) then
					return -1
		end 
	
	return 0
end