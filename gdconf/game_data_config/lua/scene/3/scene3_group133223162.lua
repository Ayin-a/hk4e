-- 基础信息
local base_info = {
	group_id = 133223162
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133223162,
	collectable_sum = 6
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
	{ config_id = 162001, gadget_id = 70211111, pos = { x = -6056.414, y = 210.834, z = -3302.080 }, rot = { x = 18.696, y = 336.256, z = 351.505 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 162002, gadget_id = 70350093, pos = { x = -6123.906, y = 201.264, z = -3313.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 162003, gadget_id = 70360001, pos = { x = -6123.906, y = 202.229, z = -3313.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 18 },
	{ config_id = 162006, gadget_id = 70290150, pos = { x = -6117.038, y = 210.485, z = -3311.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 162007, gadget_id = 70290150, pos = { x = -6116.343, y = 212.891, z = -3298.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 162008, gadget_id = 70290150, pos = { x = -6100.457, y = 226.059, z = -3277.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 162009, gadget_id = 70290150, pos = { x = -6081.299, y = 221.989, z = -3280.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 162010, gadget_id = 70290150, pos = { x = -6070.956, y = 217.376, z = -3290.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 162011, gadget_id = 70290150, pos = { x = -6056.369, y = 218.806, z = -3300.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 18 },
	{ config_id = 162018, gadget_id = 70900380, pos = { x = -6121.787, y = 206.891, z = -3314.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 162019, gadget_id = 70900380, pos = { x = -6116.142, y = 211.701, z = -3304.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 162020, gadget_id = 70900380, pos = { x = -6117.671, y = 216.910, z = -3290.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 162021, gadget_id = 70900380, pos = { x = -6110.486, y = 224.232, z = -3281.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 162022, gadget_id = 70900380, pos = { x = -6088.767, y = 225.846, z = -3276.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 162023, gadget_id = 70900380, pos = { x = -6075.581, y = 217.898, z = -3285.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 162024, gadget_id = 70900380, pos = { x = -6063.688, y = 216.343, z = -3293.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1162004, name = "GROUP_LOAD_162004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_162004", trigger_count = 0 },
	{ config_id = 1162012, name = "CHALLENGE_SUCCESS_162012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_162012", trigger_count = 0 },
	{ config_id = 1162013, name = "CHALLENGE_FAIL_162013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_162013", trigger_count = 0 },
	{ config_id = 1162014, name = "GADGET_STATE_CHANGE_162014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_162014", action = "action_EVENT_GADGET_STATE_CHANGE_162014", trigger_count = 0 },
	{ config_id = 1162015, name = "ANY_GADGET_DIE_162015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1162016, name = "GADGET_CREATE_162016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_162016", action = "action_EVENT_GADGET_CREATE_162016", trigger_count = 0 },
	{ config_id = 1162017, name = "SELECT_OPTION_162017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_162017", action = "action_EVENT_SELECT_OPTION_162017", trigger_count = 0 }
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
		gadgets = { 162002, 162003 },
		regions = { },
		triggers = { "GROUP_LOAD_162004", "CHALLENGE_SUCCESS_162012", "CHALLENGE_FAIL_162013", "GADGET_STATE_CHANGE_162014", "ANY_GADGET_DIE_162015", "GADGET_CREATE_162016", "SELECT_OPTION_162017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 162006, 162007, 162008, 162009, 162010, 162011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 162002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 飞雷核Suit,
		monsters = { },
		gadgets = { 162018, 162019, 162020, 162021, 162022, 162023, 162024 },
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
function action_EVENT_GROUP_LOAD_162004(context, evt)
	-- 将configid为 162002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为162003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 162003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223162, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_162012(context, evt)
	-- 将configid为 162002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133223162, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133223162, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133223162, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为162001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 162001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_162013(context, evt)
	-- 将configid为 162002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为162003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 162003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223162, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223162, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_162014(context, evt)
	if 162002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_162014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_162016(context, evt)
	if 162003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_162016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223162, 162003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_162017(context, evt)
	-- 判断是gadgetid 162003 option_id 177
	if 162003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_162017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 162003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 162002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-6117.038，209.8547，-3310.625），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6117.038, y=209.8547, z=-3310.625}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V2_0/ElectricCore"