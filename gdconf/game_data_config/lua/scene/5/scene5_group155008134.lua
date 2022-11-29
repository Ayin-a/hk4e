-- 基础信息
local base_info = {
	group_id = 155008134
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 134001, monster_id = 21010201, pos = { x = -560.719, y = 217.058, z = 552.728 }, rot = { x = 0.000, y = 76.803, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 134007, monster_id = 21010201, pos = { x = -558.153, y = 216.988, z = 551.633 }, rot = { x = 0.000, y = 315.738, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 134008, monster_id = 21010201, pos = { x = -558.518, y = 216.782, z = 554.921 }, rot = { x = 0.000, y = 214.568, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 134011, monster_id = 21030101, pos = { x = -564.438, y = 217.167, z = 550.809 }, rot = { x = 0.000, y = 180.726, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 200 },
	{ config_id = 134012, monster_id = 21030601, pos = { x = -564.448, y = 217.238, z = 549.310 }, rot = { x = 0.000, y = 2.952, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 134002, gadget_id = 70211002, pos = { x = -566.364, y = 217.111, z = 552.860 }, rot = { x = 0.000, y = 105.215, z = 0.000 }, level = 21, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 134005, gadget_id = 70300089, pos = { x = -559.463, y = 216.979, z = 552.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 134006, gadget_id = 70300086, pos = { x = -569.374, y = 216.037, z = 547.950 }, rot = { x = 348.493, y = 0.000, z = 356.743 }, level = 36, area_id = 200 },
	{ config_id = 134009, gadget_id = 70220026, pos = { x = -563.989, y = 217.411, z = 545.952 }, rot = { x = 0.000, y = 11.011, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 134010, gadget_id = 70220013, pos = { x = -561.585, y = 217.266, z = 547.353 }, rot = { x = 0.000, y = 341.278, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1134003, name = "ANY_MONSTER_DIE_134003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134003", action = "action_EVENT_ANY_MONSTER_DIE_134003" }
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
		monsters = { 134001, 134007, 134008, 134011, 134012 },
		gadgets = { 134002, 134005, 134006, 134009, 134010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_134003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_134003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134003(context, evt)
	-- 将configid为 134002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 134002, GadgetState.Default) then
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