-- 基础信息
local base_info = {
	group_id = 155005041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41004, monster_id = 26050901, pos = { x = 856.676, y = 215.900, z = 164.010 }, rot = { x = 359.560, y = 136.390, z = 0.042 }, level = 36, drop_id = 1000100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41001, gadget_id = 70900049, pos = { x = 867.917, y = 216.275, z = 163.366 }, rot = { x = 0.000, y = 183.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 41002, gadget_id = 70350004, pos = { x = 858.249, y = 215.080, z = 162.363 }, rot = { x = 0.000, y = 136.056, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 41006, gadget_id = 70210105, pos = { x = 852.770, y = 215.900, z = 163.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 41007, gadget_id = 70210105, pos = { x = 852.116, y = 215.900, z = 164.326 }, rot = { x = 0.000, y = 52.376, z = 0.000 }, level = 16, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 监测机关被开启
	{ config_id = 1041003, name = "GADGET_STATE_CHANGE_41003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41003", action = "action_EVENT_GADGET_STATE_CHANGE_41003" },
	-- 监测水龙蜥死亡
	{ config_id = 1041005, name = "ANY_MONSTER_DIE_41005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41005", action = "action_EVENT_ANY_MONSTER_DIE_41005" },
	-- 监测机关被开启
	{ config_id = 1041008, name = "GADGET_CREATE_41008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_41008", action = "action_EVENT_GADGET_CREATE_41008", trigger_count = 0 }
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
		gadgets = { 41001, 41002, 41006, 41007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_41003", "ANY_MONSTER_DIE_41005", "GADGET_CREATE_41008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 怪物,
		monsters = { 41004 },
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
		gadgets = { 41001, 41002, 41006, 41007 },
		regions = { },
		triggers = { "GADGET_CREATE_41008" },
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
function condition_EVENT_GADGET_STATE_CHANGE_41003(context, evt)
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41003(context, evt)
	-- 改变指定group组155005041中， configid为41002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155005041, 41002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005041, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41005(context, evt)
	--判断死亡怪物的configid是否为 41004
	if evt.param1 ~= 41004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41005(context, evt)
	-- 针对当前group内变量名为 "Jiguan" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Jiguan", 1, 155005044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005041, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_41008(context, evt)
	if 41001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_41008(context, evt)
	-- 改变指定group组155005041中， configid为41002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 155005041, 41002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end