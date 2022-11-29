-- 基础信息
local base_info = {
	group_id = 166001328
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 328001, monster_id = 28020605, pos = { x = 1010.246, y = 975.224, z = 707.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", isOneoff = true, area_id = 300 },
	{ config_id = 328004, monster_id = 20011401, pos = { x = 1010.725, y = 980.136, z = 703.245 }, rot = { x = 0.000, y = 18.001, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, isOneoff = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 328002, shape = RegionShape.SPHERE, radius = 12, pos = { x = 1013.508, y = 975.588, z = 715.669 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1328002, name = "ENTER_REGION_328002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_328002" }
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
		regions = { 328002 },
		triggers = { "ENTER_REGION_328002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_328002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 328004, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end