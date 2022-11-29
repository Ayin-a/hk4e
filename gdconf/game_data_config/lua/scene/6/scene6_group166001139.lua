-- 基础信息
local base_info = {
	group_id = 166001139
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
	{ config_id = 139001, gadget_id = 70290291, pos = { x = 716.688, y = 395.261, z = 649.362 }, rot = { x = 0.000, y = 183.000, z = 0.000 }, level = 32, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 139002, shape = RegionShape.POLYGON, pos = { x = 716.010, y = 406.212, z = 650.524 }, height = 29.024, point_array = { { x = 712.354, y = 665.520 }, { x = 711.033, y = 655.887 }, { x = 711.068, y = 636.561 }, { x = 720.986, y = 635.528 }, { x = 719.758, y = 664.616 } }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1139002, name = "ENTER_REGION_139002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_139002", action = "action_EVENT_ENTER_REGION_139002" },
	{ config_id = 1139004, name = "GROUP_LOAD_139004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_139004", action = "action_EVENT_GROUP_LOAD_139004", trigger_count = 0 },
	{ config_id = 1139005, name = "TIME_AXIS_PASS_139005", event = EventType.EVENT_TIME_AXIS_PASS, source = "door", condition = "condition_EVENT_TIME_AXIS_PASS_139005", action = "action_EVENT_TIME_AXIS_PASS_139005" }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 139003, monster_id = 22070201, pos = { x = 716.692, y = 395.553, z = 650.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, isOneoff = true, pose_id = 101, area_id = 300 }
	}
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
		gadgets = { 139001 },
		regions = { 139002 },
		triggers = { "ENTER_REGION_139002", "GROUP_LOAD_139004", "TIME_AXIS_PASS_139005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_139002(context, evt)
	if evt.param1 ~= 139002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_139002(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 139001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（716.688，397，649.3619），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=716.688, y=397, z=649.3619}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建标识为"door"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "door", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_139004(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_139004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001139, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_139005(context, evt)
	if "door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_139005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001139, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end