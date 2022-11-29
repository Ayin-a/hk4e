-- 基础信息
local base_info = {
	group_id = 133304129
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 129001, monster_id = 21010201, pos = { x = -1409.523, y = 195.221, z = 2483.167 }, rot = { x = 0.000, y = 158.804, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 21 },
	{ config_id = 129012, monster_id = 21020101, pos = { x = -1379.841, y = 196.455, z = 2480.790 }, rot = { x = 0.000, y = 80.134, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", area_id = 21 },
	{ config_id = 129013, monster_id = 21010101, pos = { x = -1400.146, y = 202.005, z = 2493.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9011, area_id = 21 },
	{ config_id = 129014, monster_id = 21010901, pos = { x = -1385.190, y = 195.851, z = 2481.147 }, rot = { x = 0.000, y = 228.531, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 21 },
	{ config_id = 129015, monster_id = 21011001, pos = { x = -1392.950, y = 191.008, z = 2474.750 }, rot = { x = 0.000, y = 210.353, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 32, area_id = 21 },
	{ config_id = 129019, monster_id = 21030101, pos = { x = -1406.597, y = 194.724, z = 2481.388 }, rot = { x = 0.000, y = 316.412, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 129002, gadget_id = 70211012, pos = { x = -1397.644, y = 192.001, z = 2467.879 }, rot = { x = 353.032, y = 359.987, z = 348.804 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 129004, gadget_id = 70220013, pos = { x = -1405.785, y = 192.668, z = 2467.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 129005, gadget_id = 70220013, pos = { x = -1409.179, y = 192.038, z = 2468.780 }, rot = { x = 0.000, y = 324.385, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 129006, gadget_id = 70300108, pos = { x = -1394.226, y = 191.510, z = 2473.828 }, rot = { x = 0.000, y = 310.213, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 129007, gadget_id = 70300108, pos = { x = -1398.707, y = 192.703, z = 2474.397 }, rot = { x = 354.251, y = 303.653, z = 355.637 }, level = 30, area_id = 21 },
	{ config_id = 129011, gadget_id = 70300089, pos = { x = -1400.449, y = 202.017, z = 2495.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 129017, gadget_id = 70300087, pos = { x = -1402.042, y = 192.521, z = 2467.040 }, rot = { x = 350.716, y = 6.267, z = 354.625 }, level = 30, area_id = 21 },
	{ config_id = 129018, gadget_id = 70310006, pos = { x = -1407.335, y = 195.114, z = 2482.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1129003, name = "ANY_MONSTER_DIE_129003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_129003", action = "action_EVENT_ANY_MONSTER_DIE_129003", trigger_count = 0 }
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
		monsters = { 129001, 129012, 129013, 129014, 129015, 129019 },
		gadgets = { 129002, 129004, 129005, 129006, 129007, 129011, 129017, 129018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_129003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_129003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_129003(context, evt)
	-- 将configid为 129002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 129002, GadgetState.Default) then
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