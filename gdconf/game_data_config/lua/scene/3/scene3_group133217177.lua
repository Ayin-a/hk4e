-- 基础信息
local base_info = {
	group_id = 133217177
}

-- DEFS_MISCS
local defs = {
	-- 该参数用来确认合法对子地板
	FloorGadgetID = {70310062,70310063,70310064,70310065,70310087,70310088},
	FloorNum = 8,
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
	[177001] = { config_id = 177001, gadget_id = 70310062, pos = { x = -4440.752, y = 187.561, z = -3747.093 }, rot = { x = 354.718, y = 354.633, z = 355.812 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[177002] = { config_id = 177002, gadget_id = 70310062, pos = { x = -4424.515, y = 185.463, z = -3756.118 }, rot = { x = 354.702, y = 354.421, z = 355.831 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[177003] = { config_id = 177003, gadget_id = 70310063, pos = { x = -4425.519, y = 186.337, z = -3746.821 }, rot = { x = 354.728, y = 354.765, z = 355.799 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[177004] = { config_id = 177004, gadget_id = 70310063, pos = { x = -4434.862, y = 186.649, z = -3752.113 }, rot = { x = 355.604, y = 354.340, z = 355.837 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[177005] = { config_id = 177005, gadget_id = 70310064, pos = { x = -4427.865, y = 185.256, z = -3761.760 }, rot = { x = 354.703, y = 354.431, z = 355.830 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[177006] = { config_id = 177006, gadget_id = 70310064, pos = { x = -4439.986, y = 186.710, z = -3756.344 }, rot = { x = 354.756, y = 355.171, z = 355.762 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[177007] = { config_id = 177007, gadget_id = 70310065, pos = { x = -4433.190, y = 185.972, z = -3758.475 }, rot = { x = 354.709, y = 354.514, z = 355.823 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[177008] = { config_id = 177008, gadget_id = 70310065, pos = { x = -4428.820, y = 186.222, z = -3751.334 }, rot = { x = 354.725, y = 354.727, z = 355.803 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	-- 玩法成功给的宝箱
	[177010] = { config_id = 177010, gadget_id = 70211122, pos = { x = -4440.233, y = 187.117, z = -3751.805 }, rot = { x = 4.250, y = 85.106, z = 354.767 }, level = 26, drop_tag = "解谜高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 判断成功，成功后宝箱解锁（该玩法没有失败）
	{ config_id = 1177011, name = "VARIABLE_CHANGE_177011", event = EventType.EVENT_VARIABLE_CHANGE, source = "FloorPlayEnd", condition = "condition_EVENT_VARIABLE_CHANGE_177011", action = "action_EVENT_VARIABLE_CHANGE_177011" },
	{ config_id = 1177014, name = "TIME_AXIS_PASS_177014", event = EventType.EVENT_TIME_AXIS_PASS, source = "CutScene", condition = "condition_EVENT_TIME_AXIS_PASS_177014", action = "action_EVENT_TIME_AXIS_PASS_177014", trigger_count = 0 },
	{ config_id = 1177015, name = "VARIABLE_CHANGE_177015", event = EventType.EVENT_VARIABLE_CHANGE, source = "FloorPlayEnd", condition = "condition_EVENT_VARIABLE_CHANGE_177015", action = "action_EVENT_VARIABLE_CHANGE_177015", trigger_count = 0 },
	{ config_id = 1177020, name = "GROUP_LOAD_177020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_177020", action = "action_EVENT_GROUP_LOAD_177020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Option", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 177009, gadget_id = 70360170, pos = { x = -4445.192, y = 189.476, z = -3751.083 }, rot = { x = 82.625, y = 312.549, z = 220.289 }, level = 30, area_id = 14 },
		{ config_id = 177016, gadget_id = 70310087, pos = { x = -4424.840, y = 184.161, z = -3772.113 }, rot = { x = 354.689, y = 354.233, z = 355.849 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
		{ config_id = 177017, gadget_id = 70310087, pos = { x = -4435.158, y = 186.690, z = -3751.942 }, rot = { x = 354.723, y = 354.698, z = 355.806 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
		{ config_id = 177018, gadget_id = 70310088, pos = { x = -4425.904, y = 183.305, z = -3782.783 }, rot = { x = 354.673, y = 354.008, z = 355.869 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
		{ config_id = 177019, gadget_id = 70310088, pos = { x = -4433.909, y = 186.044, z = -3758.386 }, rot = { x = 354.771, y = 355.355, z = 355.746 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1177012, name = "GADGET_CREATE_177012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_177012", action = "action_EVENT_GADGET_CREATE_177012", trigger_count = 0 },
		{ config_id = 1177013, name = "VARIABLE_CHANGE_177013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_177013", action = "action_EVENT_VARIABLE_CHANGE_177013", trigger_count = 0 }
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
		gadgets = { 177001, 177002, 177003, 177004, 177005, 177006, 177007, 177008, 177010 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_177011", "TIME_AXIS_PASS_177014", "GROUP_LOAD_177020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_177011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FloorPlayEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_177011(context, evt)
	-- 将configid为 177010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Finish", 1, 133217259) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为35 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 35, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 创建标识为"CutScene"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CutScene", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_177014(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_177014(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133217176, monsters = {}, gadgets = {176002,176009,176010,176011,176012} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_177015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FloorPlayEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_177015(context, evt)
	-- 将configid为 177010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 177010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_177020(context, evt)
	-- 判断变量"FloorPlayEnd"为1
	if ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_177020(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133217176, monsters = {}, gadgets = {176002,176009,176010,176011,176012} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

require "V2_1/WoodFloorPlaySame"