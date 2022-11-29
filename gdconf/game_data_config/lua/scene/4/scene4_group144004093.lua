-- 基础信息
local base_info = {
	group_id = 144004093
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 93001, monster_id = 21010701, pos = { x = -389.337, y = 134.907, z = -609.401 }, rot = { x = 0.000, y = 55.692, z = 0.000 }, level = 21, drop_tag = "丘丘人", area_id = 100 },
	{ config_id = 93004, monster_id = 21010701, pos = { x = -391.695, y = 135.265, z = -607.495 }, rot = { x = 0.000, y = 55.692, z = 0.000 }, level = 21, drop_tag = "丘丘人", area_id = 100 },
	{ config_id = 93005, monster_id = 21020201, pos = { x = -403.547, y = 132.391, z = -617.673 }, rot = { x = 0.000, y = 81.816, z = 0.000 }, level = 23, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 100 },
	{ config_id = 93006, monster_id = 21010701, pos = { x = -400.334, y = 135.181, z = -602.982 }, rot = { x = 0.000, y = 328.848, z = 0.000 }, level = 21, drop_tag = "丘丘人", area_id = 100 },
	{ config_id = 93007, monster_id = 21010701, pos = { x = -404.109, y = 134.675, z = -603.394 }, rot = { x = 0.000, y = 328.848, z = 0.000 }, level = 21, drop_tag = "丘丘人", area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 93002, gadget_id = 70211002, pos = { x = -404.313, y = 134.883, z = -621.676 }, rot = { x = 1.221, y = 48.052, z = 354.819 }, level = 26, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 93008, gadget_id = 70220013, pos = { x = -406.692, y = 134.551, z = -606.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 93009, gadget_id = 70220013, pos = { x = -401.266, y = 131.931, z = -620.203 }, rot = { x = 342.663, y = 359.591, z = 2.684 }, level = 1, area_id = 100 },
	{ config_id = 93010, gadget_id = 70300086, pos = { x = -388.036, y = 134.440, z = -613.505 }, rot = { x = 352.799, y = 0.548, z = 7.876 }, level = 1, area_id = 100 },
	{ config_id = 93011, gadget_id = 70300086, pos = { x = -397.647, y = 135.997, z = -601.257 }, rot = { x = 353.699, y = 3.707, z = 350.769 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1093003, name = "ANY_MONSTER_DIE_93003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_93003", action = "action_EVENT_ANY_MONSTER_DIE_93003" }
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
		monsters = { 93001, 93004, 93005, 93006, 93007 },
		gadgets = { 93002, 93008, 93009, 93010, 93011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_93003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_93003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_93003(context, evt)
	-- 将configid为 93002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 93002, GadgetState.Default) then
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