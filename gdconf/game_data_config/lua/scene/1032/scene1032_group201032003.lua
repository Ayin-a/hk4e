-- 基础信息
local base_info = {
	group_id = 201032003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3012, monster_id = 21020201, pos = { x = -59.988, y = 251.942, z = -82.195 }, rot = { x = 0.000, y = 61.802, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 3013, monster_id = 21020201, pos = { x = -60.325, y = 251.915, z = -77.274 }, rot = { x = 0.000, y = 133.069, z = 0.000 }, level = 1, affix = { 1101 } },
	{ config_id = 3014, monster_id = 21030401, pos = { x = -54.389, y = 251.910, z = -79.499 }, rot = { x = 0.000, y = 269.795, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 } },
	{ config_id = 3015, monster_id = 21010501, pos = { x = -55.559, y = 251.901, z = -81.862 }, rot = { x = 0.000, y = 334.841, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 32 },
	{ config_id = 3016, monster_id = 21011001, pos = { x = -55.829, y = 251.893, z = -76.919 }, rot = { x = 0.000, y = 220.196, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70360097, pos = { x = -57.995, y = 255.107, z = -68.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70360097, pos = { x = -67.898, y = 260.254, z = -79.839 }, rot = { x = 0.257, y = 0.001, z = 0.359 }, level = 1 },
	{ config_id = 3003, gadget_id = 70360097, pos = { x = -65.167, y = 258.345, z = -70.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70900039, pos = { x = -67.840, y = 261.094, z = -80.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3006, gadget_id = 70900201, pos = { x = -24.823, y = 265.139, z = -120.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70211012, pos = { x = -24.653, y = 262.985, z = -121.028 }, rot = { x = 0.000, y = 148.451, z = 0.000 }, level = 11, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 3020, gadget_id = 70900201, pos = { x = -67.563, y = 263.061, z = -80.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3007, shape = RegionShape.SPHERE, radius = 7, pos = { x = -24.946, y = 263.021, z = -120.870 } }
}

-- 触发器
triggers = {
	{ config_id = 1003005, name = "GADGET_STATE_CHANGE_3005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3005", action = "action_EVENT_GADGET_STATE_CHANGE_3005" },
	{ config_id = 1003007, name = "ENTER_REGION_3007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3007", action = "action_EVENT_ENTER_REGION_3007" },
	{ config_id = 1003017, name = "ANY_MONSTER_DIE_3017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3017", action = "action_EVENT_ANY_MONSTER_DIE_3017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "stageFlag", value = 0, no_refresh = false }
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
		gadgets = { 3001, 3002, 3003, 3004, 3019 },
		regions = { 3007 },
		triggers = { "GADGET_STATE_CHANGE_3005", "ENTER_REGION_3007", "ANY_MONSTER_DIE_3017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3012, 3013, 3014, 3015, 3016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 3020 },
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
function condition_EVENT_GADGET_STATE_CHANGE_3005(context, evt)
	if 3004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032003, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3007(context, evt)
	if evt.param1 ~= 3007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032005, 2)
	
	-- 改变指定group组201032005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201032005, 5002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3017(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201032003) ~= 0 then
		return false
	end
	
	-- 判断变量"stageFlag"为1
	if ScriptLib.GetGroupVariableValue(context, "stageFlag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3017(context, evt)
	-- 将本组内变量名为 "stageFlag" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stageFlag", 2, 201032003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032003, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201032005, 3)
	
	-- 将configid为 3019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end