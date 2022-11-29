-- 基础信息
local base_info = {
	group_id = 133307130
}

-- DEFS_MISCS
local markList = {130001,130002,130015,130016}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130009, monster_id = 28020604, pos = { x = -1994.403, y = 101.596, z = 5961.171 }, rot = { x = 0.000, y = 33.168, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 130022, monster_id = 28060401, pos = { x = -1975.239, y = 102.804, z = 5975.017 }, rot = { x = 0.000, y = 129.550, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 2, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 封锁2
	{ config_id = 130001, gadget_id = 70330264, pos = { x = -1972.490, y = 107.070, z = 5966.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	-- 封锁1
	{ config_id = 130002, gadget_id = 70330264, pos = { x = -1977.253, y = 107.070, z = 5961.900 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 130004, gadget_id = 70330314, pos = { x = -1980.867, y = 101.607, z = 5965.354 }, rot = { x = 0.000, y = 270.000, z = 1.933 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 130005, gadget_id = 70330266, pos = { x = -1994.320, y = 101.692, z = 5974.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 130006, gadget_id = 70330225, pos = { x = -1994.320, y = 102.692, z = 5974.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 130008, gadget_id = 70330266, pos = { x = -1994.233, y = 101.581, z = 5961.210 }, rot = { x = 0.000, y = 44.999, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 封锁3
	{ config_id = 130015, gadget_id = 70330392, pos = { x = -1972.590, y = 125.413, z = 5962.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	-- 封锁3
	{ config_id = 130016, gadget_id = 70330392, pos = { x = -1972.590, y = 125.413, z = 5972.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 130017, gadget_id = 70330308, pos = { x = -1972.590, y = 101.087, z = 5962.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	-- 引导
	{ config_id = 130018, gadget_id = 70330225, pos = { x = -1972.839, y = 115.730, z = 5971.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 130020, gadget_id = 70330314, pos = { x = -1972.381, y = 101.662, z = 5969.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 130026, gadget_id = 70290196, pos = { x = -1972.590, y = 125.413, z = 5960.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 运营埋点
	{ config_id = 1130003, name = "GADGET_STATE_CHANGE_130003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130003", action = "action_EVENT_GADGET_STATE_CHANGE_130003" },
	-- 工程师
	{ config_id = 1130012, name = "ANY_GADGET_DIE_130012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130012", action = "action_EVENT_ANY_GADGET_DIE_130012" },
	-- 面具鼬
	{ config_id = 1130013, name = "ANY_GADGET_DIE_130013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130013", action = "action_EVENT_ANY_GADGET_DIE_130013" },
	-- 透明即消失1
	{ config_id = 1130014, name = "GADGET_STATE_CHANGE_130014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130014", action = "action_EVENT_GADGET_STATE_CHANGE_130014" },
	-- 透明即消失2
	{ config_id = 1130021, name = "GADGET_STATE_CHANGE_130021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130021", action = "action_EVENT_GADGET_STATE_CHANGE_130021" },
	-- 透明即消失3
	{ config_id = 1130023, name = "GADGET_STATE_CHANGE_130023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130023", action = "action_EVENT_GADGET_STATE_CHANGE_130023" },
	-- 运营埋点
	{ config_id = 1130024, name = "GADGET_STATE_CHANGE_130024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130024", action = "action_EVENT_GADGET_STATE_CHANGE_130024" }
}

-- 点位
points = {
	{ config_id = 130025, pos = { x = -1973.013, y = 125.484, z = 5962.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 130010, monster_id = 28060401, pos = { x = -1980.956, y = 101.842, z = 5972.506 }, rot = { x = 0.000, y = 239.190, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
	},
	gadgets = {
		{ config_id = 130007, gadget_id = 70330430, pos = { x = -1980.321, y = 101.692, z = 5972.480 }, rot = { x = 0.000, y = 54.999, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
	},
	triggers = {
		{ config_id = 1130011, name = "ANY_GADGET_DIE_130011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_130011", action = "action_EVENT_ANY_GADGET_DIE_130011" },
		{ config_id = 1130019, name = "GADGET_STATE_CHANGE_130019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130019", action = "action_EVENT_GADGET_STATE_CHANGE_130019" }
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
		monsters = { 130022 },
		gadgets = { 130001, 130002, 130004, 130005, 130008, 130015, 130016, 130017, 130018, 130020, 130026 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_130003", "ANY_GADGET_DIE_130012", "ANY_GADGET_DIE_130013", "GADGET_STATE_CHANGE_130014", "GADGET_STATE_CHANGE_130021", "GADGET_STATE_CHANGE_130023", "GADGET_STATE_CHANGE_130024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130003(context, evt)
	-- 检测config_id为130004的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 130004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330314) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_130012(context, evt)
	if 130005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_130012(context, evt)
	-- 创建id为130006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 130006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_130013(context, evt)
	if 130008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_130013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 130009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130014(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307130, 130002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 130002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130021(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307130, 130001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 130001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 130015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 130016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130023(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133307130, 130015) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 130015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 130016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标{x=-1972.59, y=125.4128, z=5962}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1972.59, y=125.4128, z=5962}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130024(context, evt)
	-- 检测config_id为130020的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 130020 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130024(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330314) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Mark"
require "V3_1/Transparent_Mark"