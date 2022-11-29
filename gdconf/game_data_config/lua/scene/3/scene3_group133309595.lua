-- 基础信息
local base_info = {
	group_id = 133309595
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 595003, monster_id = 28050401, pos = { x = -2181.397, y = 32.536, z = 5592.362 }, rot = { x = 0.000, y = 118.599, z = 0.000 }, level = 32, drop_tag = "采集动物", isOneoff = true, pose_id = 102, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 595001, gadget_id = 70330428, pos = { x = -2181.730, y = 32.661, z = 5591.463 }, rot = { x = 3.937, y = 118.599, z = 71.165 }, level = 32, area_id = 27 },
	{ config_id = 595002, gadget_id = 70330426, pos = { x = -2180.439, y = 32.590, z = 5591.285 }, rot = { x = 0.000, y = 118.599, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 595005, gadget_id = 70210101, pos = { x = -2180.907, y = 32.571, z = 5591.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1595004, name = "ANY_GADGET_DIE_595004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_595004", action = "action_EVENT_ANY_GADGET_DIE_595004" }
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
		gadgets = { 595001, 595002, 595005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_595004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 595003 },
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
function condition_EVENT_ANY_GADGET_DIE_595004(context, evt)
	if 595001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_595004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309595, 2)
	
	return 0
end