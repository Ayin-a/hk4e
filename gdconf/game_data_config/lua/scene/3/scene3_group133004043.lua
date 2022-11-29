-- 基础信息
local base_info = {
	group_id = 133004043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 112, monster_id = 21010501, pos = { x = 2647.592, y = 223.060, z = -482.004 }, rot = { x = 0.000, y = 251.787, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 113, monster_id = 21010501, pos = { x = 2636.436, y = 219.618, z = -487.233 }, rot = { x = 0.000, y = 139.856, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 114, monster_id = 21010401, pos = { x = 2644.759, y = 221.682, z = -484.664 }, rot = { x = 0.000, y = 17.524, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 370, monster_id = 21030301, pos = { x = 2645.521, y = 222.916, z = -482.003 }, rot = { x = 0.000, y = 153.814, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 371, monster_id = 20010301, pos = { x = 2643.515, y = 222.287, z = -482.821 }, rot = { x = 0.000, y = 112.990, z = 0.000 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 171, gadget_id = 70211012, pos = { x = 2643.631, y = 222.793, z = -480.563 }, rot = { x = 3.266, y = 140.412, z = 341.974 }, level = 16, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 831, gadget_id = 70220013, pos = { x = 2648.568, y = 223.885, z = -479.850 }, rot = { x = 0.000, y = 117.424, z = 344.944 }, level = 20, area_id = 4 },
	{ config_id = 832, gadget_id = 70310003, pos = { x = 2636.455, y = 220.454, z = -484.482 }, rot = { x = 0.000, y = 233.737, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 833, gadget_id = 70220014, pos = { x = 2646.585, y = 223.608, z = -479.419 }, rot = { x = 0.000, y = 358.674, z = 0.000 }, level = 20, area_id = 4 },
	{ config_id = 834, gadget_id = 70220014, pos = { x = 2645.709, y = 223.510, z = -478.610 }, rot = { x = 0.000, y = 77.198, z = 0.000 }, level = 20, area_id = 4 },
	{ config_id = 836, gadget_id = 70310004, pos = { x = 2645.486, y = 222.570, z = -483.107 }, rot = { x = 0.000, y = 256.815, z = 0.000 }, level = 20, area_id = 4 },
	{ config_id = 1374, gadget_id = 70310003, pos = { x = 2647.875, y = 222.478, z = -483.611 }, rot = { x = 0.000, y = 233.737, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1043001, name = "ANY_MONSTER_DIE_43001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43001", action = "action_EVENT_ANY_MONSTER_DIE_43001" }
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
	rand_suite = true
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
		monsters = { 112, 113, 114, 370, 371 },
		gadgets = { 171, 831, 832, 833, 834, 836, 1374 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_43001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43001(context, evt)
	-- 将configid为 171 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171, GadgetState.Default) then
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