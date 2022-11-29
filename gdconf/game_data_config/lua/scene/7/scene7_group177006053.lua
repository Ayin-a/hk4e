-- 基础信息
local base_info = {
	group_id = 177006053
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
	{ config_id = 53001, gadget_id = 70330152, pos = { x = 234.665, y = 246.002, z = -369.087 }, rot = { x = 5.369, y = 27.322, z = 2.768 }, level = 1, persistent = true, interact_id = 94, arguments = {5}, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 53002, shape = RegionShape.SPHERE, radius = 8, pos = { x = 234.998, y = 245.735, z = -369.762 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1053002, name = "ENTER_REGION_53002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53002", action = "action_EVENT_ENTER_REGION_53002" }
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
		gadgets = { 53001 },
		regions = { 53002 },
		triggers = { "ENTER_REGION_53002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_53002(context, evt)
	if evt.param1 ~= 53002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53002(context, evt)
	-- 显示id为163的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,163,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end