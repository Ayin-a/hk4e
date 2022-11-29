-- 基础信息
local base_info = {
	group_id = 133307059
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 59005, monster_id = 28020604, pos = { x = -1940.788, y = 147.743, z = 5767.315 }, rot = { x = 0.000, y = 103.997, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 59001, gadget_id = 70710352, pos = { x = -1937.725, y = 148.218, z = 5767.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 59002, gadget_id = 70210101, pos = { x = -1937.871, y = 148.375, z = 5766.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 59003, gadget_id = 70330430, pos = { x = -1936.950, y = 148.269, z = 5766.984 }, rot = { x = 2.636, y = 0.310, z = 8.886 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059004, name = "ANY_GADGET_DIE_59004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_59004", action = "action_EVENT_ANY_GADGET_DIE_59004" }
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
		monsters = { 59005 },
		gadgets = { 59001, 59003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_59004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_59004(context, evt)
	if 59003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_59004(context, evt)
	-- 创建id为59002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 59002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end