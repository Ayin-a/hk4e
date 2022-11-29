-- 基础信息
local base_info = {
	group_id = 133002919
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
	{ config_id = 919001, gadget_id = 70360102, pos = { x = 1163.789, y = 387.516, z = -1010.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 919002, gadget_id = 70710237, pos = { x = 1164.614, y = 387.667, z = -1011.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 919004, gadget_id = 70710234, pos = { x = 1163.726, y = 387.501, z = -1010.277 }, rot = { x = 0.000, y = 13.300, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 919005, gadget_id = 70710234, pos = { x = 1162.820, y = 387.729, z = -1010.188 }, rot = { x = 0.000, y = 53.480, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 919006, gadget_id = 70710234, pos = { x = 1164.268, y = 388.037, z = -1010.982 }, rot = { x = 0.000, y = 12.410, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 919007, gadget_id = 70710234, pos = { x = 1165.593, y = 387.572, z = -1010.080 }, rot = { x = 0.000, y = 344.020, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 919008, gadget_id = 70710234, pos = { x = 1165.526, y = 387.370, z = -1008.654 }, rot = { x = 0.000, y = 344.320, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 919009, gadget_id = 70710234, pos = { x = 1163.625, y = 387.802, z = -1011.155 }, rot = { x = 0.000, y = 140.670, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 919010, gadget_id = 70710241, pos = { x = 1164.615, y = 387.544, z = -1011.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 919011, shape = RegionShape.SPHERE, radius = 52.1, pos = { x = 1143.341, y = 404.425, z = -987.061 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1919003, name = "ANY_GADGET_DIE_919003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_919003", action = "action_EVENT_ANY_GADGET_DIE_919003", trigger_count = 0 },
	{ config_id = 1919011, name = "ENTER_REGION_919011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_919011", action = "action_EVENT_ENTER_REGION_919011", trigger_count = 0 }
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
		regions = { 919011 },
		triggers = { "ENTER_REGION_919011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 正常回收_雪堆存在且可以被交互,
		monsters = { },
		gadgets = { 919001, 919002 },
		regions = { 919011 },
		triggers = { "ANY_GADGET_DIE_919003", "ENTER_REGION_919011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 正常回收_雪堆不见,
		monsters = { },
		gadgets = { },
		regions = { 919011 },
		triggers = { "ENTER_REGION_919011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = 异常回收_一堆脚印踩爆，近距离观察,
		monsters = { },
		gadgets = { 919004, 919005, 919006, 919007, 919008, 919009, 919010 },
		regions = { 919011 },
		triggers = { "ENTER_REGION_919011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = 异常回收_观察结束,
		monsters = { },
		gadgets = { 919004, 919005, 919006, 919007, 919008, 919009 },
		regions = { 919011 },
		triggers = { "ENTER_REGION_919011" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_919003(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_919003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330291299") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133002919, EntityType.GADGET, 919002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_919011(context, evt)
	if evt.param1 ~= 919011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_919011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300291901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end