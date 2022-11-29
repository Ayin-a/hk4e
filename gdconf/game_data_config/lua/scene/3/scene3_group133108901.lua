-- 基础信息
local base_info = {
	group_id = 133108901
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 901001, monster_id = 21010201, pos = { x = -128.963, y = 200.660, z = -855.405 }, rot = { x = 0.000, y = 223.955, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 9016, area_id = 7 },
	{ config_id = 901002, monster_id = 21010501, pos = { x = -133.536, y = 201.207, z = -857.542 }, rot = { x = 0.000, y = 35.589, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 32, area_id = 7 },
	{ config_id = 901003, monster_id = 21010201, pos = { x = -132.697, y = 200.761, z = -850.492 }, rot = { x = 0.000, y = 271.606, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 9016, area_id = 7 },
	{ config_id = 901004, monster_id = 21010901, pos = { x = -124.178, y = 200.101, z = -853.176 }, rot = { x = 0.000, y = 271.103, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 32, area_id = 7 },
	{ config_id = 901006, monster_id = 21020101, pos = { x = -127.338, y = 200.177, z = -849.874 }, rot = { x = 0.000, y = 223.955, z = 0.000 }, level = 35, drop_id = 1000100, pose_id = 401, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 901007, gadget_id = 70211012, pos = { x = -128.725, y = 200.536, z = -853.389 }, rot = { x = 0.000, y = 0.000, z = 353.470 }, level = 26, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1901005, name = "ANY_MONSTER_DIE_901005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_901005", action = "action_EVENT_ANY_MONSTER_DIE_901005", trigger_count = 0 },
	{ config_id = 1901009, name = "GADGET_STATE_CHANGE_901009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_901009", action = "action_EVENT_GADGET_STATE_CHANGE_901009", trigger_count = 0 }
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
		monsters = { 901001, 901002, 901003, 901004, 901006 },
		gadgets = { 901007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_901005", "GADGET_STATE_CHANGE_901009" },
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
function condition_EVENT_ANY_MONSTER_DIE_901005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_901005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310890101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 901007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 901007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_901009(context, evt)
	if 901007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_901009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310890102") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end