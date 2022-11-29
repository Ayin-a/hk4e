-- 基础信息
local base_info = {
	group_id = 220022013
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
	{ config_id = 70, gadget_id = 70220034, pos = { x = 3.403, y = 53.016, z = 24.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5 },
	{ config_id = 71, gadget_id = 70220034, pos = { x = 2.669, y = 52.928, z = 26.125 }, rot = { x = 0.000, y = 300.218, z = 0.000 }, level = 5 }
}

-- 区域
regions = {
	{ config_id = 34, shape = RegionShape.CUBIC, size = { x = 7.380, y = 20.190, z = 6.480 }, pos = { x = -0.300, y = 53.016, z = 24.426 } }
}

-- 触发器
triggers = {
	{ config_id = 1000034, name = "ENTER_REGION_34", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_34", action = "action_EVENT_ENTER_REGION_34", forbid_guest = false },
	{ config_id = 1013001, name = "ANY_GADGET_DIE_13001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_13001" }
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
		gadgets = { 70, 71 },
		regions = { 34 },
		triggers = { "ENTER_REGION_34", "ANY_GADGET_DIE_13001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_34(context, evt)
	if evt.param1 ~= 34 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_34(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220022013, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220022013") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220022001, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_13001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220022001, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end