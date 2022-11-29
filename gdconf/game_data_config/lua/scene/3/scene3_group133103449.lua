-- 基础信息
local base_info = {
	group_id = 133103449
}

-- Trigger变量
local defs = {
	group_id = 133103449,
	gadget_target_1 = 449003,
	monster_mole_1 = 449001,
	gadget_home_1 = 449004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 449001, monster_id = 28050202, pos = { x = 389.302, y = 223.068, z = 1050.932 }, rot = { x = 355.474, y = 29.356, z = 2.575 }, level = 32, drop_tag = "魔法生物", area_id = 6 },
	{ config_id = 449002, monster_id = 28050202, pos = { x = 404.044, y = 222.690, z = 1042.340 }, rot = { x = 23.101, y = 29.850, z = 1.922 }, level = 32, drop_tag = "魔法生物", pose_id = 3, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 449003, gadget_id = 70360027, pos = { x = 404.005, y = 222.595, z = 1042.550 }, rot = { x = 10.009, y = 104.782, z = 7.150 }, level = 32, mark_flag = 3, area_id = 6 },
	{ config_id = 449004, gadget_id = 70360015, pos = { x = 390.742, y = 223.583, z = 1041.684 }, rot = { x = 2.167, y = 14.124, z = 2.389 }, level = 32, mark_flag = 2, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1449005, name = "ANY_MONSTER_DIE_449005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_449005", action = "action_EVENT_ANY_MONSTER_DIE_449005" },
	{ config_id = 1449006, name = "SELECT_OPTION_449006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_449006", action = "action_EVENT_SELECT_OPTION_449006", trigger_count = 0 },
	{ config_id = 1449007, name = "GADGET_STATE_CHANGE_449007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449007", action = "action_EVENT_GADGET_STATE_CHANGE_449007", trigger_count = 0 },
	{ config_id = 1449008, name = "GADGET_STATE_CHANGE_449008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449008", action = "action_EVENT_GADGET_STATE_CHANGE_449008", trigger_count = 0 },
	{ config_id = 1449009, name = "GROUP_LOAD_449009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_449009", action = "action_EVENT_GROUP_LOAD_449009", trigger_count = 0 },
	{ config_id = 1449010, name = "GROUP_LOAD_449010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_449010", action = "action_EVENT_GROUP_LOAD_449010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "HoleHasShowed", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { 449001 },
		gadgets = { 449003, 449004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_449005", "SELECT_OPTION_449006", "GADGET_STATE_CHANGE_449007", "GADGET_STATE_CHANGE_449008", "GROUP_LOAD_449009", "GROUP_LOAD_449010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 449002 },
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
function condition_EVENT_ANY_MONSTER_DIE_449005(context, evt)
	--判断死亡怪物的configid是否为 449002
	if evt.param1 ~= 449002 then
	    return false
	 end
	  
	
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_449005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_449006(context, evt)
	-- 判断是gadgetid 449004 option_id 171
	if 449004 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_449006(context, evt)
	-- 改变指定group组133103449中， configid为449004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133103449, 449004, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 133103449 ；指定config：449004；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103449, 449004, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_449007(context, evt)
	if 449004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_449007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103449, 449004, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "HoleHasShowed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "HoleHasShowed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_449008(context, evt)
	if 449003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_449008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103449, 3)
	
	-- 将configid为 449004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 449004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_449009(context, evt)
	-- 判断变量"HoleHasShowed"为0
	if ScriptLib.GetGroupVariableValue(context, "HoleHasShowed") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_449009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 449001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103449, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_449010(context, evt)
	-- 判断变量"HoleHasShowed"为1
	if ScriptLib.GetGroupVariableValue(context, "HoleHasShowed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_449010(context, evt)
	-- 将configid为 449004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 449004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103449, 3)
	
	-- 将configid为 449003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 449003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end