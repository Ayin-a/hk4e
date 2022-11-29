-- 基础信息
local base_info = {
	group_id = 133103361
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361001, monster_id = 21010301, pos = { x = -134.422, y = 319.736, z = 1800.832 }, rot = { x = 0.000, y = 31.654, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 361004, monster_id = 21011201, pos = { x = -136.635, y = 319.883, z = 1805.496 }, rot = { x = 0.000, y = 88.317, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 6 },
	{ config_id = 361005, monster_id = 21010301, pos = { x = -130.932, y = 319.277, z = 1806.305 }, rot = { x = 0.000, y = 263.617, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 361006, monster_id = 21010301, pos = { x = -131.486, y = 319.440, z = 1802.163 }, rot = { x = 0.000, y = 330.266, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 361007, monster_id = 21010301, pos = { x = -132.710, y = 319.204, z = 1808.758 }, rot = { x = 0.000, y = 198.876, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 361009, monster_id = 21020301, pos = { x = -125.019, y = 318.224, z = 1812.312 }, rot = { x = 0.000, y = 216.363, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 361010, monster_id = 21020101, pos = { x = -127.010, y = 318.694, z = 1797.166 }, rot = { x = 0.000, y = 335.940, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 361002, gadget_id = 70211002, pos = { x = -138.426, y = 320.239, z = 1805.925 }, rot = { x = 12.366, y = 84.402, z = 359.676 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1361003, name = "ANY_MONSTER_DIE_361003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_361003", action = "action_EVENT_ANY_MONSTER_DIE_361003" },
	{ config_id = 1361008, name = "ANY_MONSTER_DIE_361008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_361008", action = "action_EVENT_ANY_MONSTER_DIE_361008" }
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
		monsters = { 361001, 361004, 361005, 361006, 361007 },
		gadgets = { 361002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_361008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 361009, 361010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_361003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_361003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_361003(context, evt)
	-- 将configid为 361002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 361002, GadgetState.Default) then
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
function condition_EVENT_ANY_MONSTER_DIE_361008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_361008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103361, 2)
	
	return 0
end