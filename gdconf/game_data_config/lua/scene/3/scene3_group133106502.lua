-- 基础信息
local base_info = {
	group_id = 133106502
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 502001, monster_id = 24010201, pos = { x = -168.879, y = 278.279, z = 1423.775 }, rot = { x = 0.000, y = 220.150, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 19 },
	{ config_id = 502004, monster_id = 21011601, pos = { x = -172.567, y = 278.279, z = 1422.711 }, rot = { x = 0.000, y = 43.275, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9013, area_id = 19 },
	{ config_id = 502005, monster_id = 21010601, pos = { x = -169.920, y = 278.279, z = 1420.237 }, rot = { x = 0.000, y = 29.040, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9014, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 502002, gadget_id = 70211012, pos = { x = -159.860, y = 278.279, z = 1425.173 }, rot = { x = 0.000, y = 71.348, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 502006, gadget_id = 70310001, pos = { x = -161.391, y = 278.279, z = 1428.767 }, rot = { x = 0.000, y = 78.368, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 19 },
	{ config_id = 502007, gadget_id = 70310001, pos = { x = -158.980, y = 278.279, z = 1421.631 }, rot = { x = 0.000, y = 78.368, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 19 },
	{ config_id = 502008, gadget_id = 70220013, pos = { x = -177.715, y = 278.279, z = 1420.730 }, rot = { x = 0.000, y = 327.647, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 502009, gadget_id = 70220014, pos = { x = -175.876, y = 278.279, z = 1418.236 }, rot = { x = 0.000, y = 127.467, z = 0.000 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1502003, name = "ANY_MONSTER_DIE_502003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_502003", action = "action_EVENT_ANY_MONSTER_DIE_502003" }
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
		monsters = { 502001, 502004, 502005 },
		gadgets = { 502002, 502006, 502007, 502008, 502009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_502003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_502003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_502003(context, evt)
	-- 将configid为 502002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 502002, GadgetState.Default) then
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