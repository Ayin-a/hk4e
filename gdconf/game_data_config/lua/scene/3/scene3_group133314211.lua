-- 基础信息
local base_info = {
	group_id = 133314211
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 211001, monster_id = 28060401, pos = { x = -962.523, y = -32.695, z = 5012.147 }, rot = { x = 0.000, y = 19.512, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 211002, gadget_id = 70330430, pos = { x = -963.014, y = -32.857, z = 5010.956 }, rot = { x = 345.107, y = 2.078, z = 340.139 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 211003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -963.296, y = -33.304, z = 5010.090 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1211003, name = "ENTER_REGION_211003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_211003", action = "action_EVENT_ENTER_REGION_211003" },
	{ config_id = 1211004, name = "ANY_GADGET_DIE_211004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_211004", action = "action_EVENT_ANY_GADGET_DIE_211004" }
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
		gadgets = { 211002 },
		regions = { 211003 },
		triggers = { "ENTER_REGION_211003", "ANY_GADGET_DIE_211004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 211001 },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_211003(context, evt)
	if evt.param1 ~= 211003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_211003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 211002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_211004(context, evt)
	if 211002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_211004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314211, 2)
	
	return 0
end