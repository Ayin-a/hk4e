-- 基础信息
local base_info = {
	group_id = 133101206
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
	{ config_id = 206002, gadget_id = 70710186, pos = { x = 1055.147, y = 308.574, z = 1351.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 206003, gadget_id = 70710186, pos = { x = 1055.152, y = 308.560, z = 1351.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStop, area_id = 6 },
	{ config_id = 206004, gadget_id = 70710186, pos = { x = 1055.172, y = 308.583, z = 1351.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1206001, name = "QUEST_FINISH_206001", event = EventType.EVENT_QUEST_FINISH, source = "1120018", condition = "", action = "action_EVENT_QUEST_FINISH_206001" }
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
		monsters = { },
		gadgets = { 206002 },
		regions = { },
		triggers = { "QUEST_FINISH_206001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 206003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 206004 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_206001(context, evt)
	-- 将configid为 70710186 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70710186, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end