-- 基础信息
local base_info = {
	group_id = 133212002
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
	{ config_id = 2002, npc_id = 20234, pos = { x = -3616.421, y = 253.974, z = -2241.552 }, rot = { x = 358.223, y = 355.757, z = 358.567 }, area_id = 13 },
	{ config_id = 2003, npc_id = 20252, pos = { x = -3616.421, y = 253.974, z = -2241.552 }, rot = { x = 358.223, y = 355.757, z = 358.567 }, area_id = 13 },
	{ config_id = 2004, npc_id = 20248, pos = { x = -3597.893, y = 250.161, z = -2236.880 }, rot = { x = 359.167, y = 25.482, z = 357.874 }, area_id = 13 },
	{ config_id = 2005, npc_id = 20255, pos = { x = -3616.421, y = 253.974, z = -2241.552 }, rot = { x = 358.223, y = 355.757, z = 358.567 }, area_id = 13 }
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70290122, pos = { x = -3616.802, y = 252.782, z = -2241.817 }, rot = { x = 0.304, y = 54.500, z = 357.737 }, level = 35, persistent = true, area_id = 13 },
	{ config_id = 2008, gadget_id = 70310006, pos = { x = -3592.462, y = 250.151, z = -2238.677 }, rot = { x = 354.319, y = 337.210, z = 357.838 }, level = 27, area_id = 13 },
	{ config_id = 2009, gadget_id = 70950111, pos = { x = -3619.583, y = 253.012, z = -2240.930 }, rot = { x = 276.234, y = 133.463, z = 278.375 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002006, name = "QUEST_FINISH_2006", event = EventType.EVENT_QUEST_FINISH, source = "7212905", condition = "", action = "action_EVENT_QUEST_FINISH_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "QUEST_FINISH_2007", event = EventType.EVENT_QUEST_FINISH, source = "7212906", condition = "", action = "action_EVENT_QUEST_FINISH_2007", trigger_count = 0 }
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
		gadgets = { 2001, 2008, 2009 },
		regions = { },
		triggers = { "QUEST_FINISH_2006", "QUEST_FINISH_2007" },
		npcs = { 2002, 2003, 2004, 2005 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2001, 2008, 2009 },
		regions = { },
		triggers = { "QUEST_FINISH_2006", "QUEST_FINISH_2007" },
		npcs = { 2002, 2003, 2005 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_2006(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2007(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end