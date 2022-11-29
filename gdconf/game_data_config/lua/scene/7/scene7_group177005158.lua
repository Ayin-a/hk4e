-- 基础信息
local base_info = {
	group_id = 177005158
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
	{ config_id = 158001, gadget_id = 70220005, pos = { x = 329.637, y = 119.138, z = 889.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 158003, gadget_id = 70220100, pos = { x = 327.670, y = 118.038, z = 888.908 }, rot = { x = 0.004, y = 7.460, z = 0.774 }, level = 36, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 158004, gadget_id = 70220005, pos = { x = 327.962, y = 119.136, z = 890.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1158002, name = "ANY_GADGET_DIE_158002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_158002", action = "action_EVENT_ANY_GADGET_DIE_158002", trigger_count = 0 }
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
		gadgets = { 158001, 158003, 158004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_158002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_158002(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 177005158}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_158002(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "default", 0, 177005160) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end