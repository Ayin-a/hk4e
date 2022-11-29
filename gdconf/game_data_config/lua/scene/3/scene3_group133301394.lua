-- 基础信息
local base_info = {
	group_id = 133301394
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
	{ config_id = 394001, gadget_id = 70290579, pos = { x = -1008.307, y = 277.680, z = 3816.679 }, rot = { x = 0.335, y = 13.066, z = 359.960 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 394002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1009.029, y = 291.642, z = 3812.776 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1394002, name = "ENTER_REGION_394002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_394002", action = "action_EVENT_ENTER_REGION_394002" }
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
		gadgets = { 394001 },
		regions = { 394002 },
		triggers = { "ENTER_REGION_394002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_394002(context, evt)
	if evt.param1 ~= 394002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_394002(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133301394, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end