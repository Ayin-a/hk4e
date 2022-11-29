-- 基础信息
local base_info = {
	group_id = 133103500
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 5,
	group_id = 133103500,
	gadget_controller_id = 500003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 500001, monster_id = 21010901, pos = { x = 97.041, y = 206.221, z = 1398.110 }, rot = { x = 0.000, y = 41.310, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 500011, monster_id = 21010901, pos = { x = 103.514, y = 206.265, z = 1394.109 }, rot = { x = 0.000, y = 356.310, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 500012, monster_id = 22010301, pos = { x = 108.615, y = 206.221, z = 1401.403 }, rot = { x = 0.000, y = 297.300, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 500014, monster_id = 20011101, pos = { x = 97.052, y = 206.221, z = 1404.623 }, rot = { x = 0.000, y = 72.470, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 500015, monster_id = 20010901, pos = { x = 106.438, y = 206.221, z = 1397.986 }, rot = { x = 0.000, y = 327.650, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 500002, gadget_id = 70350082, pos = { x = 111.130, y = 206.265, z = 1400.891 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 500003, gadget_id = 70360001, pos = { x = 111.130, y = 206.265, z = 1400.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 500009, gadget_id = 70211011, pos = { x = 102.058, y = 206.221, z = 1401.069 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 500010, gadget_id = 70360060, pos = { x = 97.673, y = 206.265, z = 1394.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 500013, gadget_id = 70350004, pos = { x = 100.073, y = 206.008, z = 1412.563 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 500016, gadget_id = 70350004, pos = { x = 105.650, y = 206.008, z = 1412.563 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1500004, name = "GADGET_STATE_CHANGE_500004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_500004", action = "action_EVENT_GADGET_STATE_CHANGE_500004" },
	{ config_id = 1500005, name = "CHALLENGE_SUCCESS_500005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_500005" },
	{ config_id = 1500006, name = "CHALLENGE_FAIL_500006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_500006", trigger_count = 0 },
	{ config_id = 1500007, name = "GADGET_CREATE_500007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_500007", action = "action_EVENT_GADGET_CREATE_500007", trigger_count = 0 },
	{ config_id = 1500008, name = "SELECT_OPTION_500008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_500008", action = "action_EVENT_SELECT_OPTION_500008", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 500002, 500003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_500004", "CHALLENGE_SUCCESS_500005", "CHALLENGE_FAIL_500006", "GADGET_CREATE_500007", "SELECT_OPTION_500008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 500001, 500011, 500012, 500014, 500015 },
		gadgets = { 500010, 500013, 500016 },
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
function condition_EVENT_GADGET_STATE_CHANGE_500004(context, evt)
	if 500002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_500004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_500005(context, evt)
	-- 将configid为 500002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 500013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 500016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103500, EntityType.GADGET, 500010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Puzzle_Flag_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Puzzle_Flag_1", 1, 133103540) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为500009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 500009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组133103540中， configid为540002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103540, 540002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_500006(context, evt)
	-- 将configid为 500002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为500003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 500003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103500, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103500, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_500007(context, evt)
	if 500003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_500007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103500, 500003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_500008(context, evt)
	-- 判断是gadgetid 500003 option_id 177
	if 500003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_500008(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end