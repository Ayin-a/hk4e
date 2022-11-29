-- 基础信息
local base_info = {
	group_id = 133001056
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
	{ config_id = 56002, gadget_id = 70360001, pos = { x = 1508.638, y = 269.703, z = -1783.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 56001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1510.629, y = 269.738, z = -1783.701 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1056001, name = "ENTER_REGION_56001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56001", action = "action_EVENT_ENTER_REGION_56001", trigger_count = 0 }
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
		gadgets = { 56002 },
		regions = { 56001 },
		triggers = { "ENTER_REGION_56001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_56001(context, evt)
	if evt.param1 ~= 56001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56001(context, evt)
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,213,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : Tutorial!!!!!!!!!")
	
	return 0
end