-- 基础信息
local base_info = {
	group_id = 133302293
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 293007, monster_id = 28020313, pos = { x = -582.490, y = 286.526, z = 2210.261 }, rot = { x = 0.000, y = 65.880, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 293001, gadget_id = 70330197, pos = { x = -561.126, y = 282.957, z = 2234.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 293002, gadget_id = 70330197, pos = { x = -562.547, y = 313.054, z = 2188.450 }, rot = { x = 354.266, y = 175.600, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 293003, gadget_id = 70330197, pos = { x = -555.199, y = 283.712, z = 2234.011 }, rot = { x = 0.000, y = 316.239, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 293009, gadget_id = 70211101, pos = { x = -558.405, y = 283.471, z = 2230.947 }, rot = { x = 358.221, y = 359.903, z = 6.242 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 293008, shape = RegionShape.POLYGON, pos = { x = -558.434, y = 296.000, z = 2234.016 }, height = 10.000, point_array = { { x = -553.281, y = 2236.498 }, { x = -563.866, y = 2236.740 }, { x = -563.508, y = 2231.292 }, { x = -553.001, y = 2231.533 } }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1293008, name = "ENTER_REGION_293008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_293008", action = "action_EVENT_ENTER_REGION_293008", forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 293004, gadget_id = 70230112, pos = { x = -558.549, y = 283.942, z = 2235.904 }, rot = { x = 354.280, y = 23.504, z = 128.005 }, level = 27, area_id = 24 },
		{ config_id = 293005, gadget_id = 70230112, pos = { x = -558.037, y = 284.358, z = 2235.781 }, rot = { x = 354.280, y = 23.504, z = 128.005 }, level = 27, area_id = 24 }
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
		-- description = ,
		monsters = { 293007 },
		gadgets = { 293001, 293002, 293003 },
		regions = { 293008 },
		triggers = { "ENTER_REGION_293008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_293008(context, evt)
	if evt.param1 ~= 293008 then return false end
	
	-- 判断角色数量不少于2
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_293008(context, evt)
	-- 创建id为293009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 293009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end