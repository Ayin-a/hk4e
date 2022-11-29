-- 基础信息
local base_info = {
	group_id = 133008328
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 328001, monster_id = 21011401, pos = { x = 658.520, y = 200.684, z = -864.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 328005, monster_id = 21011401, pos = { x = 659.038, y = 201.169, z = -849.841 }, rot = { x = 0.000, y = 9.208, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 328006, monster_id = 21011301, pos = { x = 660.984, y = 200.687, z = -859.135 }, rot = { x = 0.000, y = 224.914, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9013, climate_area_id = 1, area_id = 10 },
	{ config_id = 328007, monster_id = 21030501, pos = { x = 656.948, y = 200.574, z = -858.921 }, rot = { x = 0.000, y = 145.547, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", pose_id = 9012, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 328002, gadget_id = 70211012, pos = { x = 653.241, y = 200.477, z = -862.526 }, rot = { x = 0.000, y = 68.943, z = 0.000 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 328004, gadget_id = 70310019, pos = { x = 658.658, y = 200.651, z = -861.200 }, rot = { x = 0.000, y = 344.523, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 328008, gadget_id = 70220059, pos = { x = 663.147, y = 200.717, z = -856.841 }, rot = { x = 2.794, y = 9.772, z = 357.227 }, level = 30, area_id = 10 },
	{ config_id = 328009, gadget_id = 70220059, pos = { x = 662.558, y = 200.748, z = -868.461 }, rot = { x = 0.000, y = 32.068, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 328010, gadget_id = 70220058, pos = { x = 660.543, y = 200.728, z = -869.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 328011, gadget_id = 70220058, pos = { x = 654.567, y = 200.616, z = -855.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 328012, gadget_id = 70220060, pos = { x = 661.140, y = 200.709, z = -856.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 328013, gadget_id = 70220060, pos = { x = 660.119, y = 200.776, z = -864.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 328014, gadget_id = 70220060, pos = { x = 662.013, y = 200.779, z = -864.618 }, rot = { x = 355.403, y = 324.854, z = 83.505 }, level = 30, area_id = 10 },
	{ config_id = 328015, gadget_id = 70220059, pos = { x = 670.929, y = 200.829, z = -852.306 }, rot = { x = 2.794, y = 9.772, z = 357.227 }, level = 30, area_id = 10 },
	{ config_id = 328016, gadget_id = 70220059, pos = { x = 675.077, y = 200.829, z = -850.686 }, rot = { x = 359.313, y = 314.542, z = 356.125 }, level = 30, area_id = 10 },
	{ config_id = 328017, gadget_id = 70220060, pos = { x = 646.912, y = 200.841, z = -829.569 }, rot = { x = 0.029, y = 0.000, z = 358.305 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1328003, name = "ANY_MONSTER_DIE_328003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_328003", action = "action_EVENT_ANY_MONSTER_DIE_328003" }
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
		monsters = { 328001, 328005, 328006, 328007 },
		gadgets = { 328002, 328004, 328008, 328009, 328010, 328011, 328012, 328013, 328014, 328015, 328016, 328017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_328003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_328003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_328003(context, evt)
	-- 将configid为 328002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328002, GadgetState.Default) then
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