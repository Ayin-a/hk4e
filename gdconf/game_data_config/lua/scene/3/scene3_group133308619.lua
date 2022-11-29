-- 基础信息
local base_info = {
	group_id = 133308619
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 619001, monster_id = 20011201, pos = { x = -2025.109, y = 178.325, z = 4777.219 }, rot = { x = 0.000, y = 177.585, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 619002, monster_id = 20011201, pos = { x = -2020.700, y = 177.614, z = 4774.398 }, rot = { x = 0.000, y = 195.753, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 619003, monster_id = 20011201, pos = { x = -2026.774, y = 177.956, z = 4773.086 }, rot = { x = 0.000, y = 137.857, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 619005, gadget_id = 70330396, pos = { x = -2024.028, y = 177.623, z = 4773.677 }, rot = { x = 352.695, y = 9.802, z = 0.268 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1619004, name = "GADGET_STATE_CHANGE_619004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_619004", action = "action_EVENT_GADGET_STATE_CHANGE_619004" }
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
		gadgets = { 619005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_619004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 619001, 619002, 619003 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_619004(context, evt)
	if 619005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_619004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308619, 2)
	
	return 0
end