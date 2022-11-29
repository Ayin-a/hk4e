-- 基础信息
local base_info = {
	group_id = 133301612
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
	{ config_id = 612003, npc_id = 20791, pos = { x = -616.141, y = -128.003, z = 3819.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 25 }
}

-- 装置
gadgets = {
	{ config_id = 612001, gadget_id = 70230106, pos = { x = -615.859, y = -125.736, z = 3820.302 }, rot = { x = 351.521, y = 229.258, z = 358.610 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
	{ config_id = 612002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -615.971, y = -128.833, z = 3819.972 }, area_id = 25 }
}

-- 触发器
triggers = {
	{ config_id = 1612002, name = "ENTER_REGION_612002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_612002", action = "action_EVENT_ENTER_REGION_612002", trigger_count = 0 }
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
		gadgets = { 612001 },
		regions = { 612002 },
		triggers = { "ENTER_REGION_612002" },
		npcs = { 612003 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_612002(context, evt)
	if evt.param1 ~= 612002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_612002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6080, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end