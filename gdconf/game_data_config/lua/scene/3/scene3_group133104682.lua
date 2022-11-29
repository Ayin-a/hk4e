-- 基础信息
local base_info = {
	group_id = 133104682
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
	{ config_id = 682001, gadget_id = 70620002, pos = { x = 338.172, y = 214.340, z = 968.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 682002, shape = RegionShape.SPHERE, radius = 4, pos = { x = 339.592, y = 223.814, z = 968.212 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1682002, name = "ENTER_REGION_682002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_682002", action = "action_EVENT_ENTER_REGION_682002" }
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
		gadgets = { 682001 },
		regions = { 682002 },
		triggers = { "ENTER_REGION_682002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 682001 },
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
function condition_EVENT_ENTER_REGION_682002(context, evt)
	if evt.param1 ~= 682002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_682002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 682001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104682, 2)
	
	return 0
end