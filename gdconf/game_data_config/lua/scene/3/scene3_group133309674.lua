-- 基础信息
local base_info = {
	group_id = 133309674
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 674007, monster_id = 26090101, pos = { x = -2181.469, y = -57.959, z = 5769.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 674001, gadget_id = 70210101, pos = { x = -2218.517, y = -57.321, z = 5758.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 674002, gadget_id = 70210101, pos = { x = -2199.329, y = -57.716, z = 5777.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 674003, gadget_id = 70210101, pos = { x = -2205.337, y = -57.529, z = 5780.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 674004, gadget_id = 70210101, pos = { x = -2187.931, y = -56.407, z = 5781.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 },
	{ config_id = 674005, gadget_id = 70330428, pos = { x = -2181.310, y = -58.000, z = 5769.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 674006, gadget_id = 70330429, pos = { x = -2181.154, y = -58.177, z = 5770.958 }, rot = { x = 327.413, y = 324.342, z = 53.104 }, level = 32, area_id = 27 },
	{ config_id = 674009, gadget_id = 70210101, pos = { x = -2181.139, y = -57.990, z = 5770.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1674008, name = "ANY_GADGET_DIE_674008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_674008", action = "action_EVENT_ANY_GADGET_DIE_674008" }
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
		gadgets = { 674001, 674002, 674003, 674004, 674005, 674006, 674009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_674008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 674007 },
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
function condition_EVENT_ANY_GADGET_DIE_674008(context, evt)
	if 674005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_674008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309674, 2)
	
	return 0
end