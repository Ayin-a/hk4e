-- 基础信息
local base_info = {
	group_id = 133301543
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133301543,
	collectable_sum = 10
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
	-- 成功变201
	{ config_id = 543001, gadget_id = 70360001, pos = { x = -183.382, y = 228.540, z = 3593.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 29 },
	-- 挑战开始变201，失败或者load归0
	{ config_id = 543002, gadget_id = 70360001, pos = { x = -183.382, y = 228.540, z = 3593.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 29 },
	{ config_id = 543003, gadget_id = 70290501, pos = { x = -195.367, y = 246.843, z = 3635.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 543004, gadget_id = 70290501, pos = { x = -185.753, y = 239.957, z = 3600.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 543005, gadget_id = 70290501, pos = { x = -191.839, y = 241.456, z = 3606.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 543006, gadget_id = 70290501, pos = { x = -198.648, y = 243.627, z = 3621.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 543007, gadget_id = 70290501, pos = { x = -196.624, y = 248.825, z = 3629.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 543008, gadget_id = 70290501, pos = { x = -198.143, y = 250.714, z = 3645.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 543009, gadget_id = 70290501, pos = { x = -192.456, y = 248.080, z = 3654.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 543010, gadget_id = 70290501, pos = { x = -179.671, y = 246.118, z = 3654.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 543011, gadget_id = 70290501, pos = { x = -161.290, y = 250.354, z = 3642.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 543016, gadget_id = 70290501, pos = { x = -168.591, y = 244.555, z = 3648.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1543012, name = "CHALLENGE_SUCCESS_543012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_543012", trigger_count = 0 },
	{ config_id = 1543013, name = "CHALLENGE_FAIL_543013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_543013", trigger_count = 0 },
	{ config_id = 1543014, name = "QUEST_START_543014", event = EventType.EVENT_QUEST_START, source = "7304202", condition = "", action = "action_EVENT_QUEST_START_543014", trigger_count = 0 },
	{ config_id = 1543015, name = "ANY_GADGET_DIE_543015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1543017, name = "QUEST_START_543017", event = EventType.EVENT_QUEST_START, source = "7304202", condition = "", action = "action_EVENT_QUEST_START_543017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1543018, name = "GROUP_LOAD_543018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_543018", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 543001, 543002 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_543012", "CHALLENGE_FAIL_543013", "QUEST_START_543014", "ANY_GADGET_DIE_543015", "QUEST_START_543017", "GROUP_LOAD_543018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 543003, 543004, 543005, 543006, 543007, 543008, 543009, 543010, 543011, 543016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_543012(context, evt)
	-- 将configid为 543001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 543001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133301543, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301543, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_543013(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301543, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 543002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 543002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_543014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 271, defs.duration, 2, 218, defs.collectable_sum) then
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

-- 触发操作
function action_EVENT_QUEST_START_543017(context, evt)
	-- 触发镜头注目，注目位置为坐标（-199，245，3624），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-199, y=245, z=3624}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 543002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 543002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_543018(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301543, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 543002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 543002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end