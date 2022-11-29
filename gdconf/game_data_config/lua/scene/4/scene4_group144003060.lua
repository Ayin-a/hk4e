-- 基础信息
local base_info = {
	group_id = 144003060
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 21010201, pos = { x = -342.598, y = 202.444, z = 112.156 }, rot = { x = 0.000, y = 289.960, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 103 },
	{ config_id = 60004, monster_id = 22010301, pos = { x = -349.307, y = 202.425, z = 113.536 }, rot = { x = 0.000, y = 95.528, z = 0.000 }, level = 21, drop_tag = "深渊法师", pose_id = 9013, area_id = 103 },
	{ config_id = 60005, monster_id = 21010401, pos = { x = -332.907, y = 203.878, z = 101.244 }, rot = { x = 0.000, y = 53.139, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 103 },
	{ config_id = 60006, monster_id = 21010601, pos = { x = -344.095, y = 202.444, z = 110.520 }, rot = { x = 0.000, y = 303.960, z = 0.000 }, level = 25, drop_tag = "丘丘人", pose_id = 9013, area_id = 103 },
	{ config_id = 60007, monster_id = 21010901, pos = { x = -342.197, y = 209.018, z = 119.588 }, rot = { x = 0.000, y = 207.076, z = 0.000 }, level = 23, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60002, gadget_id = 70211002, pos = { x = -336.020, y = 206.029, z = 117.737 }, rot = { x = 0.000, y = 55.515, z = 0.000 }, level = 16, chest_drop_id = 1002000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 60008, gadget_id = 70310001, pos = { x = -349.013, y = 202.474, z = 116.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 60009, gadget_id = 70310001, pos = { x = -349.117, y = 202.437, z = 110.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 60010, gadget_id = 70290061, pos = { x = -348.308, y = 200.000, z = 129.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 60011, gadget_id = 70290061, pos = { x = -357.981, y = 200.000, z = 122.004 }, rot = { x = 0.000, y = 292.120, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 60012, gadget_id = 70950092, pos = { x = -333.084, y = 200.000, z = 101.232 }, rot = { x = 0.000, y = 28.618, z = 0.000 }, level = 1, area_id = 103 }
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
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end