-- 基础信息
local base_info = {
	group_id = 133106313
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
	{ config_id = 313011, npc_id = 20139, pos = { x = -847.045, y = 190.952, z = 1290.448 }, rot = { x = 0.000, y = 269.358, z = 0.000 }, area_id = 8 }
}

-- 装置
gadgets = {
	{ config_id = 313001, gadget_id = 70710091, pos = { x = -846.997, y = 189.979, z = 1290.403 }, rot = { x = 0.007, y = 271.186, z = 359.716 }, level = 32, area_id = 8 },
	{ config_id = 313002, gadget_id = 70211131, pos = { x = -848.459, y = 190.504, z = 1290.417 }, rot = { x = 0.000, y = 267.240, z = 0.000 }, level = 26, chest_drop_id = 2001700, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 313003, gadget_id = 70210055, pos = { x = -848.364, y = 190.533, z = 1290.360 }, rot = { x = 270.000, y = 87.027, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 313004, gadget_id = 70210055, pos = { x = -812.280, y = 188.062, z = 1292.666 }, rot = { x = 270.000, y = 85.403, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 313005, gadget_id = 70210055, pos = { x = -834.686, y = 190.948, z = 1305.302 }, rot = { x = 270.000, y = 47.444, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 313006, gadget_id = 70210055, pos = { x = -875.424, y = 210.294, z = 1270.379 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 313007, gadget_id = 70210055, pos = { x = -921.931, y = 183.484, z = 1280.992 }, rot = { x = 270.000, y = 349.916, z = 0.000 }, level = 32, persistent = true, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313008, name = "VARIABLE_CHANGE_313008", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_313008", action = "action_EVENT_VARIABLE_CHANGE_313008" },
	{ config_id = 1313009, name = "GADGET_STATE_CHANGE_313009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_313009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 313001, 313003, 313004, 313005, 313006, 313007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_313008", "GADGET_STATE_CHANGE_313009" },
		npcs = { 313011 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_313008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_313008(context, evt)
	-- 创建id为313002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 313002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为310631301 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310631301, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end