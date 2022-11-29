-- 基础信息
local base_info = {
	group_id = 133223353
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
	{ config_id = 353001, gadget_id = 70220089, pos = { x = -6092.462, y = 213.564, z = -2879.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1353002, name = "ANY_GADGET_DIE_353002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_353002", action = "action_EVENT_ANY_GADGET_DIE_353002", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 353003, gadget_id = 70330114, pos = { x = -6068.634, y = 208.723, z = -2867.465 }, rot = { x = 359.194, y = 264.645, z = 355.209 }, level = 1, area_id = 18 }
	},
	triggers = {
		{ config_id = 1353004, name = "GROUP_LOAD_353004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_353004", action = "action_EVENT_GROUP_LOAD_353004", trigger_count = 0 }
	}
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
		gadgets = { 353001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_353002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_353002(context, evt)
	if 353001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_353002(context, evt)
	-- 针对当前group内变量名为 "EnergyBall_Succ_Count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "EnergyBall_Succ_Count", 1, 133223123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group_3_progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "group_3_progress", 1, 133223501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end