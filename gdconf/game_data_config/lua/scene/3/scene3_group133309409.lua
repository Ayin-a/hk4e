-- 基础信息
local base_info = {
	group_id = 133309409
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 409002, monster_id = 24040201, pos = { x = -2374.245, y = -3.895, z = 5377.116 }, rot = { x = 0.000, y = 325.634, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1004, area_id = 27 },
	{ config_id = 409011, monster_id = 24040201, pos = { x = -2386.655, y = -3.895, z = 5377.275 }, rot = { x = 0.000, y = 33.616, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1004, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 409001, gadget_id = 70330392, pos = { x = -2389.464, y = -4.754, z = 5387.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 409003, gadget_id = 70330392, pos = { x = -2389.464, y = -4.754, z = 5377.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 409004, gadget_id = 70330392, pos = { x = -2389.464, y = -4.754, z = 5367.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 409005, gadget_id = 70330392, pos = { x = -2379.464, y = -4.754, z = 5387.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 409006, gadget_id = 70330392, pos = { x = -2379.464, y = -4.754, z = 5377.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 409007, gadget_id = 70330392, pos = { x = -2379.464, y = -4.754, z = 5367.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 409008, gadget_id = 70330392, pos = { x = -2369.464, y = -4.754, z = 5387.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 409009, gadget_id = 70330392, pos = { x = -2369.464, y = -4.754, z = 5377.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 409010, gadget_id = 70330392, pos = { x = -2369.464, y = -4.754, z = 5367.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 409012, gadget_id = 70211012, pos = { x = -2380.105, y = -4.426, z = 5379.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 宝箱保底
	{ config_id = 1409014, name = "GADGET_CREATE_409014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_409014", action = "action_EVENT_GADGET_CREATE_409014", trigger_count = 0 },
	-- 刷宝箱
	{ config_id = 1409015, name = "ANY_MONSTER_DIE_409015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_409015", action = "action_EVENT_ANY_MONSTER_DIE_409015", trigger_count = 0 },
	-- 刷怪，1#
	{ config_id = 1409016, name = "GADGET_CREATE_409016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_409016", action = "action_EVENT_GADGET_CREATE_409016", trigger_count = 0 },
	-- 刷怪，2#
	{ config_id = 1409017, name = "GADGET_CREATE_409017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_409017", action = "action_EVENT_GADGET_CREATE_409017", trigger_count = 0 },
	-- die，1#
	{ config_id = 1409018, name = "ANY_MONSTER_DIE_409018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_409018", action = "action_EVENT_ANY_MONSTER_DIE_409018", trigger_count = 0 },
	-- die，2#
	{ config_id = 1409019, name = "ANY_MONSTER_DIE_409019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_409019", action = "action_EVENT_ANY_MONSTER_DIE_409019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "die1", value = 0, no_refresh = true },
	{ config_id = 4, name = "die2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 409020, gadget_id = 70330392, pos = { x = -2389.464, y = -4.586, z = 5387.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 409021, gadget_id = 70330392, pos = { x = -2389.464, y = -4.586, z = 5367.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 409022, gadget_id = 70330392, pos = { x = -2389.464, y = -4.586, z = 5377.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
	},
	triggers = {
		{ config_id = 1409013, name = "GADGET_STATE_CHANGE_409013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_409013", action = "" }
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
	end_suite = 0,
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 409001, 409003, 409004, 409005, 409006, 409007, 409008, 409009, 409010, 409012 },
		regions = { },
		triggers = { "GADGET_CREATE_409014", "ANY_MONSTER_DIE_409015", "GADGET_CREATE_409016", "GADGET_CREATE_409017", "ANY_MONSTER_DIE_409018", "ANY_MONSTER_DIE_409019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_409014(context, evt)
	if 409012 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"die1"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "die1", 133309409) ~= 1 then
			return false
	end
	
	-- 判断变量"die2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "die2", 133309409) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_409014(context, evt)
	-- 将configid为 409012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 409012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_409015(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133309409) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_409015(context, evt)
	-- 将configid为 409012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 409012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_409016(context, evt)
	if 409012 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"die1"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "die1", 133309409) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_409016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_409017(context, evt)
	if 409012 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"die2"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "die2", 133309409) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_409017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 409011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_409018(context, evt)
	if 409002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_409018(context, evt)
	-- 将本组内变量名为 "die1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "die1", 1, 133309409) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_409019(context, evt)
	if 409011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_409019(context, evt)
	-- 将本组内变量名为 "die2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "die2", 1, 133309409) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end