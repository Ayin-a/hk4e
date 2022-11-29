-- 基础信息
local base_info = {
	group_id = 133309257
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
	{ config_id = 257001, gadget_id = 70330427, pos = { x = -2284.974, y = 74.077, z = 5170.792 }, rot = { x = 275.183, y = 117.736, z = 280.937 }, level = 32, area_id = 27 },
	{ config_id = 257002, gadget_id = 70330427, pos = { x = -2284.217, y = 73.043, z = 5170.416 }, rot = { x = 358.615, y = 61.035, z = 355.658 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1257003, name = "ANY_GADGET_DIE_257003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_257003", action = "action_EVENT_ANY_GADGET_DIE_257003", trigger_count = 0 }
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
		gadgets = { 257001, 257002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_257003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_257003(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133309257}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_257003(context, evt)
	-- 将本组内变量名为 "vase3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "vase3", 1, 133309205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end