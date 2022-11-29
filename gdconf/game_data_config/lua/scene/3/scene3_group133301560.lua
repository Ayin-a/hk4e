-- 基础信息
local base_info = {
	group_id = 133301560
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 560002, monster_id = 26120101, pos = { x = -213.082, y = 223.823, z = 3831.588 }, rot = { x = 0.000, y = 210.978, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 560001, gadget_id = 70330219, pos = { x = -213.003, y = 223.066, z = 3831.038 }, rot = { x = 349.064, y = 195.161, z = 351.601 }, level = 27, area_id = 22 },
	{ config_id = 560003, gadget_id = 70217020, pos = { x = -213.503, y = 224.251, z = 3831.959 }, rot = { x = 347.099, y = 7.014, z = 2.528 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1560004, name = "ANY_GADGET_DIE_560004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_560004", action = "action_EVENT_ANY_GADGET_DIE_560004" }
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
		gadgets = { 560001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_560004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 560002 },
		gadgets = { 560003 },
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
function condition_EVENT_ANY_GADGET_DIE_560004(context, evt)
	if 560001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_560004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301560, 2)
	
	return 0
end