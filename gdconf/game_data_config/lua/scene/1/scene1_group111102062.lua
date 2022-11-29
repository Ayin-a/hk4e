-- 基础信息
local base_info = {
	group_id = 111102062
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 62008, monster_id = 24010101, pos = { x = 1544.996, y = 257.945, z = -1701.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", affix = { 5181 }, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62001, gadget_id = 70290421, pos = { x = 1544.963, y = 260.000, z = -1701.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, mark_flag = 1 },
	{ config_id = 62002, gadget_id = 70290422, pos = { x = 1552.327, y = 258.053, z = -1699.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62003, gadget_id = 70290422, pos = { x = 1540.291, y = 257.411, z = -1698.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62004, gadget_id = 70290422, pos = { x = 1546.638, y = 258.087, z = -1712.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62007, gadget_id = 70950145, pos = { x = 1544.963, y = 260.000, z = -1701.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1062005, name = "GADGET_STATE_CHANGE_62005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62005", action = "action_EVENT_GADGET_STATE_CHANGE_62005" },
	{ config_id = 1062006, name = "SELECT_OPTION_62006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62006", action = "action_EVENT_SELECT_OPTION_62006" },
	{ config_id = 1062009, name = "GROUP_LOAD_62009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_62009" },
	{ config_id = 1062010, name = "TIME_AXIS_PASS_62010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_62010", action = "action_EVENT_TIME_AXIS_PASS_62010" }
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
function condition_EVENT_GADGET_STATE_CHANGE_62005(context, evt)
	if 62001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111102062, 62007, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62006(context, evt)
	-- 判断是gadgetid 62007 option_id 72
	if 62007 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_62006(context, evt)
	-- 将configid为 62001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111102062 ；指定config：62007；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111102062, 62007, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 通知groupid为111102062中,configid为：62008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 62008, 111102062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_62009(context, evt)
	-- 创建标识为"waitAWhile"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "waitAWhile", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_62010(context, evt)
	if "waitAWhile" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_62010(context, evt)
	-- 设置封印圈的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 62001, "SGV_GRASSSEAL_MARK", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 62001, "GV_SEAL_ENABLED", 3)
		
		-- 设置能量桩1的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 62002, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 62002, "SGV_GRASSSEAL_ATTACHPOINT", 1)
	
		-- 设置能量桩2的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 62003, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 62003, "SGV_GRASSSEAL_ATTACHPOINT", 2)
	
		-- 设置能量桩3的globalvalue
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 62004, "SGV_GRASSSEAL_TARGET", 1)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, 62004, "SGV_GRASSSEAL_ATTACHPOINT", 3)
		
		return 0
end