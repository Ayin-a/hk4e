-- 基础信息
local base_info = {
	group_id = 133106597
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 597021, monster_id = 28050102, pos = { x = -786.414, y = 271.390, z = 1536.085 }, rot = { x = 0.000, y = 205.014, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 },
	{ config_id = 597022, monster_id = 28050102, pos = { x = -787.669, y = 271.608, z = 1534.599 }, rot = { x = 0.000, y = 140.757, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 },
	{ config_id = 597032, monster_id = 28050102, pos = { x = -647.309, y = 264.177, z = 1464.282 }, rot = { x = 0.000, y = 1.651, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 },
	{ config_id = 597033, monster_id = 28050102, pos = { x = -648.349, y = 263.565, z = 1465.703 }, rot = { x = 0.000, y = 115.903, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 597001, gadget_id = 70290200, pos = { x = -865.693, y = 184.111, z = 1726.130 }, rot = { x = 354.506, y = 1.221, z = 0.319 }, level = 36, area_id = 19 },
	{ config_id = 597005, gadget_id = 70290200, pos = { x = -914.279, y = 179.114, z = 1682.308 }, rot = { x = 11.449, y = 0.448, z = 354.447 }, level = 36, area_id = 19 },
	{ config_id = 597013, gadget_id = 70290200, pos = { x = -945.140, y = 208.396, z = 1690.128 }, rot = { x = 354.331, y = 289.708, z = 355.613 }, level = 36, area_id = 19 },
	{ config_id = 597027, gadget_id = 70690001, pos = { x = -721.528, y = 277.378, z = 1533.005 }, rot = { x = 0.000, y = 162.618, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 597028, gadget_id = 70690001, pos = { x = -719.329, y = 277.378, z = 1525.979 }, rot = { x = 0.000, y = 152.232, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 597029, gadget_id = 70690001, pos = { x = -706.702, y = 274.511, z = 1501.997 }, rot = { x = 0.000, y = 152.232, z = 7.705 }, level = 36, area_id = 19 },
	{ config_id = 597030, gadget_id = 70690001, pos = { x = -701.829, y = 274.360, z = 1495.137 }, rot = { x = 2.264, y = 135.246, z = 319.304 }, level = 36, area_id = 19 },
	{ config_id = 597031, gadget_id = 70690001, pos = { x = -682.210, y = 268.997, z = 1475.484 }, rot = { x = 3.427, y = 125.960, z = 6.905 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 597026, shape = RegionShape.SPHERE, radius = 8, pos = { x = -727.067, y = 278.471, z = 1546.468 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1597026, name = "ENTER_REGION_597026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_597026", action = "action_EVENT_ENTER_REGION_597026", trigger_count = 0 }
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
		monsters = { 597021, 597022, 597032, 597033 },
		gadgets = { 597001, 597005, 597013 },
		regions = { 597026 },
		triggers = { "ENTER_REGION_597026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 597027, 597028, 597029, 597030, 597031 },
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
function condition_EVENT_ENTER_REGION_597026(context, evt)
	if evt.param1 ~= 597026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_597026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106597, 2)
	
	-- 调用提示id为 710445003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 710445003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end