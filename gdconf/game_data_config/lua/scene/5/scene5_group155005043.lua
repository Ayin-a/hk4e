-- 基础信息
local base_info = {
	group_id = 155005043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 26051001, pos = { x = 902.280, y = 216.910, z = 137.419 }, rot = { x = 0.000, y = 315.031, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43002, gadget_id = 70900009, pos = { x = 896.282, y = 216.492, z = 155.132 }, rot = { x = 0.000, y = 0.565, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 43003, gadget_id = 70350004, pos = { x = 899.018, y = 217.429, z = 141.964 }, rot = { x = 357.015, y = 315.941, z = 359.847 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 43006, gadget_id = 70210102, pos = { x = 896.817, y = 217.072, z = 133.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050155, drop_count = 1, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 监测机关被开启
	{ config_id = 1043004, name = "GADGET_STATE_CHANGE_43004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_43004", action = "action_EVENT_GADGET_STATE_CHANGE_43004" },
	-- 监测水龙蜥死亡
	{ config_id = 1043005, name = "ANY_MONSTER_DIE_43005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43005", action = "action_EVENT_ANY_MONSTER_DIE_43005" },
	-- 监测机关被开启
	{ config_id = 1043007, name = "GADGET_CREATE_43007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_43007", action = "action_EVENT_GADGET_CREATE_43007", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = 机关&铁门,
		monsters = { },
		gadgets = { 43002, 43003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_43004", "ANY_MONSTER_DIE_43005", "GADGET_CREATE_43007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 怪物,
		monsters = { 43001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 铁门&机关&奖励,
		monsters = { },
		gadgets = { 43002, 43003, 43006 },
		regions = { },
		triggers = { "GADGET_CREATE_43007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_43004(context, evt)
	if 43002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_43004(context, evt)
	-- 改变指定group组155005043中， configid为43003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155005043, 43003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005043, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43005(context, evt)
	--判断死亡怪物的configid是否为 43001
	if evt.param1 ~= 43001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43005(context, evt)
	-- 针对当前group内变量名为 "Jiguan" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Jiguan", 1, 155005044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005043, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_43007(context, evt)
	if 43002 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_43007(context, evt)
	-- 改变指定group组155005043中， configid为43003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155005043, 43003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end