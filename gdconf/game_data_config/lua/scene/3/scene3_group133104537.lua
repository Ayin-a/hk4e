-- 基础信息
local base_info = {
	group_id = 133104537
}

-- Trigger变量
local defs = {
	group_id = 133104537,
	gadget_target_1 = 537003,
	monster_mole_1 = 537001,
	gadget_home_1 = 537004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 537001, monster_id = 28050201, pos = { x = 475.623, y = 225.853, z = 975.226 }, rot = { x = 0.000, y = 29.457, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 6 },
	{ config_id = 537002, monster_id = 28050201, pos = { x = 484.383, y = 226.590, z = 963.595 }, rot = { x = 0.000, y = 29.457, z = 0.000 }, level = 32, drop_tag = "魔法生物", pose_id = 3, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 537003, gadget_id = 70360027, pos = { x = 484.501, y = 226.339, z = 964.164 }, rot = { x = 0.000, y = 104.100, z = 0.000 }, level = 32, mark_flag = 3, area_id = 6 },
	{ config_id = 537004, gadget_id = 70360015, pos = { x = 475.753, y = 225.683, z = 975.445 }, rot = { x = 0.000, y = 15.100, z = 0.000 }, level = 32, mark_flag = 2, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1537005, name = "ANY_MONSTER_DIE_537005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_537005", action = "action_EVENT_ANY_MONSTER_DIE_537005" },
	{ config_id = 1537006, name = "SELECT_OPTION_537006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_537006", action = "action_EVENT_SELECT_OPTION_537006", trigger_count = 0 },
	{ config_id = 1537007, name = "GADGET_STATE_CHANGE_537007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_537007", action = "action_EVENT_GADGET_STATE_CHANGE_537007", trigger_count = 0 },
	{ config_id = 1537008, name = "GADGET_STATE_CHANGE_537008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_537008", action = "action_EVENT_GADGET_STATE_CHANGE_537008", trigger_count = 0 },
	{ config_id = 1537009, name = "GROUP_LOAD_537009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_537009", action = "action_EVENT_GROUP_LOAD_537009", trigger_count = 0 },
	{ config_id = 1537010, name = "GROUP_LOAD_537010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_537010", action = "action_EVENT_GROUP_LOAD_537010", trigger_count = 0 }
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
		monsters = { 537001 },
		gadgets = { 537003, 537004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_537005", "SELECT_OPTION_537006", "GADGET_STATE_CHANGE_537007", "GADGET_STATE_CHANGE_537008", "GROUP_LOAD_537009", "GROUP_LOAD_537010" },
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
		monsters = { 537002 },
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
function condition_EVENT_ANY_MONSTER_DIE_537005(context, evt)
	--判断死亡怪物的configid是否为 537002
	if evt.param1 ~= 537002 then
	    return false
	 end
	  
	
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_537005(context, evt)
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
function condition_EVENT_SELECT_OPTION_537006(context, evt)
	-- 判断是gadgetid 537004 option_id 171
	if 537004 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_537006(context, evt)
	-- 改变指定group组133104537中， configid为537004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104537, 537004, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 133104537 ；指定config：537004；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104537, 537004, 171) then
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
function condition_EVENT_GADGET_STATE_CHANGE_537007(context, evt)
	if 537004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_537007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104537, 537004, {171}) then
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
function condition_EVENT_GADGET_STATE_CHANGE_537008(context, evt)
	if 537003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_537008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104537, 3)
	
	-- 将configid为 537004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 537004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_537009(context, evt)
	-- 判断变量"HoleHasShowed"为0
	if ScriptLib.GetGroupVariableValue(context, "HoleHasShowed") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_537009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 537001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104537, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_537010(context, evt)
	-- 判断变量"HoleHasShowed"为1
	if ScriptLib.GetGroupVariableValue(context, "HoleHasShowed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_537010(context, evt)
	-- 将configid为 537004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 537004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104537, 3)
	
	-- 将configid为 537003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 537003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end