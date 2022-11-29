-- 基础信息
local base_info = {
	group_id = 133303474
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 133303474,
	collectable_sum = 13
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
	{ config_id = 474001, gadget_id = 70211111, pos = { x = -1504.556, y = 191.755, z = 3464.000 }, rot = { x = 0.000, y = 9.212, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 474002, gadget_id = 70350093, pos = { x = -1502.293, y = 191.947, z = 3466.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 474003, gadget_id = 70360001, pos = { x = -1502.293, y = 192.912, z = 3466.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 474004, gadget_id = 70290501, pos = { x = -1499.091, y = 195.652, z = 3457.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474005, gadget_id = 70290501, pos = { x = -1490.584, y = 185.228, z = 3421.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474006, gadget_id = 70290501, pos = { x = -1466.355, y = 179.054, z = 3404.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474007, gadget_id = 70290501, pos = { x = -1433.710, y = 178.171, z = 3416.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474008, gadget_id = 70290501, pos = { x = -1428.463, y = 200.222, z = 3436.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474009, gadget_id = 70290501, pos = { x = -1422.612, y = 199.617, z = 3449.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474010, gadget_id = 70290501, pos = { x = -1418.467, y = 194.891, z = 3458.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474011, gadget_id = 70290501, pos = { x = -1503.735, y = 201.774, z = 3469.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474019, gadget_id = 70220103, pos = { x = -1490.877, y = 187.102, z = 3421.697 }, rot = { x = 0.000, y = 265.528, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474020, gadget_id = 70220103, pos = { x = -1466.523, y = 180.690, z = 3404.571 }, rot = { x = 0.000, y = 265.528, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474021, gadget_id = 70220103, pos = { x = -1433.710, y = 182.607, z = 3416.642 }, rot = { x = 0.000, y = 265.528, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474022, gadget_id = 70330197, pos = { x = -1433.660, y = 175.122, z = 3416.995 }, rot = { x = 0.000, y = 153.723, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474023, gadget_id = 70330197, pos = { x = -1500.383, y = 191.676, z = 3461.338 }, rot = { x = 0.000, y = 15.779, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474024, gadget_id = 70290501, pos = { x = -1424.686, y = 199.263, z = 3479.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474025, gadget_id = 70290501, pos = { x = -1448.770, y = 203.605, z = 3490.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474026, gadget_id = 70290501, pos = { x = -1457.608, y = 206.741, z = 3482.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474027, gadget_id = 70290501, pos = { x = -1461.911, y = 215.719, z = 3472.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474028, gadget_id = 70290501, pos = { x = -1472.548, y = 208.965, z = 3471.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474029, gadget_id = 70220103, pos = { x = -1428.669, y = 202.255, z = 3436.554 }, rot = { x = 0.000, y = 265.528, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474030, gadget_id = 70220103, pos = { x = -1418.581, y = 197.998, z = 3458.581 }, rot = { x = 0.000, y = 265.528, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474031, gadget_id = 70220103, pos = { x = -1424.663, y = 201.190, z = 3479.873 }, rot = { x = 0.000, y = 265.528, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474032, gadget_id = 70220103, pos = { x = -1448.333, y = 205.731, z = 3490.650 }, rot = { x = 0.000, y = 265.528, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474033, gadget_id = 70330197, pos = { x = -1458.262, y = 205.842, z = 3479.759 }, rot = { x = 0.000, y = 203.541, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 474034, gadget_id = 70220103, pos = { x = -1503.931, y = 205.368, z = 3469.725 }, rot = { x = 0.000, y = 265.528, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 474035, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1433.660, y = 187.131, z = 3416.995 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1474012, name = "CHALLENGE_SUCCESS_474012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_474012", trigger_count = 0 },
	{ config_id = 1474013, name = "CHALLENGE_FAIL_474013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_474013", trigger_count = 0 },
	{ config_id = 1474014, name = "GADGET_STATE_CHANGE_474014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_474014", action = "action_EVENT_GADGET_STATE_CHANGE_474014", trigger_count = 0 },
	{ config_id = 1474015, name = "ANY_GADGET_DIE_474015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1474016, name = "GADGET_CREATE_474016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_474016", action = "action_EVENT_GADGET_CREATE_474016", trigger_count = 0 },
	{ config_id = 1474017, name = "SELECT_OPTION_474017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_474017", action = "action_EVENT_SELECT_OPTION_474017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1474018, name = "GROUP_LOAD_474018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_474018", trigger_count = 0 },
	{ config_id = 1474035, name = "ENTER_REGION_474035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_474035", action = "action_EVENT_ENTER_REGION_474035" }
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
		gadgets = { 474002, 474003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_474012", "CHALLENGE_FAIL_474013", "GADGET_STATE_CHANGE_474014", "ANY_GADGET_DIE_474015", "GADGET_CREATE_474016", "SELECT_OPTION_474017", "GROUP_LOAD_474018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 474004, 474005, 474006, 474007, 474008, 474009, 474010, 474011, 474019, 474020, 474021, 474022, 474023, 474024, 474025, 474026, 474027, 474028, 474029, 474030, 474031, 474032, 474033, 474034 },
		regions = { 474035 },
		triggers = { "ENTER_REGION_474035" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 474002 },
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
function action_EVENT_CHALLENGE_SUCCESS_474012(context, evt)
	-- 将configid为 474002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133303474, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303474, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为474001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 474001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_474013(context, evt)
	-- 将configid为 474002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为474003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 474003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303474, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_474014(context, evt)
	if 474002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_474014(context, evt)
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_474016(context, evt)
	if 474003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_474016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133303474, 474003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_474017(context, evt)
	-- 判断是gadgetid 474003 option_id 177
	if 474003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_474017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 474003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 474002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1499.091, y=195.6518, z=3457.435}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1499.091, y=195.6518, z=3457.435}
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
function action_EVENT_GROUP_LOAD_474018(context, evt)
	-- 将configid为 474002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 474002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为474003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 474003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303474, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_474035(context, evt)
	if evt.param1 ~= 474035 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_474035(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1427.616, y=204.7943, z=3444.817}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1427.616, y=204.7943, z=3444.817}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end