-- 基础信息
local base_info = {
	group_id = 133302076
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 76016, monster_id = 26120101, pos = { x = -325.016, y = 279.969, z = 2120.752 }, rot = { x = 0.000, y = 261.199, z = 0.000 }, level = 27, drop_tag = "大蕈兽", isOneoff = true, pose_id = 201, area_id = 24 },
	{ config_id = 76017, monster_id = 28020313, pos = { x = -362.312, y = 282.590, z = 2120.603 }, rot = { x = 0.000, y = 95.734, z = 0.000 }, level = 27, drop_tag = "走兽", isOneoff = true, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 76005, gadget_id = 70330199, pos = { x = -342.529, y = 280.587, z = 2129.486 }, rot = { x = 351.485, y = 157.201, z = 7.575 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 76006, gadget_id = 70330199, pos = { x = -325.054, y = 280.400, z = 2120.507 }, rot = { x = 353.976, y = 274.342, z = 356.868 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 76007, gadget_id = 70230113, pos = { x = -337.872, y = 281.066, z = 2127.682 }, rot = { x = 358.656, y = 195.609, z = 60.465 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 76008, gadget_id = 70230113, pos = { x = -336.683, y = 280.919, z = 2128.019 }, rot = { x = 358.340, y = 193.033, z = 60.271 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 76009, gadget_id = 70230112, pos = { x = -339.076, y = 281.028, z = 2127.281 }, rot = { x = 0.000, y = 204.251, z = 90.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 76010, gadget_id = 70330199, pos = { x = -340.088, y = 282.214, z = 2116.847 }, rot = { x = 8.165, y = 72.264, z = 359.259 }, level = 27, area_id = 24 },
	{ config_id = 76011, gadget_id = 70211001, pos = { x = -342.442, y = 280.886, z = 2129.028 }, rot = { x = 352.592, y = 167.016, z = 3.521 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 76012, gadget_id = 70330199, pos = { x = -362.521, y = 282.454, z = 2120.769 }, rot = { x = 5.192, y = 94.730, z = 2.217 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 76018, gadget_id = 70230113, pos = { x = -336.492, y = 280.919, z = 2127.684 }, rot = { x = 341.439, y = 159.993, z = 77.672 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 76019, gadget_id = 70230113, pos = { x = -336.645, y = 280.905, z = 2128.352 }, rot = { x = 10.832, y = 243.538, z = 70.549 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 76020, gadget_id = 70320004, pos = { x = -339.363, y = 282.385, z = 2116.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 24 },
	-- 替身涂鸦
	{ config_id = 76023, gadget_id = 70230113, pos = { x = -337.872, y = 281.129, z = 2127.682 }, rot = { x = 358.656, y = 195.609, z = 60.465 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 24 },
	{ config_id = 76024, gadget_id = 70230113, pos = { x = -336.683, y = 280.983, z = 2128.019 }, rot = { x = 358.340, y = 193.033, z = 60.271 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 24 },
	{ config_id = 76025, gadget_id = 70230112, pos = { x = -339.076, y = 281.091, z = 2127.281 }, rot = { x = 0.000, y = 204.251, z = 90.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 24 },
	{ config_id = 76026, gadget_id = 70230113, pos = { x = -336.492, y = 280.982, z = 2127.684 }, rot = { x = 341.439, y = 159.993, z = 77.672 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 24 },
	{ config_id = 76027, gadget_id = 70230113, pos = { x = -336.645, y = 280.969, z = 2128.352 }, rot = { x = 10.832, y = 243.538, z = 70.549 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1076001, name = "GADGET_STATE_CHANGE_76001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76001", action = "action_EVENT_GADGET_STATE_CHANGE_76001", trigger_count = 0 },
	{ config_id = 1076002, name = "GADGET_STATE_CHANGE_76002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76002", action = "action_EVENT_GADGET_STATE_CHANGE_76002", trigger_count = 0 },
	{ config_id = 1076004, name = "GADGET_STATE_CHANGE_76004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76004", action = "action_EVENT_GADGET_STATE_CHANGE_76004" },
	-- 正确的石块
	{ config_id = 1076013, name = "GADGET_STATE_CHANGE_76013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76013", action = "action_EVENT_GADGET_STATE_CHANGE_76013" },
	{ config_id = 1076014, name = "GADGET_STATE_CHANGE_76014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76014", action = "action_EVENT_GADGET_STATE_CHANGE_76014" },
	{ config_id = 1076015, name = "GADGET_STATE_CHANGE_76015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76015", action = "action_EVENT_GADGET_STATE_CHANGE_76015" },
	-- 保底
	{ config_id = 1076022, name = "GROUP_LOAD_76022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_76022", action = "action_EVENT_GROUP_LOAD_76022", trigger_count = 0 },
	{ config_id = 1076028, name = "GROUP_LOAD_76028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_76028", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 76003, gadget_id = 70320004, pos = { x = -339.363, y = 282.385, z = 2116.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 24 }
	},
	triggers = {
		{ config_id = 1076021, name = "GROUP_LOAD_76021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "" }
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
	end_suite = 5,
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
		gadgets = { 76007, 76008, 76009, 76010, 76018, 76019, 76020 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_76001", "GADGET_STATE_CHANGE_76002", "GADGET_STATE_CHANGE_76004", "GROUP_LOAD_76028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 76005, 76006, 76007, 76008, 76009, 76010, 76012, 76018, 76019 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_76013", "GADGET_STATE_CHANGE_76014", "GADGET_STATE_CHANGE_76015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 76016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 76017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 76010, 76023, 76024, 76025, 76026, 76027 },
		regions = { },
		triggers = { "GROUP_LOAD_76022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76001(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 76010 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_76001(context, evt)
	-- 创建id为76020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76002(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 76010 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_76002(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302076, EntityType.GADGET, 76020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76004(context, evt)
	if 76020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_76004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302076, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76013(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 76005 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_76013(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "paimon1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "paimon1", 1, 133302487) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 创建id为76011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组133302065中， configid为65014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302065, 65014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302076, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76014(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 76006 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_76014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302076, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76015(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 76012 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_76015(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302076, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_76022(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_76022(context, evt)
	-- 创建id为76011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组133302065中， configid为65014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302065, 65014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_76028(context, evt)
	-- 创建id为76020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end