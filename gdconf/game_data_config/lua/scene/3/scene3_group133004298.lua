-- 基础信息
local base_info = {
	group_id = 133004298
}

-- Trigger变量
local defs = {
	duration = 20,
	kill_sum = 3,
	group_id = 133004298,
	gadget_controller_id = 298003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 298008, monster_id = 20011201, pos = { x = 2455.520, y = 305.687, z = -333.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 14, drop_id = 1000100, area_id = 3 },
	{ config_id = 298009, monster_id = 20011301, pos = { x = 2450.482, y = 305.657, z = -333.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 14, drop_id = 1000100, area_id = 3 },
	{ config_id = 298010, monster_id = 20011201, pos = { x = 2453.234, y = 305.616, z = -338.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 14, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 298001, gadget_id = 70211011, pos = { x = 2453.285, y = 305.793, z = -332.384 }, rot = { x = 357.115, y = 192.408, z = 0.560 }, level = 16, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 298002, gadget_id = 70350082, pos = { x = 2452.635, y = 305.683, z = -335.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 3 },
	{ config_id = 298003, gadget_id = 70360001, pos = { x = 2452.653, y = 305.685, z = -335.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1298004, name = "CHALLENGE_SUCCESS_298004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_298004" },
	{ config_id = 1298005, name = "CHALLENGE_FAIL_298005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_298005", trigger_count = 0 },
	{ config_id = 1298006, name = "GADGET_CREATE_298006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_298006", action = "action_EVENT_GADGET_CREATE_298006", trigger_count = 0 },
	{ config_id = 1298007, name = "SELECT_OPTION_298007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_298007", action = "action_EVENT_SELECT_OPTION_298007", trigger_count = 0 }
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
		gadgets = { 298002, 298003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_298004", "CHALLENGE_FAIL_298005", "GADGET_CREATE_298006", "SELECT_OPTION_298007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 298008, 298009, 298010 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_298004(context, evt)
	-- 将configid为 298002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 298002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为298001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 298001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_298005(context, evt)
	-- 将configid为 298002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 298002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为298003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 298003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133004298, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_298006(context, evt)
	if 298003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_298006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133004298, 298003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_298007(context, evt)
	-- 判断是gadgetid 298003 option_id 177
	if 298003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_298007(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 298002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end