-- 基础信息
local base_info = {
	group_id = 133210049
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
	{ config_id = 49001, gadget_id = 70290158, pos = { x = -3671.659, y = 200.252, z = -1072.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 49002, gadget_id = 70330064, pos = { x = -3675.797, y = 200.585, z = -1091.855 }, rot = { x = 356.320, y = 194.057, z = 350.381 }, level = 30, persistent = true, interact_id = 35, area_id = 17 },
	{ config_id = 49003, gadget_id = 70290158, pos = { x = -3675.469, y = 200.620, z = -1082.056 }, rot = { x = 3.187, y = 204.953, z = 359.510 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 17 },
	{ config_id = 49004, gadget_id = 70330064, pos = { x = -3582.563, y = 203.156, z = -1116.386 }, rot = { x = 2.091, y = 231.341, z = 359.553 }, level = 30, interact_id = 35, area_id = 17 },
	{ config_id = 49005, gadget_id = 70330064, pos = { x = -3592.039, y = 200.231, z = -1183.339 }, rot = { x = 0.000, y = 56.100, z = 0.000 }, level = 30, interact_id = 35, area_id = 17 },
	{ config_id = 49006, gadget_id = 70330064, pos = { x = -3537.952, y = 203.608, z = -1189.914 }, rot = { x = 2.792, y = 258.201, z = 357.928 }, level = 30, interact_id = 35, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 49007, shape = RegionShape.SPHERE, radius = 7, pos = { x = -3672.324, y = 200.503, z = -1077.680 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1049007, name = "ENTER_REGION_49007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49007", action = "action_EVENT_ENTER_REGION_49007", trigger_count = 0 }
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
		gadgets = { 49001, 49002, 49003, 49004, 49005, 49006 },
		regions = { 49007 },
		triggers = { "ENTER_REGION_49007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_49007(context, evt)
	if evt.param1 ~= 49007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end