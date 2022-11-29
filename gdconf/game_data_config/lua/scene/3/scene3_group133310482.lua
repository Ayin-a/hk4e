-- 基础信息
local base_info = {
	group_id = 133310482
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 482001, monster_id = 21011001, pos = { x = -2496.844, y = 263.968, z = 4343.034 }, rot = { x = 0.000, y = 103.323, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 26 },
	{ config_id = 482007, monster_id = 28061001, pos = { x = -2486.596, y = 255.923, z = 4346.711 }, rot = { x = 0.000, y = 27.952, z = 0.000 }, level = 32, drop_tag = "驮兽丘丘人", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 482008, monster_id = 28061002, pos = { x = -2485.357, y = 256.221, z = 4351.841 }, rot = { x = 0.000, y = 169.705, z = 0.000 }, level = 32, drop_tag = "驮兽丘丘人", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 482010, monster_id = 21020201, pos = { x = -2482.466, y = 256.242, z = 4352.686 }, rot = { x = 0.000, y = 120.703, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 26 },
	{ config_id = 482014, monster_id = 21010301, pos = { x = -2477.407, y = 256.007, z = 4352.006 }, rot = { x = 0.000, y = 172.575, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 482002, gadget_id = 70211002, pos = { x = -2482.452, y = 255.770, z = 4346.924 }, rot = { x = 6.203, y = 133.480, z = 356.064 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 482004, gadget_id = 70220013, pos = { x = -2498.805, y = 264.035, z = 4343.295 }, rot = { x = 359.647, y = 0.042, z = 354.788 }, level = 32, area_id = 26 },
	{ config_id = 482005, gadget_id = 70220108, pos = { x = -2496.997, y = 263.917, z = 4344.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 482006, gadget_id = 70220026, pos = { x = -2498.236, y = 263.933, z = 4345.183 }, rot = { x = 7.177, y = 37.121, z = 359.993 }, level = 32, area_id = 26 },
	{ config_id = 482009, gadget_id = 70300087, pos = { x = -2484.895, y = 256.123, z = 4349.155 }, rot = { x = 356.510, y = 331.260, z = 2.929 }, level = 32, area_id = 26 },
	{ config_id = 482011, gadget_id = 70300086, pos = { x = -2487.973, y = 256.626, z = 4357.447 }, rot = { x = 15.532, y = 351.809, z = 8.153 }, level = 32, area_id = 26 },
	{ config_id = 482012, gadget_id = 70300086, pos = { x = -2485.270, y = 253.786, z = 4338.825 }, rot = { x = 341.265, y = 21.629, z = 349.618 }, level = 32, area_id = 26 },
	{ config_id = 482013, gadget_id = 70300086, pos = { x = -2495.453, y = 256.505, z = 4350.494 }, rot = { x = 6.800, y = 359.684, z = 12.100 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1482003, name = "ANY_MONSTER_DIE_482003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_482003", action = "action_EVENT_ANY_MONSTER_DIE_482003" }
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
		monsters = { 482001, 482007, 482008, 482010, 482014 },
		gadgets = { 482002, 482004, 482005, 482006, 482009, 482011, 482012, 482013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_482003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_482003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_482003(context, evt)
	-- 将configid为 482002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482002, GadgetState.Default) then
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