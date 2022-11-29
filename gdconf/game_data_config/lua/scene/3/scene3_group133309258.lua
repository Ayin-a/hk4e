-- 基础信息
local base_info = {
	group_id = 133309258
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
	{ config_id = 258001, gadget_id = 70330426, pos = { x = -2289.215, y = 74.577, z = 5146.638 }, rot = { x = 345.584, y = 75.596, z = 305.089 }, level = 32, area_id = 27 },
	{ config_id = 258002, gadget_id = 70330429, pos = { x = -2288.442, y = 74.095, z = 5146.187 }, rot = { x = 0.000, y = 60.982, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1258003, name = "ANY_GADGET_DIE_258003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_258003", action = "action_EVENT_ANY_GADGET_DIE_258003", trigger_count = 0 }
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
		gadgets = { 258001, 258002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_258003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_258003(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133309258}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_258003(context, evt)
	-- 将本组内变量名为 "vase4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "vase4", 1, 133309205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end