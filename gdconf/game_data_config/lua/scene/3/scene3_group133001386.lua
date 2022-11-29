-- 基础信息
local base_info = {
	group_id = 133001386
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
	{ config_id = 386001, gadget_id = 70220013, pos = { x = 2006.558, y = 214.695, z = -1096.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 386003, gadget_id = 70220013, pos = { x = 2004.710, y = 214.986, z = -1097.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 386004, gadget_id = 70220013, pos = { x = 2004.842, y = 215.052, z = -1095.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 386005, gadget_id = 70220013, pos = { x = 1998.816, y = 216.848, z = -1082.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 },
	{ config_id = 386006, gadget_id = 70220013, pos = { x = 1997.924, y = 216.772, z = -1085.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1386002, name = "ANY_GADGET_DIE_386002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_386002" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 386001, 386003, 386004, 386005, 386006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_386002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_386002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013861") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end