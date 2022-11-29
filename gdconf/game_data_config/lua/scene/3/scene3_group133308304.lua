-- 基础信息
local base_info = {
	group_id = 133308304
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 304001, monster_id = 21020201, pos = { x = -1627.359, y = 149.343, z = 4787.948 }, rot = { x = 0.000, y = 252.427, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 26 },
	{ config_id = 304005, monster_id = 28020108, pos = { x = -1620.742, y = 151.955, z = 4778.222 }, rot = { x = 0.000, y = 6.429, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 26 },
	{ config_id = 304012, monster_id = 21011001, pos = { x = -1628.593, y = 153.898, z = 4794.675 }, rot = { x = 0.000, y = 340.573, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 26 },
	{ config_id = 304013, monster_id = 28060501, pos = { x = -1635.711, y = 148.818, z = 4783.882 }, rot = { x = 0.000, y = 102.828, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 304017, monster_id = 21010101, pos = { x = -1635.995, y = 149.102, z = 4781.496 }, rot = { x = 0.000, y = 10.266, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9011, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 304002, gadget_id = 70211002, pos = { x = -1627.353, y = 151.810, z = 4775.800 }, rot = { x = 358.889, y = 334.090, z = 359.170 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 304004, gadget_id = 70210101, pos = { x = -1623.843, y = 151.769, z = 4784.770 }, rot = { x = 359.910, y = 0.129, z = 359.598 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 26 },
	{ config_id = 304006, gadget_id = 70330396, pos = { x = -1638.578, y = 147.825, z = 4793.670 }, rot = { x = 0.903, y = 359.911, z = 5.355 }, level = 32, area_id = 26 },
	{ config_id = 304007, gadget_id = 70220103, pos = { x = -1628.551, y = 156.398, z = 4794.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 304008, gadget_id = 70210101, pos = { x = -1634.475, y = 150.466, z = 4777.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
	{ config_id = 304009, gadget_id = 70220014, pos = { x = -1621.252, y = 151.808, z = 4776.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 304010, gadget_id = 70220026, pos = { x = -1620.192, y = 151.847, z = 4780.924 }, rot = { x = 0.056, y = 57.061, z = 359.923 }, level = 32, area_id = 26 },
	{ config_id = 304011, gadget_id = 70220026, pos = { x = -1619.201, y = 151.795, z = 4779.576 }, rot = { x = 0.002, y = 90.282, z = -0.001 }, level = 32, area_id = 26 },
	{ config_id = 304015, gadget_id = 70220014, pos = { x = -1622.884, y = 151.803, z = 4784.378 }, rot = { x = 0.596, y = 0.115, z = 3.606 }, level = 32, area_id = 26 },
	{ config_id = 304016, gadget_id = 70300108, pos = { x = -1630.763, y = 149.965, z = 4777.509 }, rot = { x = 357.692, y = 222.516, z = 350.686 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1304003, name = "ANY_MONSTER_DIE_304003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_304003", action = "action_EVENT_ANY_MONSTER_DIE_304003" }
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
		monsters = { 304001, 304005, 304012, 304013, 304017 },
		gadgets = { 304002, 304004, 304006, 304007, 304008, 304009, 304010, 304011, 304015, 304016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_304003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_304003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_304003(context, evt)
	-- 将configid为 304002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end