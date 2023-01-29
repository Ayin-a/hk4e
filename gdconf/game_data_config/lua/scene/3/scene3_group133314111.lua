-- 基础信息
local base_info = {
	group_id = 133314111
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 24030101, pos = { x = -297.558, y = 104.978, z = 4512.388 }, rot = { x = 0.000, y = 256.487, z = 0.000 }, level = 32, drop_tag = "遗迹龙兽", disableWander = true, pose_id = 102, area_id = 32 },
	{ config_id = 111004, monster_id = 24030201, pos = { x = -305.003, y = 104.894, z = 4502.828 }, rot = { x = 0.000, y = 115.692, z = 0.000 }, level = 32, drop_tag = "遗迹龙兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 111002, gadget_id = 70211012, pos = { x = -296.762, y = 106.023, z = 4505.329 }, rot = { x = 348.954, y = 173.249, z = 0.257 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 111005, gadget_id = 70330410, pos = { x = -253.344, y = 127.615, z = 4506.180 }, rot = { x = 347.934, y = 45.733, z = 99.573 }, level = 32, area_id = 32 },
	{ config_id = 111006, gadget_id = 70330410, pos = { x = -263.242, y = 124.112, z = 4494.487 }, rot = { x = 69.103, y = 212.042, z = 270.971 }, level = 32, area_id = 32 },
	{ config_id = 111007, gadget_id = 70330410, pos = { x = -262.861, y = 135.707, z = 4498.417 }, rot = { x = 6.816, y = 38.739, z = 108.912 }, level = 32, area_id = 32 }
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
		monsters = { 111001, 111004 },
		gadgets = { 111002, 111005, 111006, 111007 },
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