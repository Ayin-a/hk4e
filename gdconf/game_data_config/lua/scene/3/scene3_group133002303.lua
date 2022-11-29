-- 基础信息
local base_info = {
	group_id = 133002303
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 303001, monster_id = 26010101, pos = { x = 1566.118, y = 241.715, z = -108.706 }, rot = { x = 341.048, y = 359.552, z = 2.684 }, level = 15, drop_tag = "骗骗花", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 303003, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1565.948, y = 241.602, z = -108.878 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1303003, name = "ENTER_REGION_303003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_303003", action = "action_EVENT_ENTER_REGION_303003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 303002, gadget_id = 70900288, pos = { x = 1566.118, y = 241.715, z = -108.706 }, rot = { x = 347.322, y = 318.186, z = 14.450 }, level = 16, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 5 }
	},
	triggers = {
		{ config_id = 1303004, name = "GADGET_STATE_CHANGE_303004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_303004", action = "action_EVENT_GADGET_STATE_CHANGE_303004" },
		{ config_id = 1303005, name = "ANY_MONSTER_DIE_303005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_303005", action = "action_EVENT_ANY_MONSTER_DIE_303005" }
	}
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
		regions = { 303003 },
		triggers = { "ENTER_REGION_303003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_303003(context, evt)
	if evt.param1 ~= 303003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_303003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 303001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end