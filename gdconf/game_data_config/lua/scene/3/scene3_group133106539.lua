-- 基础信息
local base_info = {
	group_id = 133106539
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 539001, monster_id = 28030101, pos = { x = -715.535, y = 184.162, z = 1522.565 }, rot = { x = 0.000, y = 92.329, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 539002, monster_id = 28030101, pos = { x = -713.218, y = 184.125, z = 1520.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 539003, monster_id = 28030101, pos = { x = -709.205, y = 192.344, z = 1506.783 }, rot = { x = 0.000, y = 15.938, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 539008, monster_id = 28020102, pos = { x = -707.329, y = 184.163, z = 1518.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 539010, monster_id = 28020102, pos = { x = -680.273, y = 166.468, z = 1549.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 539012, monster_id = 20011001, pos = { x = -717.863, y = 159.382, z = 1564.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 539018, monster_id = 28030401, pos = { x = -725.716, y = 160.721, z = 1570.369 }, rot = { x = 0.000, y = 99.378, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 539019, monster_id = 28030401, pos = { x = -724.481, y = 160.836, z = 1568.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 539023, monster_id = 28020603, pos = { x = -636.520, y = 157.783, z = 1585.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 539004, gadget_id = 70210101, pos = { x = -693.136, y = 213.828, z = 1439.698 }, rot = { x = 0.000, y = 232.561, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 539005, gadget_id = 70210101, pos = { x = -697.726, y = 209.961, z = 1451.930 }, rot = { x = 0.000, y = 22.475, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 539006, gadget_id = 70210101, pos = { x = -701.722, y = 209.803, z = 1451.610 }, rot = { x = 0.000, y = 22.475, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 539007, gadget_id = 70210101, pos = { x = -719.116, y = 209.923, z = 1452.172 }, rot = { x = 0.000, y = 147.953, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 539009, gadget_id = 70210101, pos = { x = -717.886, y = 159.812, z = 1564.816 }, rot = { x = 0.000, y = 146.436, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 19 },
	{ config_id = 539013, gadget_id = 70210101, pos = { x = -759.828, y = 215.169, z = 1456.553 }, rot = { x = 0.000, y = 147.953, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 539014, gadget_id = 70310010, pos = { x = -763.418, y = 204.780, z = 1483.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 19 },
	{ config_id = 539015, gadget_id = 70210101, pos = { x = -776.512, y = 205.368, z = 1507.795 }, rot = { x = 0.000, y = 147.953, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 539016, gadget_id = 70210101, pos = { x = -735.491, y = 205.506, z = 1495.852 }, rot = { x = 0.000, y = 147.953, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 19 },
	{ config_id = 539017, gadget_id = 70217014, pos = { x = -744.330, y = 160.936, z = 1554.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 539020, gadget_id = 70210101, pos = { x = -737.360, y = 161.672, z = 1549.045 }, rot = { x = 0.000, y = 356.054, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 539021, gadget_id = 70210101, pos = { x = -741.118, y = 161.459, z = 1550.330 }, rot = { x = 0.000, y = 343.416, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 539022, gadget_id = 70217014, pos = { x = -726.615, y = 193.031, z = 1564.197 }, rot = { x = 0.355, y = 274.074, z = 354.257 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1539011, name = "GADGET_STATE_CHANGE_539011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_539011", action = "action_EVENT_GADGET_STATE_CHANGE_539011" }
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
		monsters = { 539001, 539002, 539003, 539008, 539010, 539018, 539019, 539023 },
		gadgets = { 539004, 539005, 539006, 539007, 539009, 539013, 539014, 539015, 539016, 539017, 539020, 539021, 539022 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_539011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 539012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_539011(context, evt)
	if 539009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_539011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106539, 2)
	
	return 0
end