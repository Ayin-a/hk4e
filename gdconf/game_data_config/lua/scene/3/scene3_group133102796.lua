-- 基础信息
local base_info = {
	group_id = 133102796
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 796002, monster_id = 22010101, pos = { x = 1248.979, y = 202.253, z = -72.032 }, rot = { x = 0.000, y = 129.326, z = 0.000 }, level = 16, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 5 },
	{ config_id = 796003, monster_id = 22010201, pos = { x = 1254.163, y = 201.832, z = -72.942 }, rot = { x = 0.000, y = 268.173, z = 0.000 }, level = 16, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 5 },
	{ config_id = 796004, monster_id = 22010301, pos = { x = 1250.733, y = 202.047, z = -76.964 }, rot = { x = 359.789, y = 4.605, z = 357.934 }, level = 16, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 796001, gadget_id = 70900051, pos = { x = 1251.081, y = 202.287, z = -74.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, state = GadgetState.GearStop, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1796005, name = "ANY_MONSTER_DIE_796005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_796005", action = "action_EVENT_ANY_MONSTER_DIE_796005" },
	{ config_id = 1796006, name = "GADGET_STATE_CHANGE_796006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_796006", action = "action_EVENT_GADGET_STATE_CHANGE_796006" }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 796002, 796003, 796004 },
		gadgets = { 796001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_796005", "GADGET_STATE_CHANGE_796006" },
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
function condition_EVENT_ANY_MONSTER_DIE_796005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_796005(context, evt)
	-- 将configid为 796001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 796001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_796006(context, evt)
	if 796001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_796006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monster_puzzle") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end