-- 基础信息
local base_info = {
	group_id = 199004199
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 199014, monster_id = 21010401, pos = { x = -277.461, y = 123.640, z = -275.136 }, rot = { x = 0.000, y = 306.665, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 401 },
	{ config_id = 199015, monster_id = 21010401, pos = { x = -293.718, y = 123.725, z = -276.839 }, rot = { x = 0.000, y = 25.433, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 199001, gadget_id = 70350249, pos = { x = -295.817, y = 120.000, z = -155.191 }, rot = { x = 0.000, y = 181.224, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199002, gadget_id = 70350249, pos = { x = -295.967, y = 120.000, z = -162.181 }, rot = { x = 0.000, y = 177.743, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199003, gadget_id = 70350249, pos = { x = -295.691, y = 120.000, z = -169.176 }, rot = { x = 0.000, y = 176.707, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199004, gadget_id = 70350249, pos = { x = -295.289, y = 120.000, z = -176.164 }, rot = { x = 0.000, y = 175.935, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199005, gadget_id = 70350249, pos = { x = -294.793, y = 120.000, z = -183.146 }, rot = { x = 0.000, y = 175.071, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199006, gadget_id = 70350249, pos = { x = -294.191, y = 120.000, z = -190.120 }, rot = { x = 0.000, y = 173.824, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199007, gadget_id = 70350249, pos = { x = -293.438, y = 120.000, z = -197.079 }, rot = { x = 0.000, y = 169.986, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199008, gadget_id = 70350249, pos = { x = -292.222, y = 120.000, z = -203.965 }, rot = { x = 0.000, y = 169.986, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199009, gadget_id = 70350258, pos = { x = -290.502, y = 120.000, z = -213.481 }, rot = { x = 0.000, y = 348.997, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199010, gadget_id = 70290056, pos = { x = -296.287, y = 120.000, z = -230.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 199011, gadget_id = 70290055, pos = { x = -280.493, y = 120.000, z = -241.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 199012, gadget_id = 70950092, pos = { x = -276.198, y = 120.000, z = -276.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199013, gadget_id = 70950092, pos = { x = -294.664, y = 120.000, z = -278.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199016, gadget_id = 70290057, pos = { x = -290.433, y = 120.000, z = -286.083 }, rot = { x = 0.000, y = 185.863, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199017, gadget_id = 70290057, pos = { x = -279.712, y = 120.000, z = -285.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199018, gadget_id = 70950087, pos = { x = -293.284, y = 120.000, z = -276.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199019, gadget_id = 70350250, pos = { x = -294.199, y = 120.000, z = -125.915 }, rot = { x = 0.000, y = 109.800, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 199020, gadget_id = 70350277, pos = { x = -295.079, y = 120.000, z = -135.690 }, rot = { x = 0.000, y = 189.752, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 199021, gadget_id = 70950087, pos = { x = -296.378, y = 120.000, z = -275.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199022, gadget_id = 70950087, pos = { x = -274.359, y = 120.000, z = -273.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199023, gadget_id = 70950087, pos = { x = -279.143, y = 120.000, z = -283.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199024, gadget_id = 70950087, pos = { x = -284.758, y = 120.000, z = -285.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199025, gadget_id = 70950087, pos = { x = -288.380, y = 120.000, z = -284.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199026, gadget_id = 70950087, pos = { x = -275.684, y = 120.000, z = -272.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199027, gadget_id = 70350249, pos = { x = -284.129, y = 120.000, z = -294.483 }, rot = { x = 0.000, y = 179.186, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199028, gadget_id = 70350249, pos = { x = -284.029, y = 120.000, z = -301.482 }, rot = { x = 0.000, y = 179.902, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199029, gadget_id = 70350249, pos = { x = -284.017, y = 120.000, z = -308.482 }, rot = { x = 0.000, y = 183.108, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199030, gadget_id = 70350249, pos = { x = -284.396, y = 120.000, z = -315.460 }, rot = { x = 0.000, y = 201.362, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199031, gadget_id = 70350249, pos = { x = -286.934, y = 120.000, z = -321.949 }, rot = { x = 0.000, y = 216.137, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199032, gadget_id = 70350249, pos = { x = -291.051, y = 120.000, z = -327.587 }, rot = { x = 0.000, y = 231.007, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199033, gadget_id = 70350249, pos = { x = -296.472, y = 120.000, z = -331.976 }, rot = { x = 0.000, y = 247.702, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199034, gadget_id = 70350249, pos = { x = -302.921, y = 120.000, z = -334.620 }, rot = { x = 0.000, y = 247.702, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199035, gadget_id = 70290056, pos = { x = -299.881, y = 120.000, z = -319.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 199036, gadget_id = 70290056, pos = { x = -303.206, y = 120.000, z = -348.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 199037, gadget_id = 70350249, pos = { x = -306.510, y = 120.000, z = -336.500 }, rot = { x = 0.000, y = 232.461, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199038, gadget_id = 70350249, pos = { x = -311.997, y = 120.000, z = -340.717 }, rot = { x = 0.000, y = 205.375, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199039, gadget_id = 70350249, pos = { x = -314.971, y = 120.000, z = -346.987 }, rot = { x = 0.000, y = 168.247, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199040, gadget_id = 70350249, pos = { x = -313.587, y = 120.000, z = -353.637 }, rot = { x = 0.000, y = 147.238, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199041, gadget_id = 70350249, pos = { x = -309.800, y = 120.000, z = -359.522 }, rot = { x = 0.000, y = 144.435, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199042, gadget_id = 70350249, pos = { x = -305.729, y = 120.000, z = -365.216 }, rot = { x = 0.000, y = 143.156, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199043, gadget_id = 70350249, pos = { x = -301.532, y = 120.000, z = -370.817 }, rot = { x = 0.000, y = 142.260, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199044, gadget_id = 70350249, pos = { x = -297.247, y = 120.000, z = -376.353 }, rot = { x = 0.000, y = 142.260, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199045, gadget_id = 70350258, pos = { x = -291.808, y = 120.000, z = -383.777 }, rot = { x = 0.000, y = 321.903, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199046, gadget_id = 70350085, pos = { x = -284.764, y = 122.473, z = -284.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199047, gadget_id = 70360025, pos = { x = -236.164, y = 120.000, z = -455.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199048, gadget_id = 70350258, pos = { x = -260.947, y = 120.000, z = -423.873 }, rot = { x = 0.000, y = 321.903, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199166, gadget_id = 70350085, pos = { x = -236.164, y = 120.000, z = -455.087 }, rot = { x = 0.000, y = 109.800, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 199256, gadget_id = 70211001, pos = { x = -219.348, y = 119.882, z = -490.561 }, rot = { x = 3.761, y = 340.677, z = 0.695 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 199257, gadget_id = 70360001, pos = { x = -294.199, y = 120.000, z = -125.915 }, rot = { x = 0.000, y = 109.800, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	-- 加载suite3
	{ config_id = 199261, shape = RegionShape.SPHERE, radius = 15, pos = { x = -284.788, y = 120.000, z = -279.563 }, area_id = 401 },
	-- 加载suite4
	{ config_id = 199262, shape = RegionShape.SPHERE, radius = 6, pos = { x = -236.164, y = 120.000, z = -455.087 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1199258, name = "GADGET_CREATE_199258", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_199258", action = "action_EVENT_GADGET_CREATE_199258", trigger_count = 0 },
	{ config_id = 1199259, name = "SELECT_OPTION_199259", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_199259", action = "action_EVENT_SELECT_OPTION_199259", trigger_count = 0 },
	-- 加载suite3
	{ config_id = 1199261, name = "ENTER_REGION_199261", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_199261", action = "action_EVENT_ENTER_REGION_199261", trigger_count = 0 },
	-- 加载suite4
	{ config_id = 1199262, name = "ENTER_REGION_199262", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_199262", action = "action_EVENT_ENTER_REGION_199262", trigger_count = 0, tag = "199004199" },
	{ config_id = 1199269, name = "CHALLENGE_SUCCESS_199269", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "199004199", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_199269", trigger_count = 0 },
	{ config_id = 1199271, name = "CHALLENGE_FAIL_199271", event = EventType.EVENT_CHALLENGE_FAIL, source = "199004199", condition = "", action = "action_EVENT_CHALLENGE_FAIL_199271", trigger_count = 0 },
	{ config_id = 1199275, name = "GROUP_LOAD_199275", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_199275", trigger_count = 0 }
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
	end_suite = 4,
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
		gadgets = { 199019, 199020, 199257 },
		regions = { },
		triggers = { "GADGET_CREATE_199258", "SELECT_OPTION_199259", "CHALLENGE_SUCCESS_199269", "CHALLENGE_FAIL_199271", "GROUP_LOAD_199275" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 199014, 199015 },
		gadgets = { 199001, 199002, 199003, 199004, 199005, 199006, 199007, 199008, 199009, 199010, 199011, 199012, 199013, 199016, 199017, 199018, 199021, 199022, 199023, 199024, 199025, 199026, 199046 },
		regions = { 199261 },
		triggers = { "ENTER_REGION_199261" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 199027, 199028, 199029, 199030, 199031, 199032, 199033, 199034, 199035, 199036, 199037, 199038, 199039, 199040, 199041, 199042, 199043, 199044, 199045, 199047, 199048, 199166 },
		regions = { 199262 },
		triggers = { "ENTER_REGION_199262" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 199256 },
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
function condition_EVENT_GADGET_CREATE_199258(context, evt)
	if 199257 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_199258(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_199259(context, evt)
	-- 判断是gadgetid 199257 option_id 177
	if 199257 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_199259(context, evt)
	-- 将configid为 199019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为199004199（该挑战的识别id),挑战内容为135的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 199004199, 135, 70, 4, 199004199, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004199, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199257 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_199261(context, evt)
	if evt.param1 ~= 199261 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_199261(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199046 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004199, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_199262(context, evt)
	if evt.param1 ~= 199262 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_199262(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199166 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_199269(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004199, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 199019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199257 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 199020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004199, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004199, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_199271(context, evt)
	-- 创建id为199257的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199257 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 199019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004199, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004199, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_199275(context, evt)
	-- 创建id为199257的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199257 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 199019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004199, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004199, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end