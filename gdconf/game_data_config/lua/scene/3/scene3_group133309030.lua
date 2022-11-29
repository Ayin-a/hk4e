-- 基础信息
local base_info = {
	group_id = 133309030
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
	{ config_id = 30002, gadget_id = 70330271, pos = { x = -2349.300, y = 186.220, z = 5547.080 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 找回四个火种激活棺材和电梯
	{ config_id = 1030001, name = "QUEST_START_30001", event = EventType.EVENT_QUEST_START, source = "7305413", condition = "", action = "action_EVENT_QUEST_START_30001", trigger_count = 0 }
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
		gadgets = { 30002 },
		regions = { },
		triggers = { "QUEST_START_30001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_30001(context, evt)
	-- 将configid为 30002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end