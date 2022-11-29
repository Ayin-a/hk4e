-- 基础信息
local base_info = {
	group_id = 133212194
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
	{ config_id = 194001, gadget_id = 70360040, pos = { x = -3814.470, y = 238.568, z = -2352.855 }, rot = { x = 0.000, y = 345.640, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 194003, gadget_id = 70500000, pos = { x = -3814.472, y = 237.986, z = -2352.795 }, rot = { x = 354.380, y = 342.407, z = 5.767 }, level = 1, point_type = 9163, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1194004, name = "GATHER_194004", event = EventType.EVENT_GATHER, source = "194003", condition = "", action = "action_EVENT_GATHER_194004" }
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
		gadgets = { 194001, 194003 },
		regions = { },
		triggers = { "GATHER_194004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_194004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13321219401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133212194, EntityType.GADGET, 194001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end