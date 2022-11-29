-- 基础信息
local base_info = {
	group_id = 133309031
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
	{ config_id = 31002, gadget_id = 70360001, pos = { x = -2373.914, y = 19.717, z = 5568.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 31005, gadget_id = 70330274, pos = { x = -2371.134, y = 14.774, z = 5568.479 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 31020, gadget_id = 70330269, pos = { x = -2353.504, y = 50.890, z = 5568.491 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 }
}

-- 区域
regions = {
	-- 传送
	{ config_id = 31012, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -2369.872, y = 23.826, z = 5568.571 }, area_id = 27 },
	-- 传送位置修改
	{ config_id = 31017, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -2369.872, y = 23.826, z = 5568.571 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 全部激活的保底
	{ config_id = 1031001, name = "GROUP_LOAD_31001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_31001", action = "action_EVENT_GROUP_LOAD_31001", trigger_count = 0 },
	-- 全部副核心激活
	{ config_id = 1031010, name = "VARIABLE_CHANGE_31010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_31010", action = "action_EVENT_VARIABLE_CHANGE_31010" },
	-- 全部激活的保底
	{ config_id = 1031011, name = "GROUP_LOAD_31011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_31011", action = "action_EVENT_GROUP_LOAD_31011", trigger_count = 0 },
	-- 传送
	{ config_id = 1031012, name = "ENTER_REGION_31012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31012", action = "action_EVENT_ENTER_REGION_31012", trigger_count = 0 },
	-- 切换场景，修改传送位置
	{ config_id = 1031016, name = "QUEST_START_31016", event = EventType.EVENT_QUEST_START, source = "7308317", condition = "", action = "action_EVENT_QUEST_START_31016", trigger_count = 0 },
	-- 传送位置修改
	{ config_id = 1031017, name = "ENTER_REGION_31017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31017", action = "action_EVENT_ENTER_REGION_31017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active1", value = 0, no_refresh = true },
	{ config_id = 2, name = "active2", value = 0, no_refresh = true },
	{ config_id = 3, name = "active3", value = 0, no_refresh = true },
	{ config_id = 4, name = "active4", value = 0, no_refresh = true },
	{ config_id = 5, name = "changepos", value = 0, no_refresh = true }
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
		gadgets = { 31002, 31005, 31020 },
		regions = { },
		triggers = { "GROUP_LOAD_31001", "VARIABLE_CHANGE_31010", "GROUP_LOAD_31011", "QUEST_START_31016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 31005, 31020 },
		regions = { 31012 },
		triggers = { "ENTER_REGION_31012", "QUEST_START_31016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 31005, 31020 },
		regions = { 31017 },
		triggers = { "GROUP_LOAD_31001", "ENTER_REGION_31017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_31001(context, evt)
	-- 判断变量"active1"为1
	if ScriptLib.GetGroupVariableValue(context, "active1") ~= 1 then
			return false
	end
	
	-- 判断变量"active2"为1
	if ScriptLib.GetGroupVariableValue(context, "active2") ~= 1 then
			return false
	end
	
	-- 判断变量"active3"为1
	if ScriptLib.GetGroupVariableValue(context, "active3") ~= 1 then
			return false
	end
	
	-- 判断变量"active4"为1
	if ScriptLib.GetGroupVariableValue(context, "active4") ~= 1 then
			return false
	end
	
	-- 判断变量"changepos"为1
	if ScriptLib.GetGroupVariableValue(context, "changepos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_31001(context, evt)
	-- 将configid为 31005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 31020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309031, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_31010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"active1"为1
	if ScriptLib.GetGroupVariableValue(context, "active1") ~= 1 then
			return false
	end
	
	-- 判断变量"active2"为1
	if ScriptLib.GetGroupVariableValue(context, "active2") ~= 1 then
			return false
	end
	
	-- 判断变量"active3"为1
	if ScriptLib.GetGroupVariableValue(context, "active3") ~= 1 then
			return false
	end
	
	-- 判断变量"active4"为1
	if ScriptLib.GetGroupVariableValue(context, "active4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31010(context, evt)
	-- 通知场景上的所有玩家播放名字为96 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 96, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 将configid为 31005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 31020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309031, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_31011(context, evt)
	-- 判断变量"active1"为1
	if ScriptLib.GetGroupVariableValue(context, "active1") ~= 1 then
			return false
	end
	
	-- 判断变量"active2"为1
	if ScriptLib.GetGroupVariableValue(context, "active2") ~= 1 then
			return false
	end
	
	-- 判断变量"active3"为1
	if ScriptLib.GetGroupVariableValue(context, "active3") ~= 1 then
			return false
	end
	
	-- 判断变量"active4"为1
	if ScriptLib.GetGroupVariableValue(context, "active4") ~= 1 then
			return false
	end
	
	-- 判断变量"changepos"为0
	if ScriptLib.GetGroupVariableValue(context, "changepos") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_31011(context, evt)
	-- 将configid为 31005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 31020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309031, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31012(context, evt)
	if evt.param1 ~= 31012 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31012(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=-2344.83, y=-263.278, z=5580.27}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=180, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_31016(context, evt)
	-- 将本组内变量名为 "changepos" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "changepos", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309031, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31017(context, evt)
	if evt.param1 ~= 31017 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31017(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=-2342.712, y=465.3, z=5496.537}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=358.898, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end