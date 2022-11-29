-- 基础信息
local base_info = {
	group_id = 166001484
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 484001, monster_id = 26090101, pos = { x = 175.420, y = 231.130, z = 388.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 484004, monster_id = 26090101, pos = { x = 173.755, y = 231.519, z = 390.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 484006, monster_id = 26090101, pos = { x = 185.466, y = 230.900, z = 387.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 484008, monster_id = 26010101, pos = { x = 182.324, y = 230.900, z = 392.191 }, rot = { x = 0.000, y = 175.868, z = 0.000 }, level = 36, drop_tag = "骗骗花", area_id = 300 },
	{ config_id = 484009, monster_id = 26090101, pos = { x = 188.713, y = 231.318, z = 392.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 484010, monster_id = 26090101, pos = { x = 175.743, y = 230.900, z = 395.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 484011, monster_id = 26090101, pos = { x = 186.650, y = 230.900, z = 390.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 484002, gadget_id = 70211012, pos = { x = 187.539, y = 231.167, z = 395.602 }, rot = { x = 9.186, y = 239.114, z = 355.806 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1484003, name = "ANY_MONSTER_DIE_484003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_484003", action = "action_EVENT_ANY_MONSTER_DIE_484003" },
	{ config_id = 1484007, name = "ANY_MONSTER_DIE_484007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_484007", action = "action_EVENT_ANY_MONSTER_DIE_484007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 484005, monster_id = 20010801, pos = { x = 184.331, y = 230.900, z = 394.036 }, rot = { x = 0.000, y = 215.335, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 300 }
	}
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
		monsters = { 484001, 484004, 484006 },
		gadgets = { 484002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_484007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 484008, 484009, 484010, 484011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_484003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_484003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_484003(context, evt)
	-- 将configid为 484002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 484002, GadgetState.Default) then
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
function condition_EVENT_ANY_MONSTER_DIE_484007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_484007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001484, 2)
	
	return 0
end