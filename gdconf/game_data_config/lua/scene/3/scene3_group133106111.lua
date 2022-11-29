-- 基础信息
local base_info = {
	group_id = 133106111
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 21020301, pos = { x = -824.310, y = 172.079, z = 1066.280 }, rot = { x = 0.000, y = 222.484, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, area_id = 8 },
	{ config_id = 111005, monster_id = 21010201, pos = { x = -830.224, y = 171.440, z = 1074.057 }, rot = { x = 0.000, y = 355.036, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 111006, monster_id = 21010601, pos = { x = -832.598, y = 172.025, z = 1071.058 }, rot = { x = 0.000, y = 178.703, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 111002, gadget_id = 70211012, pos = { x = -822.851, y = 172.189, z = 1069.658 }, rot = { x = 357.996, y = 214.583, z = 16.612 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111003, name = "ANY_MONSTER_DIE_111003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_111003", action = "action_EVENT_ANY_MONSTER_DIE_111003" }
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
		monsters = { 111001, 111005, 111006 },
		gadgets = { 111002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_111003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_111003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_111003(context, evt)
	-- 将configid为 111002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111002, GadgetState.Default) then
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