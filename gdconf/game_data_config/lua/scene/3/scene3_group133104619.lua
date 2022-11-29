-- 基础信息
local base_info = {
	group_id = 133104619
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 619004, monster_id = 25010201, pos = { x = 274.431, y = 220.505, z = 224.860 }, rot = { x = 0.000, y = 323.790, z = 0.000 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 9 },
	{ config_id = 619006, monster_id = 25010301, pos = { x = 278.592, y = 219.957, z = 212.997 }, rot = { x = 0.000, y = 52.180, z = 0.000 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 619002, gadget_id = 70211012, pos = { x = 279.966, y = 219.967, z = 219.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1619003, name = "ANY_MONSTER_DIE_619003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_619003", action = "action_EVENT_ANY_MONSTER_DIE_619003" }
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
		monsters = { 619004, 619006 },
		gadgets = { 619002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_619003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_619003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_619003(context, evt)
	-- 将configid为 619002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 619002, GadgetState.Default) then
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