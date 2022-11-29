-- 基础信息
local base_info = {
	group_id = 133217278
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133217278,
	collectable_sum = 11
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
	{ config_id = 278001, gadget_id = 70211111, pos = { x = -4440.390, y = 200.478, z = -3664.511 }, rot = { x = 0.507, y = 288.424, z = 350.541 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 278002, gadget_id = 70350093, pos = { x = -4521.456, y = 203.696, z = -3745.107 }, rot = { x = 359.473, y = 194.728, z = 1.786 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 278003, gadget_id = 70360001, pos = { x = -4521.442, y = 204.530, z = -3745.128 }, rot = { x = 358.421, y = 301.883, z = 0.695 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 278004, gadget_id = 70290150, pos = { x = -4519.530, y = 204.393, z = -3737.112 }, rot = { x = 4.652, y = 253.953, z = 359.777 }, level = 30, area_id = 14 },
	{ config_id = 278005, gadget_id = 70290150, pos = { x = -4514.854, y = 204.626, z = -3730.228 }, rot = { x = 1.768, y = 186.901, z = 358.385 }, level = 30, area_id = 14 },
	{ config_id = 278006, gadget_id = 70290150, pos = { x = -4507.871, y = 201.827, z = -3722.440 }, rot = { x = 359.750, y = 222.404, z = 358.829 }, level = 30, area_id = 14 },
	{ config_id = 278007, gadget_id = 70290150, pos = { x = -4498.419, y = 203.765, z = -3717.687 }, rot = { x = 358.878, y = 212.232, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278008, gadget_id = 70290150, pos = { x = -4491.796, y = 202.713, z = -3706.192 }, rot = { x = 0.000, y = 175.014, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278009, gadget_id = 70290150, pos = { x = -4476.634, y = 203.994, z = -3697.315 }, rot = { x = 0.000, y = 230.948, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278010, gadget_id = 70290150, pos = { x = -4460.341, y = 220.422, z = -3682.685 }, rot = { x = 0.740, y = 235.819, z = 0.323 }, level = 30, area_id = 14 },
	{ config_id = 278011, gadget_id = 70290150, pos = { x = -4450.802, y = 233.135, z = -3674.524 }, rot = { x = 1.535, y = 228.319, z = 0.443 }, level = 30, area_id = 14 },
	{ config_id = 278012, gadget_id = 70290150, pos = { x = -4445.409, y = 208.672, z = -3662.741 }, rot = { x = 0.000, y = 346.012, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278013, gadget_id = 70290150, pos = { x = -4445.409, y = 215.270, z = -3662.741 }, rot = { x = 0.000, y = 346.012, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278014, gadget_id = 70290150, pos = { x = -4445.409, y = 221.923, z = -3662.741 }, rot = { x = 0.000, y = 346.012, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278022, gadget_id = 70900380, pos = { x = -4468.388, y = 211.017, z = -3689.234 }, rot = { x = 0.000, y = 324.998, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278023, gadget_id = 70900380, pos = { x = -4451.424, y = 230.585, z = -3676.067 }, rot = { x = 0.000, y = 322.529, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278024, gadget_id = 70900380, pos = { x = -4447.496, y = 245.409, z = -3668.367 }, rot = { x = 0.000, y = 312.025, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278025, gadget_id = 70900380, pos = { x = -4460.182, y = 220.979, z = -3681.862 }, rot = { x = 0.000, y = 351.865, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 278026, gadget_id = 70350292, pos = { x = -4505.874, y = 202.528, z = -3720.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 321700051, start_route = false, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 278027, shape = RegionShape.SPHERE, radius = 3, pos = { x = -4505.982, y = 201.479, z = -3720.479 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1278015, name = "CHALLENGE_SUCCESS_278015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_278015", trigger_count = 0 },
	{ config_id = 1278016, name = "CHALLENGE_FAIL_278016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_278016", trigger_count = 0 },
	{ config_id = 1278017, name = "GADGET_STATE_CHANGE_278017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_278017", action = "action_EVENT_GADGET_STATE_CHANGE_278017", trigger_count = 0 },
	{ config_id = 1278018, name = "ANY_GADGET_DIE_278018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1278019, name = "GADGET_CREATE_278019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_278019", action = "action_EVENT_GADGET_CREATE_278019", trigger_count = 0 },
	{ config_id = 1278020, name = "SELECT_OPTION_278020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_278020", action = "action_EVENT_SELECT_OPTION_278020", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1278021, name = "GROUP_LOAD_278021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_278021", trigger_count = 0 },
	{ config_id = 1278027, name = "ENTER_REGION_278027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_278027", action = "action_EVENT_ENTER_REGION_278027", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 278002, 278003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_278015", "CHALLENGE_FAIL_278016", "GADGET_STATE_CHANGE_278017", "ANY_GADGET_DIE_278018", "GADGET_CREATE_278019", "SELECT_OPTION_278020", "GROUP_LOAD_278021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 278004, 278005, 278006, 278007, 278008, 278009, 278010, 278011, 278012, 278013, 278014, 278022, 278023, 278024, 278025, 278026 },
		regions = { 278027 },
		triggers = { "ENTER_REGION_278027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 278002 },
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
function action_EVENT_CHALLENGE_SUCCESS_278015(context, evt)
	-- 将configid为 278002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133217278, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133217278, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为278001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 278001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_278016(context, evt)
	-- 将configid为 278002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为278003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 278003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217278, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_278017(context, evt)
	if 278002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_278017(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_278019(context, evt)
	if 278003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_278019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217278, 278003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_278020(context, evt)
	-- 判断是gadgetid 278003 option_id 177
	if 278003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_278020(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 278003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 278002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-4512.792，202.405，-3715.464），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-4512.792, y=202.405, z=-3715.464}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_278021(context, evt)
	-- 将configid为 278002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为278003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 278003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217278, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_278027(context, evt)
	if evt.param1 ~= 278027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_278027(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 278026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V2_0/ElectricCore"