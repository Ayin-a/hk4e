-- 基础信息
local base_info = {
	group_id = 133302488
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 488015, monster_id = 26090401, pos = { x = 145.374, y = 256.557, z = 2293.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 488020, monster_id = 26090801, pos = { x = 150.510, y = 258.437, z = 2299.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 488021, monster_id = 26090701, pos = { x = 131.856, y = 255.318, z = 2291.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 488022, monster_id = 26090201, pos = { x = 137.514, y = 258.385, z = 2301.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 488001, gadget_id = 70320004, pos = { x = 145.659, y = 259.190, z = 2301.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 488002, gadget_id = 70230113, pos = { x = 133.850, y = 265.187, z = 2309.564 }, rot = { x = 28.455, y = 185.476, z = 97.210 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 488003, gadget_id = 70230112, pos = { x = 134.864, y = 265.047, z = 2310.167 }, rot = { x = 0.636, y = 61.249, z = 52.907 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 488004, gadget_id = 70330216, pos = { x = 144.146, y = 258.483, z = 2299.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 488005, gadget_id = 70211001, pos = { x = 146.232, y = 259.633, z = 2302.979 }, rot = { x = 0.000, y = 202.045, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 488012, gadget_id = 70230113, pos = { x = 132.788, y = 265.335, z = 2308.970 }, rot = { x = 56.752, y = 136.793, z = 44.313 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 488013, gadget_id = 70230113, pos = { x = 132.821, y = 264.173, z = 2309.028 }, rot = { x = 355.732, y = 214.623, z = 112.852 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 488017, gadget_id = 70230113, pos = { x = 132.982, y = 264.909, z = 2309.212 }, rot = { x = 327.675, y = 8.940, z = 100.774 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 各种加其他变量
	{ config_id = 1488006, name = "GROUP_LOAD_488006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_488006", action = "action_EVENT_GROUP_LOAD_488006", trigger_count = 0 },
	{ config_id = 1488010, name = "GADGET_STATE_CHANGE_488010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_488010", action = "action_EVENT_GADGET_STATE_CHANGE_488010", trigger_count = 0 },
	-- 挑战成功
	{ config_id = 1488019, name = "ANY_MONSTER_DIE_488019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_488019", action = "action_EVENT_ANY_MONSTER_DIE_488019" }
}

-- 变量
variables = {
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 488011, gadget_id = 70220107, pos = { x = 134.698, y = 259.542, z = 2304.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 488014, gadget_id = 70220005, pos = { x = 148.987, y = 258.266, z = 2287.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 488016, gadget_id = 70220107, pos = { x = 153.818, y = 257.879, z = 2299.129 }, rot = { x = 347.152, y = 0.385, z = 356.582 }, level = 27, area_id = 20 },
		{ config_id = 488018, gadget_id = 70220107, pos = { x = 122.986, y = 260.485, z = 2292.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
	},
	triggers = {
		{ config_id = 1488007, name = "GROUP_LOAD_488007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "" }
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
		gadgets = { 488001, 488002, 488003, 488004, 488012, 488013, 488017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_488010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 488015, 488020, 488021, 488022 },
		gadgets = { 488002, 488003, 488004, 488012, 488013, 488017 },
		regions = { },
		triggers = { "GROUP_LOAD_488006", "ANY_MONSTER_DIE_488019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GROUP_LOAD_488006(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_488006(context, evt)
	-- 改变指定group组133302065中， configid为65022的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302065, 65022, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为488005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 488005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_488010(context, evt)
	if 488001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_488010(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302488, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_488019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_488019(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为488005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 488005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组133302065中， configid为65022的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133302065, 65022, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "paimon1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "paimon1", 1, 133302487) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 488003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 488003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 488002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 488002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 488012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 488012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 488013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 488013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 488017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 488017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=133.8497, y=265.187, z=2309.564}，持续时间为1秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=133.8497, y=265.187, z=2309.564}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 1, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end