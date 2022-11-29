-- 基础信息
local base_info = {
	group_id = 133217106
}

-- DEFS_MISCS
local defs = {
	-- 该参数用来确认合法对子地板
	FloorGadgetID = {70310062,70310063,70310064,70310065,70310087,70310088},
	FloorNum = 6,
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
	[106001] = { config_id = 106001, gadget_id = 70310062, pos = { x = -4432.053, y = 190.304, z = -3777.768 }, rot = { x = 354.668, y = 353.946, z = 355.875 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[106002] = { config_id = 106002, gadget_id = 70310062, pos = { x = -4427.089, y = 190.863, z = -3766.384 }, rot = { x = 354.702, y = 354.421, z = 355.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[106003] = { config_id = 106003, gadget_id = 70310063, pos = { x = -4432.697, y = 190.872, z = -3771.664 }, rot = { x = 354.734, y = 354.856, z = 355.791 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[106004] = { config_id = 106004, gadget_id = 70310063, pos = { x = -4422.015, y = 189.519, z = -3777.343 }, rot = { x = 354.738, y = 354.913, z = 355.786 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[106005] = { config_id = 106005, gadget_id = 70310064, pos = { x = -4438.241, y = 191.148, z = -3773.760 }, rot = { x = 354.703, y = 354.431, z = 355.830 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[106006] = { config_id = 106006, gadget_id = 70310064, pos = { x = -4433.134, y = 191.789, z = -3762.238 }, rot = { x = 354.690, y = 354.275, z = 355.845 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	-- 玩法成功给的宝箱
	[106011] = { config_id = 106011, gadget_id = 70211112, pos = { x = -4432.184, y = 192.476, z = -3752.348 }, rot = { x = 5.150, y = 175.024, z = 4.223 }, level = 26, drop_tag = "解谜中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	[106017] = { config_id = 106017, gadget_id = 70360040, pos = { x = -4433.244, y = 190.722, z = -3784.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 判断成功，成功后宝箱解锁（该玩法没有失败）FloorPlayEnd=1代表玩法已完成。
	{ config_id = 1106010, name = "VARIABLE_CHANGE_106010", event = EventType.EVENT_VARIABLE_CHANGE, source = "FloorPlayEnd", condition = "condition_EVENT_VARIABLE_CHANGE_106010", action = "action_EVENT_VARIABLE_CHANGE_106010" },
	{ config_id = 1106015, name = "VARIABLE_CHANGE_106015", event = EventType.EVENT_VARIABLE_CHANGE, source = "FloorPlayEnd", condition = "condition_EVENT_VARIABLE_CHANGE_106015", action = "action_EVENT_VARIABLE_CHANGE_106015", trigger_count = 0 },
	{ config_id = 1106016, name = "TIME_AXIS_PASS_106016", event = EventType.EVENT_TIME_AXIS_PASS, source = "CutScene", condition = "condition_EVENT_TIME_AXIS_PASS_106016", action = "action_EVENT_TIME_AXIS_PASS_106016", trigger_count = 0 },
	{ config_id = 1106018, name = "GROUP_LOAD_106018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_106018", action = "action_EVENT_GROUP_LOAD_106018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Option", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 106007, gadget_id = 70310065, pos = { x = -4432.147, y = 190.315, z = -3777.682 }, rot = { x = 354.648, y = 353.670, z = 355.901 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
		{ config_id = 106008, gadget_id = 70310065, pos = { x = -4434.510, y = 192.272, z = -3756.968 }, rot = { x = 354.725, y = 354.727, z = 355.803 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
		{ config_id = 106009, gadget_id = 70360170, pos = { x = -4428.791, y = 191.322, z = -3784.332 }, rot = { x = 83.762, y = 322.438, z = 328.112 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1106012, name = "GADGET_CREATE_106012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_106012", action = "action_EVENT_GADGET_CREATE_106012", trigger_count = 0 },
		{ config_id = 1106013, name = "VARIABLE_CHANGE_106013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106013", action = "action_EVENT_VARIABLE_CHANGE_106013", trigger_count = 0 },
		{ config_id = 1106014, name = "ANY_GADGET_DIE_106014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_106014", action = "" }
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
		gadgets = { 106001, 106002, 106003, 106004, 106005, 106006, 106011, 106017 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_106010", "TIME_AXIS_PASS_106016", "GROUP_LOAD_106018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FloorPlayEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106010(context, evt)
	-- 将configid为 106011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Finish", 1, 133217259) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为34 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 34, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"CutScene"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CutScene", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FloorPlayEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106015(context, evt)
	-- 将configid为 106011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 106011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_106016(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_106016(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133217176, monsters = {}, gadgets = {176003,176004,176005,176006,176007,176008} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_106018(context, evt)
	-- 判断变量"FloorPlayEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_106018(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133217176, monsters = {}, gadgets = {176003,176004,176005,176006,176007,176008} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

require "V2_1/WoodFloorPlaySame"