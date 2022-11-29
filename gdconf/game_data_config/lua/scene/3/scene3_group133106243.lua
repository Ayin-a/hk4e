-- 基础信息
local base_info = {
	group_id = 133106243
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
	{ config_id = 243001, gadget_id = 70350083, pos = { x = -861.958, y = 194.947, z = 1289.673 }, rot = { x = 0.000, y = 263.670, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 243002, gadget_id = 70690001, pos = { x = -855.229, y = 196.011, z = 1287.070 }, rot = { x = 0.000, y = 87.457, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243003, gadget_id = 70690006, pos = { x = -845.590, y = 170.210, z = 1289.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243004, gadget_id = 70690001, pos = { x = -827.627, y = 193.683, z = 1301.468 }, rot = { x = 0.000, y = 19.388, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243005, gadget_id = 70690001, pos = { x = -825.857, y = 194.310, z = 1310.753 }, rot = { x = 0.000, y = 338.907, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243007, gadget_id = 70690001, pos = { x = -832.588, y = 192.343, z = 1320.364 }, rot = { x = 0.000, y = 289.990, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243008, gadget_id = 70690006, pos = { x = -842.464, y = 156.681, z = 1324.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243009, gadget_id = 70690001, pos = { x = -853.803, y = 191.727, z = 1326.253 }, rot = { x = 0.000, y = 272.637, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243010, gadget_id = 70690006, pos = { x = -848.364, y = 164.534, z = 1325.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243011, gadget_id = 70690001, pos = { x = -872.557, y = 190.918, z = 1327.257 }, rot = { x = 337.286, y = 272.637, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243013, gadget_id = 70690001, pos = { x = -890.742, y = 193.300, z = 1325.153 }, rot = { x = 0.000, y = 246.486, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243015, gadget_id = 70690001, pos = { x = -906.467, y = 194.590, z = 1312.426 }, rot = { x = 0.000, y = 208.079, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243016, gadget_id = 70360001, pos = { x = -861.948, y = 195.870, z = 1289.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243017, gadget_id = 70690001, pos = { x = -909.402, y = 193.565, z = 1298.532 }, rot = { x = 0.000, y = 176.201, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243018, gadget_id = 70690001, pos = { x = -900.148, y = 196.590, z = 1282.272 }, rot = { x = 0.000, y = 89.665, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243019, gadget_id = 70690001, pos = { x = -892.487, y = 196.530, z = 1281.706 }, rot = { x = 0.000, y = 82.970, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243020, gadget_id = 70690006, pos = { x = -911.514, y = 169.023, z = 1283.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243021, gadget_id = 70690006, pos = { x = -913.054, y = 191.933, z = 1282.270 }, rot = { x = 3.557, y = 2.023, z = 284.019 }, level = 32, area_id = 8 },
	{ config_id = 243022, gadget_id = 70900201, pos = { x = -866.283, y = 194.946, z = 1289.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 243028, gadget_id = 70211121, pos = { x = -863.872, y = 194.947, z = 1289.327 }, rot = { x = 0.000, y = 265.437, z = 0.000 }, level = 26, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 243006, shape = RegionShape.SPHERE, radius = 2.9, pos = { x = -827.428, y = 193.533, z = 1301.650 }, area_id = 8 },
	{ config_id = 243012, shape = RegionShape.SPHERE, radius = 2.9, pos = { x = -826.025, y = 194.254, z = 1311.554 }, area_id = 8 },
	{ config_id = 243014, shape = RegionShape.SPHERE, radius = 2.9, pos = { x = -832.407, y = 192.283, z = 1320.627 }, area_id = 8 },
	{ config_id = 243023, shape = RegionShape.SPHERE, radius = 8.8, pos = { x = -909.596, y = 191.744, z = 1295.766 }, area_id = 8 },
	{ config_id = 243024, shape = RegionShape.SPHERE, radius = 5.9, pos = { x = -865.689, y = 196.332, z = 1289.770 }, area_id = 8 },
	{ config_id = 243029, shape = RegionShape.SPHERE, radius = 2.9, pos = { x = -855.790, y = 194.947, z = 1287.263 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1243006, name = "ENTER_REGION_243006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243006", action = "action_EVENT_ENTER_REGION_243006" },
	{ config_id = 1243012, name = "ENTER_REGION_243012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243012", action = "action_EVENT_ENTER_REGION_243012" },
	{ config_id = 1243014, name = "ENTER_REGION_243014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243014", action = "action_EVENT_ENTER_REGION_243014" },
	{ config_id = 1243023, name = "ENTER_REGION_243023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243023", action = "action_EVENT_ENTER_REGION_243023" },
	{ config_id = 1243024, name = "ENTER_REGION_243024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243024", action = "action_EVENT_ENTER_REGION_243024", tag = "666" },
	{ config_id = 1243025, name = "GADGET_STATE_CHANGE_243025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243025", action = "action_EVENT_GADGET_STATE_CHANGE_243025", trigger_count = 0 },
	{ config_id = 1243026, name = "CHALLENGE_SUCCESS_243026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_243026" },
	{ config_id = 1243027, name = "CHALLENGE_FAIL_243027", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_243027", trigger_count = 0 },
	{ config_id = 1243029, name = "ENTER_REGION_243029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243029", action = "action_EVENT_ENTER_REGION_243029" },
	{ config_id = 1243030, name = "GADGET_CREATE_243030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_243030", action = "action_EVENT_GADGET_CREATE_243030", trigger_count = 0 },
	{ config_id = 1243031, name = "SELECT_OPTION_243031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_243031", action = "action_EVENT_SELECT_OPTION_243031", trigger_count = 0 }
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
		gadgets = { 243001, 243016 },
		regions = { 243006, 243012, 243014 },
		triggers = { "ENTER_REGION_243006", "ENTER_REGION_243012", "ENTER_REGION_243014", "GADGET_STATE_CHANGE_243025", "CHALLENGE_SUCCESS_243026", "CHALLENGE_FAIL_243027", "GADGET_CREATE_243030", "SELECT_OPTION_243031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 243002, 243003, 243004, 243005, 243007 },
		regions = { 243029 },
		triggers = { "ENTER_REGION_243029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 243008, 243009, 243010, 243011, 243013, 243015, 243017, 243018, 243019, 243020, 243021 },
		regions = { 243023 },
		triggers = { "ENTER_REGION_243023" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 243022 },
		regions = { 243024 },
		triggers = { "ENTER_REGION_243024" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 243001 },
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
function condition_EVENT_ENTER_REGION_243006(context, evt)
	if evt.param1 ~= 243006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106243, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_243012(context, evt)
	if evt.param1 ~= 243012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106243, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_243014(context, evt)
	if evt.param1 ~= 243014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106243, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_243023(context, evt)
	if evt.param1 ~= 243023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106243, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_243024(context, evt)
	if evt.param1 ~= 243024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 243022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_243025(context, evt)
	if 243001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_243025(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为127的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 127, 60, 4, 666, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106243, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_243026(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建id为243028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 4)
	
	-- 将configid为 243001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_243027(context, evt)
	-- 将configid为 243001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106243, 4)
	
	-- 创建id为243016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 243016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_243029(context, evt)
	if evt.param1 ~= 243029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106243, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_243030(context, evt)
	if 243016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_243030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106243, 243016, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_243031(context, evt)
	-- 判断是gadgetid 243016 option_id 177
	if 243016 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_243031(context, evt)
	-- 将configid为 243001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 243016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end