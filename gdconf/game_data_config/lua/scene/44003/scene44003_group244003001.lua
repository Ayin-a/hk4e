-- 基础信息
local base_info = {
	group_id = 244003001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010901, pos = { x = -170.801, y = 21.585, z = 38.212 }, rot = { x = 0.000, y = 61.722, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 1002, monster_id = 21010901, pos = { x = -171.195, y = 21.591, z = 47.821 }, rot = { x = 0.000, y = 127.513, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 1003, monster_id = 21030501, pos = { x = -167.108, y = 21.552, z = 36.907 }, rot = { x = 0.000, y = 89.524, z = 0.000 }, level = 1, affix = { 4116 }, pose_id = 9012 },
	{ config_id = 1004, monster_id = 21020601, pos = { x = -166.048, y = 21.552, z = 34.956 }, rot = { x = 0.000, y = 21.990, z = 0.000 }, level = 1, affix = { 4116 }, pose_id = 401 },
	{ config_id = 1005, monster_id = 21011401, pos = { x = -165.916, y = 21.552, z = 39.131 }, rot = { x = 0.000, y = 174.471, z = 0.000 }, level = 1, affix = { 4116 }, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1006, gadget_id = 70900007, pos = { x = -170.691, y = 21.552, z = 43.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, is_guest_can_operate = true },
	{ config_id = 1007, gadget_id = 70350005, pos = { x = -184.134, y = 21.488, z = 43.005 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001008, name = "ANY_MONSTER_DIE_1008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1008", action = "action_EVENT_ANY_MONSTER_DIE_1008" },
	{ config_id = 1001009, name = "GADGET_STATE_CHANGE_1009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1009", action = "action_EVENT_GADGET_STATE_CHANGE_1009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isDead", value = 0, no_refresh = false }
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
		monsters = { 1001, 1002, 1003, 1004, 1005 },
		gadgets = { 1006, 1007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1008", "GADGET_STATE_CHANGE_1009" },
		rand_weight = 1
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1008(context, evt)
	-- 将configid为 1006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-170，21，43），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-170, y=21, z=43}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1009(context, evt)
	if 1006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1009(context, evt)
	-- 将configid为 1007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 244003008, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244003008, 3)
	
	return 0
end