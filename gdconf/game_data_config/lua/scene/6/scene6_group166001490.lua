-- 基础信息
local base_info = {
	group_id = 166001490
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 490003, monster_id = 28020605, pos = { x = 723.725, y = 405.079, z = 729.886 }, rot = { x = 0.000, y = 263.760, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 300 },
	{ config_id = 490011, monster_id = 24020201, pos = { x = 621.188, y = 396.732, z = 671.784 }, rot = { x = 0.000, y = 64.151, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 101, area_id = 300 },
	{ config_id = 490012, monster_id = 28010201, pos = { x = 630.578, y = 399.370, z = 666.139 }, rot = { x = 0.000, y = 359.651, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 490016, monster_id = 28050301, pos = { x = 688.611, y = 389.094, z = 754.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 490017, monster_id = 28050102, pos = { x = 664.913, y = 380.844, z = 733.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 490018, monster_id = 28050102, pos = { x = 624.465, y = 383.702, z = 737.173 }, rot = { x = 0.000, y = 272.125, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 490021, monster_id = 28050301, pos = { x = 682.673, y = 409.536, z = 767.604 }, rot = { x = 0.000, y = 240.726, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 490001, gadget_id = 70310185, pos = { x = 718.628, y = 392.224, z = 707.023 }, rot = { x = 5.145, y = 246.182, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 490002, gadget_id = 70310185, pos = { x = 688.835, y = 396.948, z = 763.882 }, rot = { x = 0.000, y = 96.353, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 490004, gadget_id = 70220064, pos = { x = 683.062, y = 409.478, z = 767.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 490005, gadget_id = 70210101, pos = { x = 679.342, y = 392.309, z = 733.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 490006, gadget_id = 70210101, pos = { x = 681.300, y = 393.137, z = 729.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 490007, gadget_id = 70210101, pos = { x = 673.712, y = 391.725, z = 729.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 490013, gadget_id = 70210101, pos = { x = 606.261, y = 384.200, z = 761.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 490019, gadget_id = 70290200, pos = { x = 627.458, y = 376.344, z = 747.514 }, rot = { x = 8.573, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 490020, gadget_id = 70211001, pos = { x = 690.250, y = 389.453, z = 756.792 }, rot = { x = 5.097, y = 96.815, z = 340.715 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 490023, gadget_id = 70220062, pos = { x = 666.824, y = 407.892, z = 769.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 490024, gadget_id = 70220062, pos = { x = 663.537, y = 407.885, z = 770.720 }, rot = { x = 0.000, y = 180.613, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 490025, gadget_id = 70220062, pos = { x = 666.276, y = 407.811, z = 770.311 }, rot = { x = 0.000, y = 274.499, z = 279.847 }, level = 36, area_id = 300 },
	{ config_id = 490026, gadget_id = 70220063, pos = { x = 664.702, y = 407.900, z = 770.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 490027, gadget_id = 70217014, pos = { x = 673.845, y = 399.858, z = 770.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 490028, gadget_id = 70310185, pos = { x = 609.157, y = 382.838, z = 743.486 }, rot = { x = 0.000, y = 43.131, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1490022, name = "ANY_GADGET_DIE_490022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_490022", action = "action_EVENT_ANY_GADGET_DIE_490022" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 490008, gadget_id = 70500000, pos = { x = 601.560, y = 402.705, z = 663.155 }, rot = { x = 12.902, y = 354.470, z = 313.744 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 490009, gadget_id = 70500000, pos = { x = 603.694, y = 403.189, z = 656.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 490010, gadget_id = 70500000, pos = { x = 599.126, y = 405.228, z = 658.784 }, rot = { x = 348.602, y = 278.645, z = 336.351 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 490014, gadget_id = 70500000, pos = { x = 686.960, y = 386.617, z = 738.269 }, rot = { x = 308.801, y = 4.197, z = 351.253 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 490015, gadget_id = 70500000, pos = { x = 691.469, y = 386.568, z = 736.774 }, rot = { x = 0.000, y = 159.485, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 }
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
		monsters = { 490003, 490011, 490012, 490016, 490017, 490018 },
		gadgets = { 490001, 490002, 490004, 490005, 490006, 490007, 490013, 490019, 490020, 490023, 490024, 490025, 490026, 490027, 490028 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_490022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_490022(context, evt)
	if 490004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_490022(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 490021, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end