-- 基础信息
local base_info = {
	group_id = 220121012
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
	{ config_id = 12001, gadget_id = 70290267, pos = { x = -36.132, y = -396.120, z = -29.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12002, gadget_id = 70710199, pos = { x = -35.340, y = -396.120, z = -47.872 }, rot = { x = 0.000, y = 99.944, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 对话中切平台状态（待云层）
	{ config_id = 1012003, name = "QUEST_FINISH_12003", event = EventType.EVENT_QUEST_FINISH, source = "1101331", condition = "", action = "action_EVENT_QUEST_FINISH_12003" },
	-- 对话中切小宝显示
	{ config_id = 1012004, name = "QUEST_FINISH_12004", event = EventType.EVENT_QUEST_FINISH, source = "1101334", condition = "", action = "action_EVENT_QUEST_FINISH_12004" }
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
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12001, 12002 },
		regions = { },
		triggers = { "QUEST_FINISH_12003", "QUEST_FINISH_12004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_12003(context, evt)
	-- 将configid为 12001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_12004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121012, EntityType.GADGET, 12002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end