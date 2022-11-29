-- 基础信息
local base_info = {
	group_id = 133309663
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 663001, monster_id = 28050401, pos = { x = -2210.451, y = -21.712, z = 5576.019 }, rot = { x = 0.000, y = 281.701, z = 0.000 }, level = 32, drop_tag = "采集动物", isOneoff = true, pose_id = 102, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 663002, gadget_id = 70330428, pos = { x = -2210.393, y = -21.586, z = 5576.975 }, rot = { x = 3.937, y = 281.700, z = 71.165 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1663005, name = "ANY_GADGET_DIE_663005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_663005", action = "action_EVENT_ANY_GADGET_DIE_663005" }
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
		gadgets = { 663002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_663005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 663001 },
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
function condition_EVENT_ANY_GADGET_DIE_663005(context, evt)
	if 663002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_663005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309663, 2)
	
	return 0
end