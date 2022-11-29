-- 基础信息
local base_info = {
	group_id = 133104379
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 379001, monster_id = 20010901, pos = { x = 777.561, y = 238.653, z = 708.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 379004, monster_id = 20011301, pos = { x = 789.131, y = 239.314, z = 713.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 379005, monster_id = 20010601, pos = { x = 791.309, y = 237.871, z = 702.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "大史莱姆", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 379002, gadget_id = 70211011, pos = { x = 784.067, y = 237.916, z = 705.307 }, rot = { x = 6.366, y = 211.619, z = 4.944 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 379006, shape = RegionShape.SPHERE, radius = 7, pos = { x = 783.706, y = 238.581, z = 704.857 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1379003, name = "ANY_MONSTER_DIE_379003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_379003", action = "action_EVENT_ANY_MONSTER_DIE_379003" },
	{ config_id = 1379006, name = "ENTER_REGION_379006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_379006", action = "action_EVENT_ENTER_REGION_379006" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 379006 },
		triggers = { "ANY_MONSTER_DIE_379003", "ENTER_REGION_379006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 379001, 379004, 379005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_379003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_379003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_379003(context, evt)
	-- 创建id为379002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 379002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_379006(context, evt)
	if evt.param1 ~= 379006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_379006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104379, 2)
	
	return 0
end