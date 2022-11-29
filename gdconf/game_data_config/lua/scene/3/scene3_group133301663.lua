-- 基础信息
local base_info = {
	group_id = 133301663
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 663001, monster_id = 21030201, pos = { x = -391.572, y = 256.398, z = 3303.622 }, rot = { x = 0.000, y = 276.232, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 22 },
	{ config_id = 663012, monster_id = 21010101, pos = { x = -398.098, y = 252.362, z = 3300.486 }, rot = { x = 0.000, y = 75.759, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 22 },
	{ config_id = 663013, monster_id = 21010101, pos = { x = -395.690, y = 252.605, z = 3307.236 }, rot = { x = 0.000, y = 122.681, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 22 },
	{ config_id = 663030, monster_id = 21020701, pos = { x = -399.120, y = 252.874, z = 3320.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 663002, gadget_id = 70211022, pos = { x = -389.566, y = 256.424, z = 3303.197 }, rot = { x = 0.000, y = 281.909, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 663004, gadget_id = 70330216, pos = { x = -394.391, y = 253.518, z = 3330.372 }, rot = { x = 357.090, y = 66.664, z = 358.275 }, level = 27, area_id = 22 },
	{ config_id = 663005, gadget_id = 70330216, pos = { x = -418.983, y = 242.908, z = 3363.905 }, rot = { x = 337.101, y = 66.508, z = 8.602 }, level = 27, area_id = 22 },
	{ config_id = 663006, gadget_id = 70330216, pos = { x = -425.061, y = 239.864, z = 3334.292 }, rot = { x = 326.356, y = 101.226, z = 344.232 }, level = 33, area_id = 22 },
	{ config_id = 663007, gadget_id = 70330216, pos = { x = -417.908, y = 244.231, z = 3274.283 }, rot = { x = 337.606, y = 51.574, z = 355.139 }, level = 27, area_id = 22 },
	{ config_id = 663008, gadget_id = 70330216, pos = { x = -368.308, y = 258.690, z = 3284.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663009, gadget_id = 70330216, pos = { x = -408.243, y = 252.984, z = 3319.841 }, rot = { x = 0.000, y = 229.581, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663010, gadget_id = 70330216, pos = { x = -381.643, y = 254.497, z = 3312.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663011, gadget_id = 70330216, pos = { x = -394.996, y = 252.490, z = 3302.010 }, rot = { x = 353.637, y = 64.535, z = 353.932 }, level = 27, area_id = 22 },
	{ config_id = 663015, gadget_id = 70310001, pos = { x = -397.402, y = 248.392, z = 3278.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 663016, gadget_id = 70310001, pos = { x = -398.121, y = 252.624, z = 3337.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 663017, gadget_id = 70310001, pos = { x = -408.454, y = 248.254, z = 3346.615 }, rot = { x = 0.000, y = 278.330, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 663018, gadget_id = 70310001, pos = { x = -406.605, y = 253.327, z = 3303.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 663019, gadget_id = 70310001, pos = { x = -392.839, y = 253.346, z = 3318.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 663020, gadget_id = 70310001, pos = { x = -395.677, y = 253.206, z = 3323.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 663021, gadget_id = 70310001, pos = { x = -392.412, y = 248.660, z = 3275.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 663022, gadget_id = 70220013, pos = { x = -369.292, y = 259.590, z = 3303.706 }, rot = { x = 0.000, y = 243.374, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663023, gadget_id = 70220013, pos = { x = -371.820, y = 259.591, z = 3305.359 }, rot = { x = 0.000, y = 17.148, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663024, gadget_id = 70220013, pos = { x = -384.811, y = 258.053, z = 3330.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663025, gadget_id = 70220014, pos = { x = -412.356, y = 253.993, z = 3309.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663026, gadget_id = 70220014, pos = { x = -411.683, y = 253.977, z = 3308.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663027, gadget_id = 70220014, pos = { x = -369.738, y = 259.593, z = 3295.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663028, gadget_id = 70220014, pos = { x = -370.886, y = 259.593, z = 3294.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663029, gadget_id = 70220014, pos = { x = -381.524, y = 258.053, z = 3327.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 663031, gadget_id = 70330216, pos = { x = -371.978, y = 256.136, z = 3244.988 }, rot = { x = 328.368, y = 72.323, z = 3.614 }, level = 27, area_id = 22 },
	{ config_id = 663032, gadget_id = 70330216, pos = { x = -370.769, y = 256.044, z = 3232.005 }, rot = { x = 332.231, y = 123.352, z = 332.141 }, level = 27, area_id = 22 },
	{ config_id = 663033, gadget_id = 70330216, pos = { x = -453.187, y = 232.564, z = 3327.484 }, rot = { x = 0.000, y = 353.692, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1663003, name = "ANY_MONSTER_DIE_663003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_663003", action = "action_EVENT_ANY_MONSTER_DIE_663003" }
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
		monsters = { 663001, 663012, 663013, 663030 },
		gadgets = { 663002, 663004, 663005, 663006, 663007, 663008, 663009, 663010, 663011, 663015, 663016, 663017, 663018, 663019, 663020, 663021, 663022, 663023, 663024, 663025, 663026, 663027, 663028, 663029, 663031, 663032, 663033 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_663003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_663003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_663003(context, evt)
	-- 将configid为 663002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 663002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end