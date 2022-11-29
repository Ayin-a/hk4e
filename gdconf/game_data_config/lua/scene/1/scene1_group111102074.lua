-- 基础信息
local base_info = {
	group_id = 111102074
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
	-- 注意，填了MarkFlag=5，MarkFlag使用奇数
	{ config_id = 74005, gadget_id = 70330238, pos = { x = 1229.995, y = 323.103, z = -1911.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 5 },
	-- 注意，填了MarkFlag=5，消融柱子只是消失，物件还在
	{ config_id = 74006, gadget_id = 70290553, pos = { x = 1216.028, y = 329.751, z = -1919.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1074001, name = "GADGET_STATE_CHANGE_74001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_74001", action = "action_EVENT_GADGET_STATE_CHANGE_74001", trigger_count = 0 },
	{ config_id = 1074004, name = "GROUP_LOAD_74004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_74004", action = "action_EVENT_GROUP_LOAD_74004", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 74005, 74006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_74001", "GROUP_LOAD_74004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 74005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_74001(context, evt)
	if 74005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_74001(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=1216.028, y=335.7514, z=-1919.939}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1216.028, y=335.7514, z=-1919.939}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_74004(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102074, 74005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_74004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111102074, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end