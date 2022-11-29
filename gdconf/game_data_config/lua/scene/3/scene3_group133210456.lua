-- 基础信息
local base_info = {
	group_id = 133210456
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
	{ config_id = 456001, gadget_id = 70950134, pos = { x = -3757.681, y = 200.012, z = -551.269 }, rot = { x = 0.000, y = 137.286, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 456003, gadget_id = 70360040, pos = { x = -3757.681, y = 200.012, z = -551.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1456002, name = "GADGETTALK_DONE_456002", event = EventType.EVENT_GADGETTALK_DONE, source = "6801104", condition = "", action = "action_EVENT_GADGETTALK_DONE_456002" }
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
		gadgets = { 456001, 456003 },
		regions = { },
		triggers = { "GADGETTALK_DONE_456002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_456002(context, evt)
	-- 针对当前group内变量名为 "ReadCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "ReadCount", 1, 133210483) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end