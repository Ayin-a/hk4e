-- 基础信息
local base_info = {
	group_id = 244002008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 21010502, pos = { x = 345.119, y = -12.714, z = 250.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8002, monster_id = 21010502, pos = { x = 338.959, y = -12.758, z = 250.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8003, monster_id = 21020202, pos = { x = 341.711, y = -12.741, z = 258.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8004, monster_id = 21020202, pos = { x = 346.514, y = -12.741, z = 259.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8005, monster_id = 21030101, pos = { x = 350.101, y = -12.758, z = 253.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8006, monster_id = 20011301, pos = { x = 343.668, y = -12.758, z = 255.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8007, monster_id = 20011201, pos = { x = 347.149, y = -12.742, z = 256.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8009, monster_id = 20011201, pos = { x = 339.095, y = -12.741, z = 257.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8010, monster_id = 20011201, pos = { x = 343.736, y = -12.741, z = 258.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8011, monster_id = 22010101, pos = { x = 335.087, y = -12.758, z = 252.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 8013, monster_id = 22030101, pos = { x = 344.075, y = -12.853, z = 250.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 }, pose_id = 101 },
	{ config_id = 8017, monster_id = 21011002, pos = { x = 337.002, y = -12.854, z = 250.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 8018, monster_id = 21011002, pos = { x = 348.446, y = -12.875, z = 250.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4116 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8020, gadget_id = 70900205, pos = { x = 345.470, y = -31.672, z = 433.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8021, gadget_id = 70330057, pos = { x = 343.198, y = -12.741, z = 262.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8022, shape = RegionShape.SPHERE, radius = 30, pos = { x = 343.498, y = -12.742, z = 261.468 } }
}

-- 触发器
triggers = {
	{ config_id = 1008008, name = "ANY_MONSTER_DIE_8008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8008", action = "action_EVENT_ANY_MONSTER_DIE_8008" },
	{ config_id = 1008014, name = "ANY_MONSTER_LIVE_8014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8014", action = "action_EVENT_ANY_MONSTER_LIVE_8014" },
	{ config_id = 1008015, name = "CHALLENGE_SUCCESS_8015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "6", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8015" },
	{ config_id = 1008016, name = "CHALLENGE_FAIL_8016", event = EventType.EVENT_CHALLENGE_FAIL, source = "6", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8016" },
	{ config_id = 1008019, name = "GADGET_CREATE_8019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8019", action = "action_EVENT_GADGET_CREATE_8019" },
	{ config_id = 1008022, name = "ENTER_REGION_8022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8022", action = "action_EVENT_ENTER_REGION_8022", forbid_guest = false }
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
		gadgets = { 8020 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_8014", "CHALLENGE_SUCCESS_8015", "CHALLENGE_FAIL_8016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8001, 8002, 8003, 8004, 8005 },
		gadgets = { 8020, 8021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8008", "GADGET_CREATE_8019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8006, 8007, 8009, 8010, 8011 },
		gadgets = { 8020 },
		regions = { 8022 },
		triggers = { "ENTER_REGION_8022" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_8008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244002008, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8014(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8014(context, evt)
	-- 创建编号为6（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 6, 1, 244002008, 10, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8015(context, evt)
	-- 将configid为 8021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组244002001中， configid为1020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1020, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组244002001中， configid为1021的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1021, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244002008, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8016(context, evt)
	-- 将configid为 8021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 8021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组244002001中， configid为1020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1020, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组244002001中， configid为1021的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1021, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244002007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244002008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244002009, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8019(context, evt)
	if 8021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8019(context, evt)
	-- 将configid为 8021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8022(context, evt)
	if evt.param1 ~= 8022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8022(context, evt)
	-- 将configid为 8021 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8021, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 400028 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400028) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end