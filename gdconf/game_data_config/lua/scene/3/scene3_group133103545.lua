-- 基础信息
local base_info = {
	group_id = 133103545
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 3,
	group_id = 133103545,
	gadget_controller_id = 545003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 545001, monster_id = 21011001, pos = { x = 51.715, y = 216.383, z = 1179.545 }, rot = { x = 0.000, y = 3.954, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 545009, monster_id = 21010501, pos = { x = 47.342, y = 219.605, z = 1188.183 }, rot = { x = 12.416, y = 130.527, z = 5.324 }, level = 24, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 545010, monster_id = 21010901, pos = { x = 56.527, y = 214.847, z = 1186.503 }, rot = { x = 0.000, y = 223.200, z = 0.000 }, level = 24, drop_id = 1000100, disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 545002, gadget_id = 70350082, pos = { x = 51.572, y = 215.364, z = 1184.053 }, rot = { x = 7.895, y = 359.205, z = 351.962 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 545003, gadget_id = 70360001, pos = { x = 51.590, y = 216.371, z = 1184.083 }, rot = { x = 11.108, y = 358.545, z = 345.123 }, level = 24, area_id = 6 },
	{ config_id = 545004, gadget_id = 70211011, pos = { x = 51.776, y = 215.063, z = 1188.518 }, rot = { x = 358.304, y = 174.492, z = 1.063 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1545005, name = "CHALLENGE_SUCCESS_545005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_545005" },
	{ config_id = 1545006, name = "CHALLENGE_FAIL_545006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_545006", trigger_count = 0 },
	{ config_id = 1545007, name = "GADGET_CREATE_545007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_545007", action = "action_EVENT_GADGET_CREATE_545007", trigger_count = 0 },
	{ config_id = 1545008, name = "SELECT_OPTION_545008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_545008", action = "action_EVENT_SELECT_OPTION_545008", trigger_count = 0 }
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
		gadgets = { 545002, 545003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_545005", "CHALLENGE_FAIL_545006", "GADGET_CREATE_545007", "SELECT_OPTION_545008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 545001, 545009, 545010 },
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
function action_EVENT_CHALLENGE_SUCCESS_545005(context, evt)
	-- 将configid为 545002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 545002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为545004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 545004 }) then
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
function action_EVENT_CHALLENGE_FAIL_545006(context, evt)
	-- 将configid为 545002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 545002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为545003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 545003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103545, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_545007(context, evt)
	if 545003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_545007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103545, 545003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_545008(context, evt)
	-- 判断是gadgetid 545003 option_id 177
	if 545003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_545008(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 545002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end