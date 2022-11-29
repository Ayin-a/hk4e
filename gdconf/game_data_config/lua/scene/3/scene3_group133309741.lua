-- 基础信息
local base_info = {
	group_id = 133309741
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 741001,
	gadget_receiver_2 = 741002,
	gadget_receiver_3 = 0
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
	defs.gadget_receiver_3
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
	-- 接收装置#1
	{ config_id = 741001, gadget_id = 70330281, pos = { x = -2831.091, y = 155.382, z = 5942.685 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 接收装置#2
	{ config_id = 741002, gadget_id = 70330281, pos = { x = -2826.761, y = 155.382, z = 5949.685 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 741003, gadget_id = 70330416, pos = { x = -2826.798, y = 155.667, z = 5960.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 741004, gadget_id = 70330427, pos = { x = -2822.034, y = 155.559, z = 5942.390 }, rot = { x = 0.000, y = 294.966, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 741005, gadget_id = 70330256, pos = { x = -2826.770, y = 166.820, z = 6009.964 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	-- 接收装置#3
	{ config_id = 741006, gadget_id = 70330281, pos = { x = -2822.045, y = 155.382, z = 5942.463 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 741012, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 30.000 }, pos = { x = -2436.666, y = 66.976, z = 5296.126 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 接收装置#1激活-解锁元能基座
	{ config_id = 1741007, name = "GADGET_STATE_CHANGE_741007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_741007", action = "action_EVENT_GADGET_STATE_CHANGE_741007", trigger_count = 0 },
	-- 接收装置#2激活-开启大门
	{ config_id = 1741009, name = "GADGET_STATE_CHANGE_741009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_741009", action = "action_EVENT_GADGET_STATE_CHANGE_741009", trigger_count = 0 },
	-- 接收装置#3激活-关闭风扇
	{ config_id = 1741011, name = "GADGET_STATE_CHANGE_741011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_741011", action = "action_EVENT_GADGET_STATE_CHANGE_741011", trigger_count = 0 },
	{ config_id = 1741012, name = "ENTER_REGION_741012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_741012", action = "action_EVENT_ENTER_REGION_741012" },
	-- 接收装置#3取消激活-开启风扇
	{ config_id = 1741013, name = "GADGET_STATE_CHANGE_741013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_741013", action = "action_EVENT_GADGET_STATE_CHANGE_741013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isLeave", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1741008, name = "GADGET_STATE_CHANGE_741008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_741008", action = "", trigger_count = 0 },
		{ config_id = 1741010, name = "VARIABLE_CHANGE_741010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_741010", action = "action_EVENT_VARIABLE_CHANGE_741010" }
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
		gadgets = { 741001, 741002, 741003, 741004, 741005, 741006 },
		regions = { 741012 },
		triggers = { "GADGET_STATE_CHANGE_741007", "GADGET_STATE_CHANGE_741009", "GADGET_STATE_CHANGE_741011", "ENTER_REGION_741012", "GADGET_STATE_CHANGE_741013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_741007(context, evt)
	if 741001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_741007(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 0, 133309739) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_741009(context, evt)
	if 741002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_741009(context, evt)
	-- 将configid为 741003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 741003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 741002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 741002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5020, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_741011(context, evt)
	if 741006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_741011(context, evt)
	-- 将configid为 741005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 741005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_741012(context, evt)
	if evt.param1 ~= 741012 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_741012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_741013(context, evt)
	if 741006 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_741013(context, evt)
	-- 将configid为 741005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 741005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end