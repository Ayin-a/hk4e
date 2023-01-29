-- 基础信息
local base_info = {
	group_id = 133314167
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167002, monster_id = 28060401, pos = { x = -903.051, y = -196.783, z = 5120.441 }, rot = { x = 0.000, y = 254.683, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 167003, monster_id = 28060401, pos = { x = -911.505, y = -198.898, z = 5120.269 }, rot = { x = 0.000, y = 64.346, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167001, gadget_id = 70330430, pos = { x = -907.000, y = -197.121, z = 5123.375 }, rot = { x = 349.528, y = 355.572, z = 23.075 }, level = 32, isOneoff = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1167004, name = "ANY_GADGET_DIE_167004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_167004", action = "action_EVENT_ANY_GADGET_DIE_167004" }
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
		gadgets = { 167001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_167004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 167002, 167003 },
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
function condition_EVENT_ANY_GADGET_DIE_167004(context, evt)
	if 167001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_167004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314167, 2)
	
	return 0
end