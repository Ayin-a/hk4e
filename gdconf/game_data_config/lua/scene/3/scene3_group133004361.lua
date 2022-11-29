-- 基础信息
local base_info = {
	group_id = 133004361
}

-- Trigger变量
local defs = {
	duration = 20,
	group_id = 133004361
}

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
	{ config_id = 361001, gadget_id = 70211111, pos = { x = 2409.109, y = 293.407, z = -368.987 }, rot = { x = 4.378, y = 284.939, z = 358.336 }, level = 11, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 361002, gadget_id = 70350083, pos = { x = 2254.021, y = 297.944, z = -365.241 }, rot = { x = 4.098, y = 178.419, z = 353.406 }, level = 15, persistent = true, area_id = 3 },
	{ config_id = 361003, gadget_id = 70360001, pos = { x = 2253.821, y = 298.894, z = -365.251 }, rot = { x = 0.000, y = 178.655, z = 0.000 }, level = 15, persistent = true, area_id = 3 },
	{ config_id = 361004, gadget_id = 70690001, pos = { x = 2261.691, y = 298.089, z = -364.300 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 361011, gadget_id = 70690001, pos = { x = 2291.691, y = 298.089, z = -354.300 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 361012, gadget_id = 70690001, pos = { x = 2321.691, y = 298.089, z = -364.300 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 361013, gadget_id = 70690001, pos = { x = 2351.691, y = 298.089, z = -354.300 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 15, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1361005, name = "CHALLENGE_SUCCESS_361005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_361005" },
	{ config_id = 1361006, name = "CHALLENGE_FAIL_361006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_361006", trigger_count = 0 },
	{ config_id = 1361007, name = "GADGET_STATE_CHANGE_361007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_361007", action = "action_EVENT_GADGET_STATE_CHANGE_361007", trigger_count = 0 },
	{ config_id = 1361008, name = "GADGET_STATE_CHANGE_361008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_361008", action = "", tag = "202" },
	{ config_id = 1361009, name = "GADGET_CREATE_361009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_361009", action = "action_EVENT_GADGET_CREATE_361009", trigger_count = 0 },
	{ config_id = 1361010, name = "SELECT_OPTION_361010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_361010", action = "action_EVENT_SELECT_OPTION_361010", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 361002, 361003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_361005", "CHALLENGE_FAIL_361006", "GADGET_STATE_CHANGE_361007", "GADGET_STATE_CHANGE_361008", "GADGET_CREATE_361009", "SELECT_OPTION_361010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 361001, 361004, 361011, 361012, 361013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 361002 },
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
function action_EVENT_CHALLENGE_SUCCESS_361005(context, evt)
	-- 将configid为 361002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 361002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133004361, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004361, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_361006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133004361, 2)
	
	-- 将configid为 361002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 361002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为361003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 361003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_361007(context, evt)
	if 361002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_361007(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_361008(context, evt)
	if 361001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_361009(context, evt)
	if 361003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_361009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133004361, 361003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_361010(context, evt)
	-- 判断是gadgetid 361003 option_id 177
	if 361003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_361010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 361003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 361002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 361002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end