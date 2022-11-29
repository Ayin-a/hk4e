-- 基础信息
local base_info = {
	group_id = 177006054
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
	{ config_id = 54001, gadget_id = 70330152, pos = { x = 425.110, y = 185.108, z = -305.712 }, rot = { x = 0.969, y = 0.673, z = 359.838 }, level = 1, persistent = true, interact_id = 93, arguments = {7}, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 54002, shape = RegionShape.SPHERE, radius = 8, pos = { x = 425.739, y = 184.910, z = -305.196 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1054002, name = "ENTER_REGION_54002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54002", action = "action_EVENT_ENTER_REGION_54002" }
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
		gadgets = { 54001 },
		regions = { 54002 },
		triggers = { "ENTER_REGION_54002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_54002(context, evt)
	if evt.param1 ~= 54002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_54002(context, evt)
	-- 显示id为163的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,163,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end