-- 基础信息
local base_info = {
	group_id = 133312003
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
	{ config_id = 3001, gadget_id = 70330259, pos = { x = -3143.199, y = 60.326, z = 4472.532 }, rot = { x = 1.625, y = 108.161, z = 340.003 }, level = 32, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 3004, gadget_id = 70330259, pos = { x = -3010.052, y = 6.190, z = 4357.463 }, rot = { x = 17.081, y = 208.659, z = 354.490 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 28 },
	{ config_id = 3005, gadget_id = 70330259, pos = { x = -2985.637, y = 5.873, z = 4403.554 }, rot = { x = 356.801, y = 330.483, z = 345.036 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 28 },
	{ config_id = 3006, gadget_id = 70330259, pos = { x = -3057.971, y = 26.664, z = 4391.153 }, rot = { x = 9.876, y = 265.163, z = 3.729 }, level = 1, isOneoff = true, persistent = true, area_id = 28 },
	{ config_id = 3007, gadget_id = 70330259, pos = { x = -3043.422, y = 28.670, z = 4469.993 }, rot = { x = 357.003, y = 287.567, z = 351.109 }, level = 1, isOneoff = true, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003003, name = "ANY_GADGET_DIE_3003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3003", action = "action_EVENT_ANY_GADGET_DIE_3003" },
	-- 7
	{ config_id = 1003008, name = "ANY_GADGET_DIE_3008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3008", action = "action_EVENT_ANY_GADGET_DIE_3008", trigger_count = 0 },
	-- 8
	{ config_id = 1003009, name = "ANY_GADGET_DIE_3009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3009", action = "action_EVENT_ANY_GADGET_DIE_3009", trigger_count = 0 },
	-- 9
	{ config_id = 1003010, name = "ANY_GADGET_DIE_3010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3010", action = "action_EVENT_ANY_GADGET_DIE_3010", trigger_count = 0 },
	-- 10
	{ config_id = 1003011, name = "ANY_GADGET_DIE_3011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3011", action = "action_EVENT_ANY_GADGET_DIE_3011", trigger_count = 0 },
	-- 11
	{ config_id = 1003012, name = "ANY_GADGET_DIE_3012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_3012", action = "action_EVENT_ANY_GADGET_DIE_3012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 3002, gadget_id = 70211111, pos = { x = -3043.256, y = 22.944, z = 4432.401 }, rot = { x = 12.140, y = 119.780, z = 1.852 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
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
		gadgets = { 3001, 3004, 3005, 3006, 3007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_3003", "ANY_GADGET_DIE_3008", "ANY_GADGET_DIE_3009", "ANY_GADGET_DIE_3010", "ANY_GADGET_DIE_3011", "ANY_GADGET_DIE_3012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_GADGET_DIE_3003(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133312003}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133312003, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3008(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3008(context, evt)
	-- 将本组内变量名为 "stone07" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone07", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3009(context, evt)
	if 3007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3009(context, evt)
	-- 将本组内变量名为 "stone07" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone08", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3010(context, evt)
	if 3006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3010(context, evt)
	-- 将本组内变量名为 "stone07" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone09", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3011(context, evt)
	if 3005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3011(context, evt)
	-- 将本组内变量名为 "stone07" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone10", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_3012(context, evt)
	if 3004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_3012(context, evt)
	-- 将本组内变量名为 "stone07" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone11", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end