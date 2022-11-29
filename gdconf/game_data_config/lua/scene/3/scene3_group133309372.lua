-- 基础信息
local base_info = {
	group_id = 133309372
}

-- Trigger变量
local defs = {
	gadget_1 = 372001,
	gadget_2 = 372002,
	gadget_3 = 372003
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {defs.gadget_1,defs.gadget_2,defs.gadget_3}
local forceStopGroup = {133309435}

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
	{ config_id = 372001, gadget_id = 70330227, pos = { x = -2385.711, y = 191.692, z = 5760.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 372002, gadget_id = 70330227, pos = { x = -2375.906, y = 191.692, z = 5781.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 372003, gadget_id = 70330310, pos = { x = -2405.953, y = 191.692, z = 5781.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 372006, gadget_id = 70330225, pos = { x = -2385.977, y = 209.467, z = 5771.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 教学
	{ config_id = 372004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2385.711, y = 191.692, z = 5760.962 }, area_id = 27 },
	-- 教学
	{ config_id = 372005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2375.906, y = 191.692, z = 5781.007 }, area_id = 27 },
	-- 建筑教学
	{ config_id = 372007, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2405.953, y = 191.692, z = 5781.058 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 教学
	{ config_id = 1372004, name = "ENTER_REGION_372004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_372004", action = "action_EVENT_ENTER_REGION_372004" },
	-- 教学
	{ config_id = 1372005, name = "ENTER_REGION_372005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_372005", action = "action_EVENT_ENTER_REGION_372005" },
	-- 建筑教学
	{ config_id = 1372007, name = "ENTER_REGION_372007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_372007", action = "action_EVENT_ENTER_REGION_372007" },
	-- 挑战成功
	{ config_id = 1372008, name = "VARIABLE_CHANGE_372008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_372008", action = "action_EVENT_VARIABLE_CHANGE_372008" },
	-- 运营埋点
	{ config_id = 1372009, name = "GADGET_STATE_CHANGE_372009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_372009", action = "action_EVENT_GADGET_STATE_CHANGE_372009" }
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
		gadgets = { 372001, 372002, 372003, 372006 },
		regions = { 372004, 372005, 372007 },
		triggers = { "ENTER_REGION_372004", "ENTER_REGION_372005", "ENTER_REGION_372007", "VARIABLE_CHANGE_372008", "GADGET_STATE_CHANGE_372009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_372004(context, evt)
	if evt.param1 ~= 372004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309372, 372003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_372004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_372005(context, evt)
	if evt.param1 ~= 372005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309372, 372002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_372005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_372007(context, evt)
	if evt.param1 ~= 372007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309372, 372001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_372007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_372008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_Success"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_372008(context, evt)
	-- 改变指定group组133309170中， configid为170001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309170, 170001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133309170中， configid为170004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309170, 170004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-2395.276, y=193.4921, z=5768.134}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2395.276, y=193.4921, z=5768.134}
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
function condition_EVENT_GADGET_STATE_CHANGE_372009(context, evt)
	-- 检测config_id为372003的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 372003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330310) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"
require "V3_1/Engineer_Mark"