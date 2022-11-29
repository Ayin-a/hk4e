-- 基础信息
local base_info = {
	group_id = 133105131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 217, monster_id = 21010301, pos = { x = 1067.808, y = 208.415, z = -25.956 }, rot = { x = 359.847, y = 359.109, z = 350.248 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 228, monster_id = 21010201, pos = { x = 1066.218, y = 208.279, z = -24.503 }, rot = { x = 9.733, y = 93.720, z = 0.630 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 229, monster_id = 21010201, pos = { x = 1067.754, y = 208.014, z = -21.925 }, rot = { x = 1.220, y = 172.886, z = 9.677 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 230, monster_id = 21010201, pos = { x = 1069.573, y = 208.020, z = -22.797 }, rot = { x = 351.331, y = 242.509, z = 4.485 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 231, monster_id = 21010601, pos = { x = 1069.719, y = 208.227, z = -25.098 }, rot = { x = 353.557, y = 318.932, z = 352.662 }, level = 25, drop_tag = "丘丘人", pose_id = 9012, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 312, gadget_id = 70211012, pos = { x = 1072.208, y = 208.147, z = -29.555 }, rot = { x = 349.505, y = 304.415, z = 354.997 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 325, gadget_id = 70310006, pos = { x = 1067.851, y = 208.242, z = -24.112 }, rot = { x = 359.847, y = 359.109, z = 350.248 }, level = 25, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 327, gadget_id = 70220014, pos = { x = 1066.478, y = 208.697, z = -27.669 }, rot = { x = 359.847, y = 359.109, z = 359.054 }, level = 25, area_id = 9 },
	{ config_id = 328, gadget_id = 70220005, pos = { x = 1065.905, y = 208.566, z = -26.813 }, rot = { x = 7.183, y = 47.156, z = 0.563 }, level = 25, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000168, name = "ANY_MONSTER_DIE_168", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168", action = "action_EVENT_ANY_MONSTER_DIE_168" }
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
		-- description = suite_1,
		monsters = { 217, 228, 229, 230, 231 },
		gadgets = { 312, 325, 327, 328 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_168" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168(context, evt)
	-- 将configid为 312 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312, GadgetState.Default) then
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