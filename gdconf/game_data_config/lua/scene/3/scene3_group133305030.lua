-- 基础信息
local base_info = {
	group_id = 133305030
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
	{ config_id = 30001, gadget_id = 70330392, pos = { x = -2356.861, y = 382.796, z = 3968.060 }, rot = { x = 90.000, y = 263.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30002, gadget_id = 70330392, pos = { x = -2358.003, y = 382.796, z = 3977.943 }, rot = { x = 90.000, y = 263.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30003, gadget_id = 70211112, pos = { x = -2347.837, y = 385.040, z = 3973.703 }, rot = { x = 0.605, y = 318.336, z = 358.863 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 30004, gadget_id = 70330392, pos = { x = -2342.808, y = 398.111, z = 3979.757 }, rot = { x = 0.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30005, gadget_id = 70330392, pos = { x = -2341.678, y = 398.111, z = 3969.857 }, rot = { x = 0.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30006, gadget_id = 70330392, pos = { x = -2353.227, y = 382.812, z = 3983.207 }, rot = { x = 90.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30007, gadget_id = 70330392, pos = { x = -2343.329, y = 382.810, z = 3984.367 }, rot = { x = 90.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30008, gadget_id = 70330392, pos = { x = -2337.533, y = 382.796, z = 3980.325 }, rot = { x = 90.000, y = 263.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30009, gadget_id = 70330392, pos = { x = -2336.393, y = 382.796, z = 3970.441 }, rot = { x = 90.000, y = 263.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30010, gadget_id = 70330392, pos = { x = -2341.145, y = 382.796, z = 3965.179 }, rot = { x = 90.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30011, gadget_id = 70330392, pos = { x = -2351.081, y = 382.796, z = 3964.033 }, rot = { x = 90.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30012, gadget_id = 70330392, pos = { x = -2352.782, y = 398.111, z = 3978.637 }, rot = { x = 0.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30013, gadget_id = 70330392, pos = { x = -2351.657, y = 398.111, z = 3968.721 }, rot = { x = 0.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30014, gadget_id = 70330392, pos = { x = -2353.227, y = 392.774, z = 3983.207 }, rot = { x = 90.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30015, gadget_id = 70330392, pos = { x = -2343.329, y = 388.146, z = 3984.367 }, rot = { x = 0.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30016, gadget_id = 70330392, pos = { x = -2337.533, y = 392.759, z = 3980.325 }, rot = { x = 90.000, y = 263.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30017, gadget_id = 70330392, pos = { x = -2336.393, y = 392.759, z = 3970.441 }, rot = { x = 90.000, y = 263.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30018, gadget_id = 70330392, pos = { x = -2341.145, y = 392.759, z = 3965.179 }, rot = { x = 90.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30019, gadget_id = 70330392, pos = { x = -2351.081, y = 392.759, z = 3964.033 }, rot = { x = 90.000, y = 353.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30020, gadget_id = 70330392, pos = { x = -2358.003, y = 392.759, z = 3977.943 }, rot = { x = 90.000, y = 263.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30021, gadget_id = 70330392, pos = { x = -2356.861, y = 392.759, z = 3968.060 }, rot = { x = 90.000, y = 263.414, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 30023, gadget_id = 70330404, pos = { x = -2332.501, y = 384.426, z = 3975.053 }, rot = { x = 3.619, y = 353.937, z = 356.150 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 30025, gadget_id = 70220103, pos = { x = -2343.983, y = 390.966, z = 3987.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 30029, gadget_id = 70220103, pos = { x = -2326.195, y = 376.987, z = 4025.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 30030, gadget_id = 70220103, pos = { x = -2336.229, y = 384.348, z = 4004.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 30022, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2348.071, y = 384.980, z = 3973.183 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1030022, name = "ENTER_REGION_30022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30022", action = "action_EVENT_ENTER_REGION_30022", trigger_count = 0 },
	{ config_id = 1030024, name = "GADGET_STATE_CHANGE_30024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_30024", action = "action_EVENT_GADGET_STATE_CHANGE_30024" },
	{ config_id = 1030026, name = "GADGET_STATE_CHANGE_30026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_30026", action = "action_EVENT_GADGET_STATE_CHANGE_30026" },
	{ config_id = 1030027, name = "GADGET_CREATE_30027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_30027", trigger_count = 0 },
	-- 保底
	{ config_id = 1030028, name = "GROUP_LOAD_30028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_30028", action = "action_EVENT_GROUP_LOAD_30028", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true }
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
		gadgets = { 30001, 30002, 30003, 30004, 30005, 30006, 30007, 30008, 30009, 30010, 30011, 30012, 30013, 30014, 30015, 30016, 30017, 30018, 30019, 30020, 30021, 30023 },
		regions = { 30022 },
		triggers = { "ENTER_REGION_30022", "GADGET_STATE_CHANGE_30024", "GADGET_STATE_CHANGE_30026", "GROUP_LOAD_30028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 30025, 30029, 30030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 30023 },
		regions = { },
		triggers = { "GADGET_CREATE_30027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 30001, 30002, 30004, 30005, 30006, 30007, 30008, 30009, 30010, 30011, 30012, 30013, 30014, 30015, 30016, 30017, 30018, 30019, 30020, 30021, 30025, 30029, 30030 },
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
function condition_EVENT_ENTER_REGION_30022(context, evt)
	if evt.param1 ~= 30022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30022(context, evt)
	-- 将configid为 30003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_30024(context, evt)
	-- 检测config_id为30023的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 30023 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_30024(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133305030, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-2343.983, y=390.9656, z=3987.364}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2343.983, y=390.9656, z=3987.364}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_30026(context, evt)
	if 30003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_30026(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133305030, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133305030, 4)
	
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 30023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_30027(context, evt)
	-- 改变指定group组133305030中， configid为30023的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133305030, 30023, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_30028(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133305030, 30023) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_30028(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133305030, 2)
	
	return 0
end