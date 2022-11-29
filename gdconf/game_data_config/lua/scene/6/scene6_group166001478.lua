-- 基础信息
local base_info = {
	group_id = 166001478
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 478002, monster_id = 24020301, pos = { x = 191.382, y = 319.209, z = 301.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 300 },
	{ config_id = 478003, monster_id = 24020301, pos = { x = 167.470, y = 319.611, z = 311.398 }, rot = { x = 0.000, y = 19.776, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 478001, gadget_id = 70290342, pos = { x = 184.443, y = 320.643, z = 331.145 }, rot = { x = 355.407, y = 40.689, z = 8.270 }, level = 36, area_id = 300 },
	{ config_id = 478005, gadget_id = 70290324, pos = { x = 171.191, y = 318.304, z = 319.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 478006, gadget_id = 70310185, pos = { x = 198.340, y = 318.328, z = 309.388 }, rot = { x = 0.000, y = 272.937, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1478004, name = "ANY_GADGET_DIE_478004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_478004", action = "action_EVENT_ANY_GADGET_DIE_478004" }
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
		gadgets = { 478001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_478004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 478002, 478003 },
		gadgets = { 478005, 478006 },
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
function condition_EVENT_ANY_GADGET_DIE_478004(context, evt)
	if 478001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_478004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001478, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end