-- 基础信息
local base_info = {
	group_id = 244003004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21020601, pos = { x = -210.521, y = 25.256, z = 165.775 }, rot = { x = 0.000, y = 68.515, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 4002, monster_id = 21020601, pos = { x = -211.401, y = 25.350, z = 176.538 }, rot = { x = 0.000, y = 105.581, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 4003, monster_id = 22010201, pos = { x = -215.425, y = 25.275, z = 171.131 }, rot = { x = 0.000, y = 89.775, z = 0.000 }, level = 1, affix = { 4116, 6107 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4004, gadget_id = 70350025, pos = { x = -256.950, y = 31.448, z = 171.555 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, gadget_id = 70360002, pos = { x = -230.574, y = 27.821, z = 171.355 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true }
}

-- 区域
regions = {
	{ config_id = 4006, shape = RegionShape.CUBIC, size = { x = 5.000, y = 20.000, z = 40.000 }, pos = { x = -203.876, y = 33.621, z = 171.412 } }
}

-- 触发器
triggers = {
	{ config_id = 1004006, name = "ENTER_REGION_4006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4006", action = "action_EVENT_ENTER_REGION_4006", forbid_guest = false },
	{ config_id = 1004007, name = "GADGET_STATE_CHANGE_4007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4007", action = "action_EVENT_GADGET_STATE_CHANGE_4007" },
	{ config_id = 1004008, name = "ANY_MONSTER_DIE_4008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4008", action = "action_EVENT_ANY_MONSTER_DIE_4008" },
	{ config_id = 1004009, name = "SELECT_OPTION_4009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4009", action = "action_EVENT_SELECT_OPTION_4009", forbid_guest = false }
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
		monsters = { },
		gadgets = { 4004, 4005 },
		regions = { 4006 },
		triggers = { "ENTER_REGION_4006", "GADGET_STATE_CHANGE_4007", "ANY_MONSTER_DIE_4008", "SELECT_OPTION_4009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4001, 4002, 4003 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_4006(context, evt)
	if evt.param1 ~= 4006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4006(context, evt)
	-- 将configid为 4005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4007(context, evt)
	if 4005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244003004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	-- 将configid为 4005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 244003004, 4005, {214}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-230，27，171），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-230, y=27, z=171}
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
function condition_EVENT_SELECT_OPTION_4009(context, evt)
	-- 判断是gadgetid 4005 option_id 214
	if 4005 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4009(context, evt)
	-- 删除指定group： 244003004 ；指定config：4005；物件身上指定option：214；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244003004, 4005, 214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 4005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 244003008, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244003008, 6)
	
	return 0
end