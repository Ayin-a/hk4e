-- 基础信息
local base_info = {
	group_id = 133225060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 21030101, pos = { x = -6383.974, y = 200.598, z = -2376.909 }, rot = { x = 0.000, y = 270.767, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, climate_area_id = 7, area_id = 18 },
	{ config_id = 60004, monster_id = 20011001, pos = { x = -6386.711, y = 200.736, z = -2376.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 60005, monster_id = 21011001, pos = { x = -6370.947, y = 205.585, z = -2394.298 }, rot = { x = 0.000, y = 185.865, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 60006, monster_id = 21020701, pos = { x = -6407.089, y = 201.849, z = -2392.593 }, rot = { x = 0.000, y = 31.466, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", climate_area_id = 7, area_id = 18 },
	{ config_id = 60007, monster_id = 21010101, pos = { x = -6388.243, y = 200.202, z = -2379.206 }, rot = { x = 0.000, y = 125.326, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60002, gadget_id = 70211012, pos = { x = -6407.694, y = 201.041, z = -2386.212 }, rot = { x = 355.053, y = 134.687, z = 4.007 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 60008, gadget_id = 70310001, pos = { x = -6397.240, y = 200.535, z = -2399.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 60009, gadget_id = 70310001, pos = { x = -6401.744, y = 201.340, z = -2380.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 60010, gadget_id = 70310001, pos = { x = -6363.908, y = 204.650, z = -2374.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 60011, gadget_id = 70310001, pos = { x = -6373.673, y = 200.653, z = -2395.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 60012, gadget_id = 70310001, pos = { x = -6390.354, y = 200.146, z = -2377.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1060003, name = "ANY_MONSTER_DIE_60003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_60003", action = "action_EVENT_ANY_MONSTER_DIE_60003" }
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
		monsters = { 60001, 60004, 60005, 60006, 60007 },
		gadgets = { 60002, 60008, 60009, 60010, 60011, 60012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_60003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_60003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_60003(context, evt)
	-- 将configid为 60002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 60002, GadgetState.Default) then
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