-- 基础信息
local base_info = {
	group_id = 133315273
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 273001, monster_id = 21010401, pos = { x = 468.540, y = 268.956, z = 2370.632 }, rot = { x = 0.000, y = 21.758, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 20 },
	{ config_id = 273002, monster_id = 21010401, pos = { x = 472.722, y = 269.259, z = 2377.929 }, rot = { x = 0.000, y = 196.592, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 20 },
	{ config_id = 273003, monster_id = 21010501, pos = { x = 497.444, y = 273.938, z = 2358.298 }, rot = { x = 0.000, y = 114.719, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 20 },
	{ config_id = 273005, monster_id = 20010401, pos = { x = 470.928, y = 270.628, z = 2373.964 }, rot = { x = 0.000, y = 119.725, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 20 },
	{ config_id = 273008, monster_id = 21010101, pos = { x = 466.836, y = 269.088, z = 2375.141 }, rot = { x = 0.000, y = 107.963, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 273004, gadget_id = 70290543, pos = { x = 470.893, y = 270.557, z = 2373.763 }, rot = { x = 0.000, y = 50.013, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 273006, gadget_id = 70211002, pos = { x = 486.615, y = 272.779, z = 2364.168 }, rot = { x = 345.845, y = 125.596, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 273009, shape = RegionShape.SPHERE, radius = 50, pos = { x = 458.613, y = 268.922, z = 2366.452 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1273007, name = "ANY_MONSTER_DIE_273007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_273007", action = "action_EVENT_ANY_MONSTER_DIE_273007" },
	{ config_id = 1273009, name = "ENTER_REGION_273009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_273009", action = "action_EVENT_ENTER_REGION_273009" }
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
		monsters = { },
		gadgets = { 273004, 273006 },
		regions = { 273009 },
		triggers = { "ENTER_REGION_273009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 273001, 273002, 273003, 273005, 273008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_273007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_273007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_273007(context, evt)
	-- 将configid为 273006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 273006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_273009(context, evt)
	if evt.param1 ~= 273009 then return false end
	
	-- 判断是区域273009
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 273009 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_273009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315273, 2)
	
	return 0
end