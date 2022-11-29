-- 基础信息
local base_info = {
	group_id = 133106113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113001, monster_id = 22010101, pos = { x = -653.111, y = 212.478, z = 1295.917 }, rot = { x = 0.000, y = 41.338, z = 0.000 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 8 },
	{ config_id = 113006, monster_id = 21030201, pos = { x = -645.527, y = 212.819, z = 1292.326 }, rot = { x = 0.000, y = 84.328, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 8 },
	{ config_id = 113007, monster_id = 21011001, pos = { x = -644.941, y = 212.676, z = 1288.582 }, rot = { x = 0.000, y = 283.564, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 8 },
	{ config_id = 113024, monster_id = 21010601, pos = { x = -672.685, y = 212.378, z = 1293.914 }, rot = { x = 0.000, y = 260.491, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9011, area_id = 8 },
	{ config_id = 113025, monster_id = 21011201, pos = { x = -672.664, y = 211.675, z = 1286.089 }, rot = { x = 0.000, y = 239.936, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 8 },
	{ config_id = 113026, monster_id = 21020301, pos = { x = -654.386, y = 211.962, z = 1285.530 }, rot = { x = 0.000, y = 321.069, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 113002, gadget_id = 70211022, pos = { x = -651.374, y = 212.832, z = 1298.154 }, rot = { x = 12.777, y = 218.918, z = 2.374 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 113004, gadget_id = 70300107, pos = { x = -653.575, y = 212.705, z = 1298.812 }, rot = { x = 0.000, y = 82.182, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 113005, gadget_id = 70300107, pos = { x = -650.103, y = 212.678, z = 1296.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 113008, gadget_id = 70310001, pos = { x = -669.539, y = 211.331, z = 1279.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 113009, gadget_id = 70310001, pos = { x = -674.390, y = 211.761, z = 1287.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 113010, gadget_id = 70310001, pos = { x = -666.611, y = 212.905, z = 1306.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 113011, gadget_id = 70310001, pos = { x = -643.154, y = 213.491, z = 1295.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 113012, gadget_id = 70220013, pos = { x = -661.870, y = 213.151, z = 1309.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113013, gadget_id = 70220013, pos = { x = -659.976, y = 211.711, z = 1275.673 }, rot = { x = 0.000, y = 56.760, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113014, gadget_id = 70220013, pos = { x = -655.766, y = 211.897, z = 1282.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113015, gadget_id = 70220014, pos = { x = -661.044, y = 211.689, z = 1274.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113016, gadget_id = 70220014, pos = { x = -655.571, y = 212.079, z = 1281.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113017, gadget_id = 70220014, pos = { x = -657.337, y = 211.960, z = 1282.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113018, gadget_id = 70220014, pos = { x = -674.771, y = 212.585, z = 1293.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113019, gadget_id = 70220014, pos = { x = -674.727, y = 212.398, z = 1292.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113020, gadget_id = 70220014, pos = { x = -660.296, y = 213.215, z = 1308.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113021, gadget_id = 70220014, pos = { x = -640.597, y = 212.794, z = 1285.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113022, gadget_id = 70300085, pos = { x = -656.927, y = 212.000, z = 1290.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113023, gadget_id = 70300089, pos = { x = -674.290, y = 212.174, z = 1291.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 113027, gadget_id = 70300087, pos = { x = -657.127, y = 212.452, z = 1290.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1113003, name = "ANY_MONSTER_DIE_113003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_113003", action = "action_EVENT_ANY_MONSTER_DIE_113003" }
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
		monsters = { 113001, 113006, 113007, 113024, 113025, 113026 },
		gadgets = { 113002, 113004, 113005, 113008, 113009, 113010, 113011, 113012, 113013, 113014, 113015, 113016, 113017, 113018, 113019, 113020, 113021, 113022, 113023, 113027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_113003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_113003(context, evt)
	-- 将configid为 113002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113002, GadgetState.Default) then
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