-- 基础信息
local base_info = {
	group_id = 133313045
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
	{ config_id = 45001, gadget_id = 70290640, pos = { x = -566.316, y = 134.426, z = 5813.981 }, rot = { x = 340.952, y = 66.478, z = 16.919 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	{ config_id = 45002, gadget_id = 70350451, pos = { x = -605.472, y = 113.529, z = 5795.884 }, rot = { x = 16.208, y = 255.781, z = 9.543 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7310307完成，显示屏不可交互
	{ config_id = 1045003, name = "QUEST_FINISH_45003", event = EventType.EVENT_QUEST_FINISH, source = "7310307", condition = "", action = "action_EVENT_QUEST_FINISH_45003", trigger_count = 0 },
	-- 7310340完成，显示屏加交互
	{ config_id = 1045004, name = "QUEST_FINISH_45004", event = EventType.EVENT_QUEST_FINISH, source = "7310340", condition = "", action = "action_EVENT_QUEST_FINISH_45004", trigger_count = 0 },
	-- 显示屏准备完成
	{ config_id = 1045005, name = "LUA_NOTIFY_45005", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "", action = "action_EVENT_LUA_NOTIFY_45005", trigger_count = 0 }
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
		gadgets = { 45001, 45002 },
		regions = { },
		triggers = { "QUEST_FINISH_45003", "QUEST_FINISH_45004", "LUA_NOTIFY_45005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发操作
function action_EVENT_QUEST_FINISH_45003(context, evt)
	-- 将configid为 45001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_45004(context, evt)
	-- 将configid为 45001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_45005(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7310355")
	
	return 0
end