-- 基础信息
local base_info = {
	group_id = 133301639
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
	{ config_id = 639001, gadget_id = 70330238, pos = { x = -403.206, y = 121.993, z = 3923.201 }, rot = { x = 9.814, y = 186.907, z = 7.363 }, level = 33, persistent = true, mark_flag = 5, area_id = 22 },
	{ config_id = 639002, gadget_id = 70290563, pos = { x = -439.557, y = 109.484, z = 3916.561 }, rot = { x = 0.000, y = 212.624, z = 0.000 }, level = 33, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 22 },
	{ config_id = 639006, gadget_id = 70330199, pos = { x = -402.393, y = 121.472, z = 3922.692 }, rot = { x = 0.000, y = 274.949, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 解除死域后每次load加载删除花
	{ config_id = 1639004, name = "GROUP_LOAD_639004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_639004", action = "action_EVENT_GROUP_LOAD_639004", trigger_count = 0 },
	-- 删除花201给注目并设置finish=1
	{ config_id = 1639005, name = "GADGET_STATE_CHANGE_639005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_639005", action = "action_EVENT_GADGET_STATE_CHANGE_639005" },
	-- 石块抬起创建删除花
	{ config_id = 1639007, name = "GADGET_STATE_CHANGE_639007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_639007", action = "action_EVENT_GADGET_STATE_CHANGE_639007", trigger_count = 0 },
	-- 石块落下卸载删除花
	{ config_id = 1639008, name = "GADGET_STATE_CHANGE_639008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_639008", action = "action_EVENT_GADGET_STATE_CHANGE_639008", trigger_count = 0 },
	-- 如果删除过了，每次创建删除花转202
	{ config_id = 1639010, name = "GADGET_CREATE_639010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_639010", action = "action_EVENT_GADGET_CREATE_639010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1639003, name = "GADGET_STATE_CHANGE_639003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_639003", action = "", trigger_count = 0 },
		{ config_id = 1639009, name = "GROUP_LOAD_639009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_639009", action = "action_EVENT_GROUP_LOAD_639009", trigger_count = 0 }
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
		gadgets = { 639002, 639006 },
		regions = { },
		triggers = { "GROUP_LOAD_639004", "GADGET_STATE_CHANGE_639005", "GADGET_STATE_CHANGE_639007", "GADGET_STATE_CHANGE_639008", "GADGET_CREATE_639010" },
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
function condition_EVENT_GROUP_LOAD_639004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_639004(context, evt)
	-- 创建id为639001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 639001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_639005(context, evt)
	if 639001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_639005(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-407.4183, y=122.8934, z=3923.279}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-407.4183, y=122.8934, z=3923.279}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_639007(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 639006 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_639007(context, evt)
	-- 创建id为639001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 639001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_639008(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 639006 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_639008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301639, EntityType.GADGET, 639001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_639010(context, evt)
	if 639001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_639010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = 639002 }) 
		
	
	-- 将configid为 639001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"