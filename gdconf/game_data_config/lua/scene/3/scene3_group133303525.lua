-- 基础信息
local base_info = {
	group_id = 133303525
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 525001, monster_id = 28060602, pos = { x = -1522.486, y = 185.213, z = 3313.212 }, rot = { x = 0.000, y = 108.374, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 23 },
	{ config_id = 525004, monster_id = 28060603, pos = { x = -1520.669, y = 182.198, z = 3321.780 }, rot = { x = 0.000, y = 108.374, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 23 },
	{ config_id = 525005, monster_id = 21010101, pos = { x = -1516.263, y = 181.708, z = 3320.883 }, rot = { x = 0.000, y = 288.351, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 23 },
	{ config_id = 525006, monster_id = 22010201, pos = { x = -1517.669, y = 184.362, z = 3314.256 }, rot = { x = 0.000, y = 288.351, z = 0.000 }, level = 30, drop_tag = "深渊法师", disableWander = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 525002, gadget_id = 70211002, pos = { x = -1511.109, y = 181.731, z = 3321.212 }, rot = { x = 354.247, y = 15.445, z = 358.868 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1525003, name = "ANY_MONSTER_DIE_525003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_525003", action = "action_EVENT_ANY_MONSTER_DIE_525003" }
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
		monsters = { 525001, 525004, 525005, 525006 },
		gadgets = { 525002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_525003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_525003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_525003(context, evt)
	-- 将configid为 525002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 525002, GadgetState.Default) then
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