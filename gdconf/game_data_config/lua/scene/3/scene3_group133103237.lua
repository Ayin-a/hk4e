-- 基础信息
local base_info = {
	group_id = 133103237
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 237001, monster_id = 21020501, pos = { x = 399.119, y = 321.311, z = 2011.486 }, rot = { x = 0.000, y = 143.805, z = 0.000 }, level = 27, drop_tag = "丘丘岩盔王", disableWander = true, area_id = 6 },
	{ config_id = 237004, monster_id = 21030201, pos = { x = 413.210, y = 322.151, z = 2013.415 }, rot = { x = 0.000, y = 129.809, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 6 },
	{ config_id = 237005, monster_id = 21010501, pos = { x = 391.746, y = 326.768, z = 1997.517 }, rot = { x = 0.000, y = 295.427, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 237006, monster_id = 21010901, pos = { x = 419.249, y = 326.168, z = 1991.501 }, rot = { x = 0.000, y = 193.958, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 237020, monster_id = 21020201, pos = { x = 404.812, y = 319.981, z = 1997.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 237021, monster_id = 21020201, pos = { x = 409.883, y = 319.930, z = 1997.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 237024, monster_id = 26090101, pos = { x = 406.367, y = 329.981, z = 2042.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 237002, gadget_id = 70211022, pos = { x = 411.642, y = 325.708, z = 2025.322 }, rot = { x = 0.000, y = 165.949, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 237007, gadget_id = 70310001, pos = { x = 401.923, y = 320.227, z = 1997.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 237008, gadget_id = 70310001, pos = { x = 414.213, y = 320.585, z = 1996.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 237009, gadget_id = 70310001, pos = { x = 426.953, y = 321.781, z = 2014.825 }, rot = { x = 0.000, y = 273.822, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 237010, gadget_id = 70310001, pos = { x = 388.475, y = 322.613, z = 2002.422 }, rot = { x = 356.475, y = 0.301, z = 350.247 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 237011, gadget_id = 70310009, pos = { x = 388.445, y = 323.275, z = 2014.463 }, rot = { x = 0.000, y = 0.000, z = 357.639 }, level = 27, area_id = 6 },
	{ config_id = 237012, gadget_id = 70220014, pos = { x = 384.470, y = 323.970, z = 2013.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237013, gadget_id = 70220014, pos = { x = 430.882, y = 322.503, z = 2023.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237014, gadget_id = 70220014, pos = { x = 430.644, y = 322.586, z = 2023.612 }, rot = { x = 85.055, y = 325.944, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237015, gadget_id = 70300088, pos = { x = 430.690, y = 322.096, z = 2019.262 }, rot = { x = 0.000, y = 179.656, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237016, gadget_id = 70300088, pos = { x = 428.240, y = 322.523, z = 2025.871 }, rot = { x = 0.000, y = 132.640, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237017, gadget_id = 70220013, pos = { x = 430.768, y = 322.660, z = 2025.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237018, gadget_id = 70220013, pos = { x = 384.954, y = 323.879, z = 2014.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237019, gadget_id = 70220013, pos = { x = 394.353, y = 321.071, z = 1996.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237023, gadget_id = 70300087, pos = { x = 406.524, y = 329.519, z = 2041.810 }, rot = { x = 0.000, y = 51.896, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237025, gadget_id = 70220013, pos = { x = 432.462, y = 322.163, z = 2012.023 }, rot = { x = 0.000, y = 313.931, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237026, gadget_id = 70220014, pos = { x = 432.307, y = 322.163, z = 2010.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 237027, gadget_id = 70220014, pos = { x = 431.481, y = 322.380, z = 2011.482 }, rot = { x = 271.224, y = 180.000, z = 180.000 }, level = 27, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1237003, name = "ANY_MONSTER_DIE_237003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_237003", action = "action_EVENT_ANY_MONSTER_DIE_237003" },
	{ config_id = 1237022, name = "ANY_MONSTER_DIE_237022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_237022", action = "action_EVENT_ANY_MONSTER_DIE_237022" }
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
		monsters = { 237001, 237004, 237005, 237006, 237024 },
		gadgets = { 237002, 237007, 237008, 237009, 237010, 237011, 237012, 237013, 237014, 237015, 237016, 237017, 237018, 237019, 237023, 237025, 237026, 237027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_237003", "ANY_MONSTER_DIE_237022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 237020, 237021 },
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
function condition_EVENT_ANY_MONSTER_DIE_237003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_237003(context, evt)
	-- 将configid为 237002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 237002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_237022(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_237022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103237, 2)
	
	return 0
end