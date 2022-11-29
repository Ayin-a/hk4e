-- 基础信息
local base_info = {
	group_id = 133213022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 21011001, pos = { x = -3942.013, y = 202.058, z = -2954.703 }, rot = { x = 0.304, y = 350.348, z = 357.338 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 12 },
	{ config_id = 22004, monster_id = 22010401, pos = { x = -3945.236, y = 203.275, z = -2964.078 }, rot = { x = 358.518, y = 315.425, z = 356.485 }, level = 27, drop_tag = "深渊法师", pose_id = 9013, area_id = 12 },
	{ config_id = 22005, monster_id = 21020201, pos = { x = -3947.819, y = 200.207, z = -2951.472 }, rot = { x = 3.467, y = 2.283, z = 2.819 }, level = 27, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 22002, gadget_id = 70211002, pos = { x = -3950.306, y = 201.995, z = -2958.852 }, rot = { x = 356.530, y = 0.224, z = 353.515 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 22006, gadget_id = 70900393, pos = { x = -3946.976, y = 203.489, z = -2962.376 }, rot = { x = 3.669, y = 32.752, z = 356.553 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 22007, gadget_id = 70220013, pos = { x = -3937.100, y = 203.403, z = -2963.207 }, rot = { x = 11.736, y = 4.249, z = 8.709 }, level = 27, area_id = 12 },
	{ config_id = 22008, gadget_id = 70220013, pos = { x = -3952.168, y = 202.385, z = -2968.402 }, rot = { x = 358.220, y = 359.917, z = 7.125 }, level = 27, area_id = 12 },
	{ config_id = 22009, gadget_id = 70220013, pos = { x = -3966.434, y = 200.582, z = -2965.440 }, rot = { x = 4.218, y = 342.406, z = 1.474 }, level = 27, area_id = 12 },
	{ config_id = 22010, gadget_id = 70220013, pos = { x = -3969.675, y = 200.340, z = -2963.992 }, rot = { x = 4.238, y = 304.646, z = 358.585 }, level = 27, area_id = 12 },
	{ config_id = 22011, gadget_id = 70220014, pos = { x = -3967.365, y = 200.407, z = -2963.473 }, rot = { x = 4.431, y = 0.767, z = 2.735 }, level = 27, area_id = 12 },
	{ config_id = 22012, gadget_id = 70220014, pos = { x = -3936.272, y = 203.198, z = -2961.735 }, rot = { x = 11.998, y = 2.464, z = 8.342 }, level = 27, area_id = 12 },
	{ config_id = 22013, gadget_id = 70300108, pos = { x = -3943.428, y = 200.442, z = -2925.564 }, rot = { x = 357.372, y = 84.569, z = 351.333 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1022003, name = "ANY_MONSTER_DIE_22003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22003", action = "action_EVENT_ANY_MONSTER_DIE_22003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 22014, gadget_id = 42101011, pos = { x = -3943.353, y = 202.063, z = -2926.502 }, rot = { x = 0.000, y = 354.337, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 22015, gadget_id = 42101011, pos = { x = -3943.402, y = 202.206, z = -2926.510 }, rot = { x = 0.000, y = 354.337, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 22016, gadget_id = 42101011, pos = { x = -3943.402, y = 201.822, z = -2926.429 }, rot = { x = 0.000, y = 354.337, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 22017, gadget_id = 42101011, pos = { x = -3944.657, y = 200.084, z = -2927.808 }, rot = { x = 351.075, y = 354.338, z = 359.993 }, level = 27, area_id = 12 },
		{ config_id = 22018, gadget_id = 42101011, pos = { x = -3941.594, y = 200.512, z = -2925.631 }, rot = { x = 347.904, y = 354.018, z = 3.016 }, level = 27, area_id = 12 },
		{ config_id = 22019, gadget_id = 42101011, pos = { x = -3944.097, y = 200.753, z = -2922.648 }, rot = { x = 351.251, y = 354.216, z = 1.772 }, level = 27, area_id = 12 }
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
		monsters = { 22001, 22004, 22005 },
		gadgets = { 22002, 22006, 22007, 22008, 22009, 22010, 22011, 22012, 22013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22003(context, evt)
	-- 将configid为 22002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.Default) then
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