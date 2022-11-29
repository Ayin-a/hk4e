-- 基础信息
local base_info = {
	group_id = 201017010
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
	{ config_id = 10001, gadget_id = 70690008, pos = { x = -1.537, y = 69.508, z = 78.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10008, gadget_id = 70690010, pos = { x = -1.745, y = 25.000, z = 78.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10010, gadget_id = 70360002, pos = { x = -1.941, y = 69.504, z = 78.598 }, rot = { x = 0.000, y = 327.695, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	{ config_id = 10009, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3.112, y = 114.776, z = 77.049 } }
}

-- 触发器
triggers = {
	{ config_id = 1010005, name = "GADGET_STATE_CHANGE_10005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10005", action = "action_EVENT_GADGET_STATE_CHANGE_10005" },
	{ config_id = 1010007, name = "SELECT_OPTION_10007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10007", action = "action_EVENT_SELECT_OPTION_10007" },
	{ config_id = 1010009, name = "ENTER_REGION_10009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10009", action = "action_EVENT_ENTER_REGION_10009" }
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
		gadgets = { 10010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_10005", "SELECT_OPTION_10007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10001, 10008 },
		regions = { 10009 },
		triggers = { "ENTER_REGION_10009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10005(context, evt)
	if 10010 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201017010, 10010, {2}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10007(context, evt)
	-- 判断是gadgetid 10010 option_id 2
	if 10010 ~= evt.param1 then
		return false	
	end
	
	if 2 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017010, 2)
	
	-- 调用提示id为 101700601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 101700601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017013, 2)
	
	-- 将configid为 10010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 201017010 ；指定config：10010；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201017010, 10010, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10009(context, evt)
	if evt.param1 ~= 10009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10009(context, evt)
	-- 触发镜头注目，注目位置为坐标（-18，112，68），持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-18, y=112, z=68}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end