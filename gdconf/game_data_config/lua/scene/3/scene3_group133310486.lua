-- 基础信息
local base_info = {
	group_id = 133310486
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 486001, monster_id = 28050401, pos = { x = -3004.528, y = 136.615, z = 4430.659 }, rot = { x = 0.000, y = 166.279, z = 0.000 }, level = 32, drop_tag = "采集动物", isOneoff = true, pose_id = 101, area_id = 28 },
	{ config_id = 486003, monster_id = 28050401, pos = { x = -3004.091, y = 136.585, z = 4429.864 }, rot = { x = 0.000, y = 324.123, z = 0.000 }, level = 32, drop_tag = "采集动物", isOneoff = true, pose_id = 101, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 486002, gadget_id = 70330259, pos = { x = -3000.297, y = 134.477, z = 4429.132 }, rot = { x = 4.721, y = 331.397, z = 26.956 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1486004, name = "ANY_GADGET_DIE_486004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_486004", action = "action_EVENT_ANY_GADGET_DIE_486004", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 486002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_486004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 486001, 486003 },
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
function condition_EVENT_ANY_GADGET_DIE_486004(context, evt)
	if 486002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_486004(context, evt)
	-- 将本组内变量名为 "stone02" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone02", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310486, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end