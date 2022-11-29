-- 基础信息
local base_info = {
	group_id = 133309471
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
	{ config_id = 471001, gadget_id = 70330427, pos = { x = -2266.394, y = 73.606, z = 5153.464 }, rot = { x = 357.926, y = 60.851, z = 7.264 }, level = 32, area_id = 27 },
	{ config_id = 471002, gadget_id = 70330429, pos = { x = -2267.572, y = 74.117, z = 5152.962 }, rot = { x = 347.153, y = 207.647, z = 78.198 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1471003, name = "ANY_GADGET_DIE_471003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_471003", action = "action_EVENT_ANY_GADGET_DIE_471003", trigger_count = 0 }
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
		gadgets = { 471001, 471002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_471003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_471003(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133309471}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_471003(context, evt)
	-- 将本组内变量名为 "vase6" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "vase6", 1, 133309205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end