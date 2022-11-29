-- 基础信息
local base_info = {
	group_id = 133308238
}

-- DEFS_MISCS
local engineerLaserConfigID = 238001
local turnOption = 435
local correctState = 0

local markList = {238005,238006}

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
	{ config_id = 238001, gadget_id = 70330311, pos = { x = -1427.151, y = 1.422, z = 4760.313 }, rot = { x = 0.000, y = 189.662, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 26 },
	{ config_id = 238002, gadget_id = 70330314, pos = { x = -1431.969, y = 1.634, z = 4751.418 }, rot = { x = 0.000, y = 279.108, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 26 },
	{ config_id = 238003, gadget_id = 70330225, pos = { x = -1416.290, y = 5.088, z = 4761.516 }, rot = { x = 0.000, y = 11.206, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 238004, gadget_id = 70330225, pos = { x = -1439.135, y = 3.109, z = 4753.337 }, rot = { x = 0.000, y = 11.206, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 238005, gadget_id = 70330264, pos = { x = -1430.870, y = 7.083, z = 4746.741 }, rot = { x = 0.000, y = 10.676, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 238006, gadget_id = 70330264, pos = { x = -1435.809, y = 7.176, z = 4717.223 }, rot = { x = 0.000, y = 10.676, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 238007, gadget_id = 70330416, pos = { x = -1440.267, y = 1.809, z = 4748.430 }, rot = { x = 359.626, y = 10.000, z = 359.966 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 238008, gadget_id = 70330416, pos = { x = -1447.645, y = 1.588, z = 4734.732 }, rot = { x = 359.626, y = 100.000, z = 359.966 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 238009, gadget_id = 70330416, pos = { x = -1445.370, y = 1.588, z = 4719.053 }, rot = { x = 359.626, y = 10.000, z = 359.966 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 238010, gadget_id = 70330281, pos = { x = -1436.897, y = 1.591, z = 4703.066 }, rot = { x = 0.000, y = 189.662, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 238011, gadget_id = 70330314, pos = { x = -1438.231, y = 1.422, z = 4715.163 }, rot = { x = 0.000, y = 279.562, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 26 },
	{ config_id = 238012, gadget_id = 70330225, pos = { x = -1425.418, y = 5.402, z = 4698.580 }, rot = { x = 0.000, y = 11.206, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 238016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 10.000 }, pos = { x = -1457.311, y = 15.591, z = 4765.971 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1238013, name = "GADGET_STATE_CHANGE_238013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238013", action = "action_EVENT_GADGET_STATE_CHANGE_238013", trigger_count = 0 },
	{ config_id = 1238014, name = "GROUP_LOAD_238014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_238014", action = "action_EVENT_GROUP_LOAD_238014", trigger_count = 0 },
	{ config_id = 1238015, name = "VARIABLE_CHANGE_238015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_238015", action = "action_EVENT_VARIABLE_CHANGE_238015", trigger_count = 0 },
	{ config_id = 1238016, name = "ENTER_REGION_238016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_238016", action = "action_EVENT_ENTER_REGION_238016", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1238017, name = "GADGET_STATE_CHANGE_238017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238017", action = "action_EVENT_GADGET_STATE_CHANGE_238017" },
	-- 运营埋点
	{ config_id = 1238018, name = "GADGET_STATE_CHANGE_238018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238018", action = "action_EVENT_GADGET_STATE_CHANGE_238018" },
	-- 运营埋点
	{ config_id = 1238019, name = "GADGET_STATE_CHANGE_238019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238019", action = "action_EVENT_GADGET_STATE_CHANGE_238019" },
	{ config_id = 1238020, name = "GROUP_LOAD_238020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_238020", action = "action_EVENT_GROUP_LOAD_238020", trigger_count = 0 },
	-- 射线保底
	{ config_id = 1238021, name = "GADGET_CREATE_238021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_238021", trigger_count = 0 },
	{ config_id = 1238022, name = "GADGET_STATE_CHANGE_238022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_238022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "perfectSet", value = 0, no_refresh = true }
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
		gadgets = { 238001, 238002, 238003, 238004, 238005, 238006, 238007, 238008, 238009, 238010, 238011, 238012 },
		regions = { 238016 },
		triggers = { "GADGET_STATE_CHANGE_238013", "VARIABLE_CHANGE_238015", "ENTER_REGION_238016", "GADGET_STATE_CHANGE_238017", "GADGET_STATE_CHANGE_238018", "GADGET_STATE_CHANGE_238019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 238001, 238002, 238003, 238004, 238005, 238006, 238007, 238008, 238009, 238010, 238011, 238012 },
		regions = { 238016 },
		triggers = { "GROUP_LOAD_238014", "ENTER_REGION_238016", "GROUP_LOAD_238020", "GADGET_CREATE_238021", "GADGET_STATE_CHANGE_238022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308238, 238010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238013(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 238007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 238008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 238009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133308240中， configid为240002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308240, 240002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_238014(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_238014(context, evt)
	-- 将configid为 238007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 238008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 238009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_238015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_238015(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1440.267, y=1.808981, z=4748.43}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1440.267, y=1.808981, z=4748.43}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308238, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_238016(context, evt)
	if evt.param1 ~= 238016 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_238016(context, evt)
	-- 将configid为 238005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 238006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238017(context, evt)
	-- 检测config_id为238001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 238001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238017(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330311) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238018(context, evt)
	-- 检测config_id为238002的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 238002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238018(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330314) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238019(context, evt)
	-- 检测config_id为238011的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 238011 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238019(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330314) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_238020(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	-- 判断变量"perfectSet"为0
	if ScriptLib.GetGroupVariableValue(context, "perfectSet") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_238020(context, evt)
	-- 改变指定group组133308240中， configid为240002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308240, 240002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_238021(context, evt)
		if evt.param1 == engineerLaserConfigID then
			if ScriptLib.GetGadgetStateByConfigId(context, 0, engineerLaserConfigID) == correctState then
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, engineerLaserConfigID, "SGV_HAS_LASER", 1)
			else
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, engineerLaserConfigID, "SGV_HAS_LASER", 0)
			end
	
		end
	
		return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238022(context, evt)
		if evt.param1 == correctState and evt.param2 == engineerLaserConfigID then
				ScriptLib.SetEntityServerGlobalValueByConfigId(context, engineerLaserConfigID, "SGV_HAS_LASER", 1)
		elseif evt.param1 ~= correctState and evt.param2 == engineerLaserConfigID then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, engineerLaserConfigID, "SGV_HAS_LASER", 0)
		end
	
		return 0
end

require "V3_1/Engineer_Laser"
require "V3_1/Transparent_Mark"