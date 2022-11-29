-- 基础信息
local base_info = {
	group_id = 133315048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 21010301, pos = { x = 474.442, y = 228.362, z = 2335.718 }, rot = { x = 0.000, y = 353.523, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9017, area_id = 20 },
	{ config_id = 48004, monster_id = 21030201, pos = { x = 454.649, y = 226.185, z = 2324.814 }, rot = { x = 0.000, y = 282.746, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", area_id = 20 },
	{ config_id = 48006, monster_id = 21010501, pos = { x = 478.928, y = 228.477, z = 2329.089 }, rot = { x = 0.000, y = 228.848, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 20 },
	{ config_id = 48018, monster_id = 21010501, pos = { x = 464.253, y = 226.404, z = 2316.532 }, rot = { x = 0.000, y = 191.683, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 20 },
	{ config_id = 48021, monster_id = 28061401, pos = { x = 478.697, y = 228.108, z = 2325.382 }, rot = { x = 0.000, y = 335.062, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", pose_id = 3, area_id = 20 },
	{ config_id = 48031, monster_id = 21010101, pos = { x = 472.707, y = 228.357, z = 2322.520 }, rot = { x = 0.000, y = 253.689, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 48002, gadget_id = 70211002, pos = { x = 452.562, y = 226.189, z = 2325.023 }, rot = { x = 0.000, y = 290.307, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 48005, gadget_id = 70210101, pos = { x = 479.172, y = 228.593, z = 2337.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 20 },
	{ config_id = 48007, gadget_id = 70210101, pos = { x = 477.233, y = 227.422, z = 2319.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 48008, shape = RegionShape.SPHERE, radius = 60, pos = { x = 474.646, y = 227.990, z = 2325.155 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1048003, name = "ANY_MONSTER_DIE_48003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48003", action = "action_EVENT_ANY_MONSTER_DIE_48003" },
	{ config_id = 1048008, name = "ENTER_REGION_48008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48008", action = "action_EVENT_ENTER_REGION_48008" }
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
		monsters = { 48021 },
		gadgets = { 48002, 48005, 48007 },
		regions = { 48008 },
		triggers = { "ANY_MONSTER_DIE_48003", "ENTER_REGION_48008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 48001, 48004, 48006, 48018, 48031 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48003(context, evt)
	-- 将configid为 48002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48002, GadgetState.Default) then
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
function condition_EVENT_ENTER_REGION_48008(context, evt)
	if evt.param1 ~= 48008 then return false end
	
	-- 判断是区域48008
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 48008 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315048, 2)
	
	return 0
end