-- 基础信息
local base_info = {
	group_id = 133103499
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 5,
	group_id = 133103499,
	gadget_controller_id = 499003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499001, monster_id = 21010601, pos = { x = 94.551, y = 198.791, z = 1405.988 }, rot = { x = 0.000, y = 125.770, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 499010, monster_id = 21010501, pos = { x = 101.227, y = 198.744, z = 1407.247 }, rot = { x = 0.000, y = 172.560, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 499011, monster_id = 20011301, pos = { x = 109.437, y = 198.744, z = 1401.951 }, rot = { x = 0.000, y = 252.400, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 499012, monster_id = 21010501, pos = { x = 97.684, y = 198.791, z = 1393.854 }, rot = { x = 0.000, y = 11.300, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 499013, monster_id = 20011301, pos = { x = 103.296, y = 198.744, z = 1405.108 }, rot = { x = 0.000, y = 155.360, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499002, gadget_id = 70350082, pos = { x = 94.389, y = 198.791, z = 1401.652 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 499003, gadget_id = 70360001, pos = { x = 94.389, y = 198.791, z = 1401.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 499009, gadget_id = 70360061, pos = { x = 111.919, y = 198.877, z = 1396.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 499014, gadget_id = 70350004, pos = { x = 105.537, y = 198.312, z = 1389.486 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 499015, gadget_id = 70350004, pos = { x = 99.918, y = 198.312, z = 1389.486 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 499016, gadget_id = 70211011, pos = { x = 103.814, y = 198.744, z = 1402.552 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1499004, name = "GADGET_STATE_CHANGE_499004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_499004", action = "action_EVENT_GADGET_STATE_CHANGE_499004" },
	{ config_id = 1499005, name = "CHALLENGE_SUCCESS_499005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_499005" },
	{ config_id = 1499006, name = "CHALLENGE_FAIL_499006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_499006", trigger_count = 0 },
	{ config_id = 1499007, name = "GADGET_CREATE_499007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_499007", action = "action_EVENT_GADGET_CREATE_499007", trigger_count = 0 },
	{ config_id = 1499008, name = "SELECT_OPTION_499008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_499008", action = "action_EVENT_SELECT_OPTION_499008", trigger_count = 0 }
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
		gadgets = { 499002, 499003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_499004", "CHALLENGE_SUCCESS_499005", "CHALLENGE_FAIL_499006", "GADGET_CREATE_499007", "SELECT_OPTION_499008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 499001, 499010, 499011, 499012, 499013 },
		gadgets = { 499009, 499014, 499015 },
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
function condition_EVENT_GADGET_STATE_CHANGE_499004(context, evt)
	if 499002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_499004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_499005(context, evt)
	-- 将configid为 499002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 改变指定group组133103497中， configid为497032的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103497, 497032, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133103497中， configid为497011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103497, 497011, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103499, EntityType.GADGET, 499009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 499014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 499015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为499016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 499016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_499006(context, evt)
	-- 将configid为 499002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为499003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 499003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103499, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103499, suite = 1 }) then
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
function condition_EVENT_GADGET_CREATE_499007(context, evt)
	if 499003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_499007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103499, 499003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_499008(context, evt)
	-- 判断是gadgetid 499003 option_id 177
	if 499003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_499008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end