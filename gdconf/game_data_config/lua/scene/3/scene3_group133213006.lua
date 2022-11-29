-- 基础信息
local base_info = {
	group_id = 133213006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 25080201, pos = { x = -3194.420, y = 208.407, z = -3394.748 }, rot = { x = 0.000, y = 345.443, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 12 },
	{ config_id = 6004, monster_id = 25080201, pos = { x = -3191.952, y = 207.573, z = -3392.403 }, rot = { x = 0.000, y = 272.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1003, area_id = 12 },
	{ config_id = 6005, monster_id = 25010201, pos = { x = -3195.615, y = 207.642, z = -3385.304 }, rot = { x = 0.000, y = 345.415, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 12 },
	{ config_id = 6008, monster_id = 25010501, pos = { x = -3188.746, y = 207.128, z = -3395.253 }, rot = { x = 0.000, y = 346.275, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6002, gadget_id = 70211002, pos = { x = -3199.168, y = 209.212, z = -3393.374 }, rot = { x = 24.797, y = 65.953, z = 1.197 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 6006, gadget_id = 70310006, pos = { x = -3194.108, y = 208.093, z = -3392.463 }, rot = { x = 7.192, y = 290.233, z = 346.197 }, level = 27, area_id = 12 },
	{ config_id = 6007, gadget_id = 70300104, pos = { x = -3189.181, y = 207.388, z = -3397.336 }, rot = { x = 10.211, y = 28.909, z = 350.486 }, level = 27, area_id = 12 },
	{ config_id = 6009, gadget_id = 70220048, pos = { x = -3191.794, y = 208.062, z = -3398.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 6010, gadget_id = 70220048, pos = { x = -3194.001, y = 208.618, z = -3398.702 }, rot = { x = 0.000, y = 318.284, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 6011, gadget_id = 70220048, pos = { x = -3188.896, y = 206.671, z = -3391.344 }, rot = { x = 0.000, y = 58.989, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 6012, gadget_id = 70220051, pos = { x = -3193.280, y = 208.356, z = -3397.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 6013, gadget_id = 70220051, pos = { x = -3188.876, y = 206.894, z = -3392.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 6014, gadget_id = 70210101, pos = { x = -3191.100, y = 207.895, z = -3396.865 }, rot = { x = 4.460, y = 0.639, z = 346.798 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006003, name = "ANY_MONSTER_DIE_6003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6003", action = "action_EVENT_ANY_MONSTER_DIE_6003" }
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
		monsters = { 6001, 6004, 6005, 6008 },
		gadgets = { 6002, 6006, 6007, 6009, 6010, 6011, 6012, 6013, 6014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6003(context, evt)
	-- 将configid为 6002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6002, GadgetState.Default) then
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