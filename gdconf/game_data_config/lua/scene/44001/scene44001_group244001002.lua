-- 基础信息
local base_info = {
	group_id = 244001002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 22010301, pos = { x = 0.581, y = 1.071, z = -44.015 }, rot = { x = 0.000, y = 50.078, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 }, pose_id = 9013 },
	{ config_id = 2002, monster_id = 21020201, pos = { x = 13.828, y = 1.052, z = -36.609 }, rot = { x = 0.000, y = 336.626, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 }, pose_id = 401 },
	{ config_id = 2003, monster_id = 21030401, pos = { x = 3.437, y = 1.064, z = -45.772 }, rot = { x = 0.000, y = 337.482, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 }, pose_id = 9012 },
	{ config_id = 2004, monster_id = 21011201, pos = { x = 4.686, y = 1.005, z = -42.864 }, rot = { x = 0.000, y = 262.052, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 }, pose_id = 9012 },
	{ config_id = 2010, monster_id = 21011001, pos = { x = 6.440, y = 1.007, z = -41.539 }, rot = { x = 0.000, y = 331.116, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 }, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2005, gadget_id = 70360002, pos = { x = 41.918, y = 8.997, z = -49.751 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 2009, gadget_id = 70690012, pos = { x = -2.059, y = -5.774, z = -47.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002006, name = "GADGET_STATE_CHANGE_2006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2006", action = "action_EVENT_GADGET_STATE_CHANGE_2006" },
	{ config_id = 1002007, name = "SELECT_OPTION_2007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2007", action = "action_EVENT_SELECT_OPTION_2007" },
	{ config_id = 1002008, name = "ANY_MONSTER_DIE_2008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2008", action = "action_EVENT_ANY_MONSTER_DIE_2008" }
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
		monsters = { 2001, 2002, 2003, 2004, 2010 },
		gadgets = { 2005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2006", "SELECT_OPTION_2007", "ANY_MONSTER_DIE_2008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2009 },
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
	if 2005 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 244001002, 2005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2007(context, evt)
	-- 判断是gadgetid 2005 option_id 7
	if 2005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2007(context, evt)
	-- 删除指定group： 244001002 ；指定config：2005；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244001002, 2005, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 2005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（122，59，-22），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=122, y=59, z=-22}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244001003, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 244001006, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244001006, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 244001002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2008(context, evt)
	-- 将configid为 2005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244001002, 2)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244001006, 4)
	
	return 0
end