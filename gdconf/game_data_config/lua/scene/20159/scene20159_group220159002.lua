-- 基础信息
local base_info = {
	group_id = 220159002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2008, monster_id = 26120301, pos = { x = 465.004, y = 68.556, z = 494.495 }, rot = { x = 0.000, y = 332.952, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 2009, monster_id = 26090501, pos = { x = 456.933, y = 68.552, z = 498.073 }, rot = { x = 0.000, y = 93.584, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 2010, monster_id = 26090501, pos = { x = 466.494, y = 68.552, z = 501.272 }, rot = { x = 0.000, y = 244.686, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 2011, monster_id = 26090201, pos = { x = 459.908, y = 68.555, z = 503.169 }, rot = { x = 0.000, y = 146.619, z = 0.000 }, level = 1, pose_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70290519, pos = { x = 462.143, y = 68.552, z = 498.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2002, gadget_id = 70290577, pos = { x = 464.989, y = 68.495, z = 477.348 }, rot = { x = 6.047, y = 0.630, z = 359.277 }, level = 1 },
	{ config_id = 2003, gadget_id = 70290520, pos = { x = 466.419, y = 77.749, z = 474.167 }, rot = { x = 0.000, y = 140.000, z = 20.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70290520, pos = { x = 461.980, y = 79.730, z = 472.154 }, rot = { x = 0.000, y = 20.000, z = 335.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70290520, pos = { x = 457.182, y = 81.968, z = 473.307 }, rot = { x = 8.013, y = 344.112, z = 330.993 }, level = 1 },
	{ config_id = 2012, gadget_id = 70290485, pos = { x = 462.475, y = 69.322, z = 498.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, gadget_id = 70900201, pos = { x = 461.970, y = 71.295, z = 498.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70900201, pos = { x = 448.964, y = 86.281, z = 479.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002006, name = "GADGET_STATE_CHANGE_2006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2006", action = "action_EVENT_GADGET_STATE_CHANGE_2006" },
	{ config_id = 1002007, name = "ANY_MONSTER_DIE_2007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2007", action = "action_EVENT_ANY_MONSTER_DIE_2007" }
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
		-- description = ,
		monsters = { 2008, 2009, 2010, 2011 },
		gadgets = { 2001, 2002, 2012, 2013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2006", "ANY_MONSTER_DIE_2007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2003, 2004, 2005, 2014 },
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
function condition_EVENT_GADGET_STATE_CHANGE_2006(context, evt)
	if 2001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220159002, 2)
	
	-- 触发镜头注目，注目位置为坐标（466.019，78.74237，475.2052），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=466.019, y=78.74237, z=475.2052}
	  local pos_follow = {x=0.5, y=1, z=2}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = true,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220159002, EntityType.GADGET, 2013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220159002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2007(context, evt)
	-- 将configid为 2012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end