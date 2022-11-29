-- 基础信息
local base_info = {
	group_id = 133302235
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 235001, monster_id = 28030313, pos = { x = -376.675, y = 136.656, z = 2227.767 }, rot = { x = 0.000, y = 48.462, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 24 },
	{ config_id = 235003, monster_id = 28030313, pos = { x = -325.390, y = 133.042, z = 2252.779 }, rot = { x = 0.000, y = 265.485, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 235005, monster_id = 28030313, pos = { x = -420.294, y = 134.604, z = 2263.441 }, rot = { x = 0.000, y = 195.398, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 24 },
	{ config_id = 235008, monster_id = 28030313, pos = { x = -346.810, y = 120.435, z = 2256.905 }, rot = { x = 0.000, y = 177.605, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 235017, monster_id = 28010202, pos = { x = -394.287, y = 107.118, z = 2245.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 235018, monster_id = 28020314, pos = { x = -353.958, y = 108.621, z = 2232.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 235007, gadget_id = 70330199, pos = { x = -394.544, y = 106.944, z = 2244.775 }, rot = { x = 0.000, y = 305.295, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 235010, gadget_id = 70330199, pos = { x = -357.058, y = 106.469, z = 2283.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 235011, gadget_id = 70330199, pos = { x = -353.375, y = 108.401, z = 2231.277 }, rot = { x = 16.418, y = 356.327, z = 348.502 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 235013, gadget_id = 70217020, pos = { x = -356.847, y = 107.040, z = 2284.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1235002, name = "GROUP_LOAD_235002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_235002", action = "action_EVENT_GROUP_LOAD_235002", trigger_count = 0 },
	{ config_id = 1235012, name = "GADGET_STATE_CHANGE_235012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235012", action = "action_EVENT_GADGET_STATE_CHANGE_235012" },
	{ config_id = 1235014, name = "GADGET_STATE_CHANGE_235014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235014", action = "action_EVENT_GADGET_STATE_CHANGE_235014" },
	{ config_id = 1235015, name = "GADGET_STATE_CHANGE_235015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235015", action = "action_EVENT_GADGET_STATE_CHANGE_235015" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 235004, monster_id = 28030313, pos = { x = -314.165, y = 150.766, z = 2207.169 }, rot = { x = 0.000, y = 122.973, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
		{ config_id = 235006, monster_id = 28030313, pos = { x = -402.005, y = 135.109, z = 2300.595 }, rot = { x = 0.000, y = 142.266, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
		{ config_id = 235009, monster_id = 28030313, pos = { x = -347.657, y = 120.355, z = 2252.515 }, rot = { x = 0.000, y = 10.451, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 24 },
		{ config_id = 235016, monster_id = 28010301, pos = { x = -352.996, y = 108.413, z = 2232.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 }
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
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_235002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 235001, 235003, 235005, 235008 },
		gadgets = { 235007, 235010, 235011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_235012", "GADGET_STATE_CHANGE_235014", "GADGET_STATE_CHANGE_235015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_235002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_235002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302235, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235012(context, evt)
	if 235010 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235012(context, evt)
	-- 创建id为235013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 235013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235014(context, evt)
	if 235011 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 235018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235015(context, evt)
	if 235007 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235015(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 235017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"