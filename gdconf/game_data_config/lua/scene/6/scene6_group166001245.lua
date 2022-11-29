-- 基础信息
local base_info = {
	group_id = 166001245
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
	{ config_id = 245001, gadget_id = 70290331, pos = { x = 364.574, y = 147.100, z = 1366.876 }, rot = { x = 0.000, y = 233.707, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 245003, gadget_id = 70290331, pos = { x = 361.800, y = 82.000, z = 1357.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 245004, gadget_id = 70211131, pos = { x = 362.086, y = 97.545, z = 1357.467 }, rot = { x = 3.393, y = 272.453, z = 358.034 }, level = 26, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1245002, name = "QUEST_FINISH_245002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_245002" }
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
		gadgets = { 245001 },
		regions = { },
		triggers = { "QUEST_FINISH_245002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 245003, 245004 },
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
function action_EVENT_QUEST_FINISH_245002(context, evt)
	-- 将configid为 245001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end