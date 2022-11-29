-- 基础信息
local base_info = {
	group_id = 201032010
}

-- DEFS_MISCS
function stage_ready(context)
        local flag = ScriptLib.GetGroupVariableValue(context, "isFirstEntry")
        if flag == 1 then
                ScriptLib.SetPlayerInteractOption(context, "false DisableXiaoDungeon")
        end
        return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10003, gadget_id = 70900205, pos = { x = -57.642, y = 250.328, z = -79.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10007, gadget_id = 70350106, pos = { x = -28.760, y = 246.100, z = -63.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 10005, shape = RegionShape.SPHERE, radius = 400, pos = { x = 12.212, y = 256.747, z = 11.591 } }
}

-- 触发器
triggers = {
	{ config_id = 1010001, name = "DUNGEON_ALL_AVATAR_DIE_10001", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_10001", trigger_count = 0 },
	{ config_id = 1010002, name = "DUNGEON_REVIVE_10002", event = EventType.EVENT_DUNGEON_REVIVE, source = "", condition = "", action = "action_EVENT_DUNGEON_REVIVE_10002", trigger_count = 0 },
	{ config_id = 1010004, name = "TIMER_EVENT_10004", event = EventType.EVENT_TIMER_EVENT, source = "xiao_skill", condition = "", action = "action_EVENT_TIMER_EVENT_10004", trigger_count = 0 },
	{ config_id = 1010005, name = "ENTER_REGION_10005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10005", action = "action_EVENT_ENTER_REGION_10005", trigger_count = 0 },
	{ config_id = 1010006, name = "TIMER_EVENT_10006", event = EventType.EVENT_TIMER_EVENT, source = "xiao_skill_re", condition = "", action = "action_EVENT_TIMER_EVENT_10006", trigger_count = 0 },
	{ config_id = 1010008, name = "DUNGEON_AVATAR_SLIP_DIE_10008", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_10008", trigger_count = 0 },
	{ config_id = 1010009, name = "TIMER_EVENT_10009", event = EventType.EVENT_TIMER_EVENT, source = "unlock_input", condition = "", action = "action_EVENT_TIMER_EVENT_10009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "test", value = 0, no_refresh = false },
	{ config_id = 2, name = "isFirstEntry", value = 1, no_refresh = false },
	{ config_id = 3, name = "test_re", value = 0, no_refresh = false },
	{ config_id = 4, name = "test_enter_region", value = 0, no_refresh = false },
	{ config_id = 5, name = "isSlipDie", value = 0, no_refresh = false },
	{ config_id = 6, name = "test_slip_enter_region", value = 0, no_refresh = false }
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
		gadgets = { 10003 },
		regions = { 10005 },
		triggers = { "DUNGEON_ALL_AVATAR_DIE_10001", "DUNGEON_REVIVE_10002", "TIMER_EVENT_10004", "ENTER_REGION_10005", "TIMER_EVENT_10006", "DUNGEON_AVATAR_SLIP_DIE_10008", "TIMER_EVENT_10009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_10001(context, evt)
	-- 屏蔽战斗主界面UI模块,参数传字符串,参数内容为"bool 屏蔽ui组key"
	if 0 ~= ScriptLib.SetPlayerInteractOption(context, "false DisableXiaoDungeon") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_player_interact_option")
		return -1
	end
	
	-- 将本组内变量名为 "test_re" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "test_re", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_REVIVE_10002(context, evt)
	-- 延迟4秒后,向groupId为：201032010的对象,请求一次调用,并将string参数："xiao_skill" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201032010, "xiao_skill", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10004(context, evt)
	-- 改变指定group组201032001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201032001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201032010的对象,请求一次调用,并将string参数："unlock_input" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201032010, "unlock_input", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "test_re" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "test_re", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10005(context, evt)
	if evt.param1 ~= 10005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10005(context, evt)
	--断线重连后重放大招
	local flag_re = ScriptLib.GetGroupVariableValue(context, "test_re")
	local slip_die = ScriptLib.GetGroupVariableValue(context, "isSlipDie")
	if flag_re == 1 and slip_die == 0 then
	        ScriptLib.SetPlayerInteractOption(context, "false DisableXiaoDungeon")
	        ScriptLib.CreateGroupTimerEvent(context, 201032010, "xiao_skill_re", 1)
	        ScriptLib.ChangeGroupVariableValue(context, "test_enter_region", 1)
	elseif flag_re == 1 and slip_die == 1 then
	        ScriptLib.SetPlayerInteractOption(context, "false DisableXiaoDungeon")
	        ScriptLib.CreateGroupTimerEvent(context, 201032010, "xiao_skill_re", 1)
	        ScriptLib.SetGroupVariableValue(context, "isSlipDie", 0)
		
	        ScriptLib.ChangeGroupVariableValue(context, "test_slip_enter_region", 1)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10006(context, evt)
	-- 改变指定group组201032001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201032001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201032010的对象,请求一次调用,并将string参数："unlock_input" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201032010, "unlock_input", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "test" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "test", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_10008(context, evt)
	-- 将本组内变量名为 "isSlipDie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isSlipDie", 1, 201032010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 屏蔽战斗主界面UI模块,参数传字符串,参数内容为"bool 屏蔽ui组key"
	if 0 ~= ScriptLib.SetPlayerInteractOption(context, "false DisableXiaoDungeon") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_player_interact_option")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10009(context, evt)
	-- 屏蔽战斗主界面UI模块,参数传字符串,参数内容为"bool 屏蔽ui组key"
	if 0 ~= ScriptLib.SetPlayerInteractOption(context, "true DisableXiaoDungeon") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_player_interact_option")
		return -1
	end
	
	return 0
end