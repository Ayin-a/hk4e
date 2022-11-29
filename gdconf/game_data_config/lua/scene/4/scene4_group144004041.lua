-- 基础信息
local base_info = {
	group_id = 144004041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41001, monster_id = 21010901, pos = { x = 92.169, y = 123.815, z = -872.574 }, rot = { x = 0.000, y = 345.022, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 101 },
	{ config_id = 41004, monster_id = 21010201, pos = { x = 84.473, y = 120.677, z = -835.778 }, rot = { x = 0.000, y = 4.837, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 101 },
	{ config_id = 41005, monster_id = 21010201, pos = { x = 97.600, y = 120.324, z = -839.758 }, rot = { x = 0.000, y = 150.634, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 101 },
	{ config_id = 41008, monster_id = 21020201, pos = { x = 102.587, y = 120.342, z = -836.446 }, rot = { x = 0.000, y = 264.226, z = 0.000 }, level = 23, drop_tag = "丘丘暴徒", area_id = 101 },
	{ config_id = 41020, monster_id = 22010201, pos = { x = 88.190, y = 120.323, z = -843.004 }, rot = { x = 0.000, y = 139.251, z = 0.000 }, level = 23, drop_tag = "深渊法师", pose_id = 9013, area_id = 101 },
	{ config_id = 41024, monster_id = 21011001, pos = { x = 74.554, y = 123.783, z = -867.783 }, rot = { x = 7.643, y = 344.396, z = 350.647 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41002, gadget_id = 70211012, pos = { x = 96.812, y = 120.092, z = -849.755 }, rot = { x = 358.779, y = 299.769, z = 0.333 }, level = 26, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 41006, gadget_id = 70310009, pos = { x = 93.716, y = 120.071, z = -847.902 }, rot = { x = 0.000, y = 154.583, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41007, gadget_id = 70950092, pos = { x = 92.906, y = 120.000, z = -873.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41009, gadget_id = 70300091, pos = { x = 99.421, y = 120.139, z = -842.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41010, gadget_id = 70220013, pos = { x = 95.276, y = 120.208, z = -857.304 }, rot = { x = 358.211, y = 0.028, z = 358.210 }, level = 1, area_id = 101 },
	{ config_id = 41012, gadget_id = 70300091, pos = { x = 84.249, y = 120.493, z = -832.309 }, rot = { x = 0.000, y = 303.241, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41013, gadget_id = 70300089, pos = { x = 83.787, y = 120.270, z = -849.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41014, gadget_id = 70300089, pos = { x = 101.120, y = 119.947, z = -850.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41015, gadget_id = 70300086, pos = { x = 85.175, y = 121.072, z = -830.934 }, rot = { x = 270.494, y = 0.149, z = 29.862 }, level = 1, area_id = 101 },
	{ config_id = 41016, gadget_id = 70300086, pos = { x = 99.304, y = 120.576, z = -838.309 }, rot = { x = 276.054, y = 84.206, z = 210.023 }, level = 1, area_id = 101 },
	{ config_id = 41017, gadget_id = 70290061, pos = { x = 64.755, y = 120.000, z = -855.876 }, rot = { x = 0.000, y = 291.470, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41018, gadget_id = 70290061, pos = { x = 111.716, y = 120.000, z = -860.638 }, rot = { x = 0.000, y = 313.732, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41019, gadget_id = 70290061, pos = { x = 91.209, y = 120.000, z = -882.551 }, rot = { x = 0.000, y = 6.609, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41021, gadget_id = 70950092, pos = { x = 74.174, y = 120.000, z = -868.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 41022, gadget_id = 70220013, pos = { x = 75.822, y = 120.180, z = -836.313 }, rot = { x = 358.210, y = 359.994, z = 1.789 }, level = 1, area_id = 101 },
	{ config_id = 41023, gadget_id = 70220014, pos = { x = 93.041, y = 120.270, z = -856.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1041003, name = "ANY_MONSTER_DIE_41003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41003", action = "action_EVENT_ANY_MONSTER_DIE_41003" }
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
		monsters = { 41001, 41004, 41005, 41008, 41020, 41024 },
		gadgets = { 41002, 41006, 41007, 41009, 41010, 41012, 41013, 41014, 41015, 41016, 41017, 41018, 41019, 41021, 41022, 41023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_41003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41003(context, evt)
	-- 将configid为 41002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41002, GadgetState.Default) then
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