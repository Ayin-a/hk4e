-- 基础信息
local base_info = {
	group_id = 133222250
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133222250,
	collectable_sum = 8
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
	{ config_id = 250001, gadget_id = 70211111, pos = { x = -4336.861, y = 238.127, z = -4224.128 }, rot = { x = 3.891, y = 53.497, z = 6.343 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 250002, gadget_id = 70350093, pos = { x = -4272.275, y = 211.199, z = -4251.857 }, rot = { x = 0.000, y = 247.614, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 250003, gadget_id = 70360001, pos = { x = -4272.272, y = 212.146, z = -4251.855 }, rot = { x = 0.000, y = 233.248, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 250004, gadget_id = 70290150, pos = { x = -4277.389, y = 216.842, z = -4255.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 250005, gadget_id = 70290150, pos = { x = -4281.950, y = 220.308, z = -4258.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 250006, gadget_id = 70290150, pos = { x = -4295.889, y = 224.824, z = -4252.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 250007, gadget_id = 70290150, pos = { x = -4306.641, y = 222.768, z = -4246.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 250008, gadget_id = 70290150, pos = { x = -4306.561, y = 233.366, z = -4221.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 250009, gadget_id = 70290150, pos = { x = -4316.493, y = 241.118, z = -4212.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 250010, gadget_id = 70290150, pos = { x = -4324.901, y = 248.202, z = -4216.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 250011, gadget_id = 70290150, pos = { x = -4334.906, y = 239.855, z = -4223.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 250019, gadget_id = 70900380, pos = { x = -4307.298, y = 226.380, z = -4237.670 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 250020, gadget_id = 70900380, pos = { x = -4307.067, y = 230.419, z = -4231.101 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1250012, name = "CHALLENGE_SUCCESS_250012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_250012", trigger_count = 0 },
	{ config_id = 1250013, name = "CHALLENGE_FAIL_250013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_250013", trigger_count = 0 },
	{ config_id = 1250014, name = "GADGET_STATE_CHANGE_250014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_250014", action = "action_EVENT_GADGET_STATE_CHANGE_250014", trigger_count = 0 },
	{ config_id = 1250015, name = "ANY_GADGET_DIE_250015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1250016, name = "GADGET_CREATE_250016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_250016", action = "action_EVENT_GADGET_CREATE_250016", trigger_count = 0 },
	{ config_id = 1250017, name = "SELECT_OPTION_250017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_250017", action = "action_EVENT_SELECT_OPTION_250017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1250018, name = "GROUP_LOAD_250018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_250018", trigger_count = 0 }
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
		gadgets = { 250002, 250003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_250012", "CHALLENGE_FAIL_250013", "GADGET_STATE_CHANGE_250014", "ANY_GADGET_DIE_250015", "GADGET_CREATE_250016", "SELECT_OPTION_250017", "GROUP_LOAD_250018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 250004, 250005, 250006, 250007, 250008, 250009, 250010, 250011, 250019, 250020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 250002 },
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
function action_EVENT_CHALLENGE_SUCCESS_250012(context, evt)
	-- 将configid为 250002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133222250, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133222250, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为250001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_250013(context, evt)
	-- 将configid为 250002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为250003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222250, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_250014(context, evt)
	if 250002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_250014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_250016(context, evt)
	if 250003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_250016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222250, 250003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_250017(context, evt)
	-- 判断是gadgetid 250003 option_id 177
	if 250003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_250017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 250003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 250002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-4277.389，216.8421，-4255.376），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4277.389, y=216.8421, z=-4255.376}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_250018(context, evt)
	-- 将configid为 250002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 250002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为250003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 250003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222250, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"