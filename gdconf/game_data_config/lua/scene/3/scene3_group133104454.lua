-- 基础信息
local base_info = {
	group_id = 133104454
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 454001, monster_id = 21020201, pos = { x = -122.717, y = 283.867, z = 485.666 }, rot = { x = 12.151, y = 57.982, z = 354.540 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 7 },
	{ config_id = 454004, monster_id = 21011201, pos = { x = -122.166, y = 284.235, z = 479.823 }, rot = { x = 4.879, y = 13.565, z = 347.608 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 454005, monster_id = 21011201, pos = { x = -126.778, y = 284.439, z = 488.703 }, rot = { x = 12.521, y = 102.493, z = 4.533 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 454006, monster_id = 21030201, pos = { x = -129.612, y = 285.979, z = 482.254 }, rot = { x = 12.995, y = 69.810, z = 357.124 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, area_id = 7 },
	{ config_id = 454015, monster_id = 21010501, pos = { x = -125.578, y = 285.268, z = 479.739 }, rot = { x = 350.249, y = 219.023, z = 9.094 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 454002, gadget_id = 70211022, pos = { x = -126.070, y = 284.823, z = 484.192 }, rot = { x = 15.062, y = 47.739, z = 355.824 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 454007, gadget_id = 70220013, pos = { x = -116.911, y = 282.427, z = 482.007 }, rot = { x = 0.000, y = 0.000, z = 342.645 }, level = 19, area_id = 7 },
	{ config_id = 454008, gadget_id = 70220013, pos = { x = -117.574, y = 282.535, z = 485.351 }, rot = { x = 2.604, y = 359.679, z = 345.963 }, level = 19, area_id = 7 },
	{ config_id = 454009, gadget_id = 70220014, pos = { x = -126.832, y = 283.909, z = 492.988 }, rot = { x = 6.136, y = 359.429, z = 349.380 }, level = 19, area_id = 7 },
	{ config_id = 454010, gadget_id = 70220014, pos = { x = -128.266, y = 284.275, z = 492.085 }, rot = { x = 7.005, y = 359.348, z = 349.380 }, level = 19, area_id = 7 },
	{ config_id = 454011, gadget_id = 70300089, pos = { x = -130.967, y = 285.541, z = 487.188 }, rot = { x = 9.561, y = 359.037, z = 348.517 }, level = 19, area_id = 7 },
	{ config_id = 454012, gadget_id = 70300089, pos = { x = -119.673, y = 282.810, z = 489.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 7 },
	{ config_id = 454013, gadget_id = 70300088, pos = { x = -128.027, y = 286.447, z = 476.692 }, rot = { x = 357.565, y = 319.702, z = 343.750 }, level = 19, area_id = 7 },
	{ config_id = 454014, gadget_id = 70300088, pos = { x = -126.050, y = 285.995, z = 475.402 }, rot = { x = 342.907, y = 272.827, z = 354.049 }, level = 19, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1454003, name = "ANY_MONSTER_DIE_454003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_454003", action = "action_EVENT_ANY_MONSTER_DIE_454003" }
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
		monsters = { 454001 },
		gadgets = { 454002, 454007, 454008, 454009, 454010, 454011, 454012, 454013, 454014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_454003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_454003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_454003(context, evt)
	-- 将configid为 454002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454002, GadgetState.Default) then
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