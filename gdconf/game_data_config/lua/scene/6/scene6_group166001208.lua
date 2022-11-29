-- 基础信息
local base_info = {
	group_id = 166001208
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 208001, monster_id = 25060101, pos = { x = 1102.096, y = 713.757, z = 449.083 }, rot = { x = 0.000, y = 32.086, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 208004, monster_id = 25070101, pos = { x = 1102.363, y = 713.447, z = 439.685 }, rot = { x = 0.000, y = 81.074, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 208005, monster_id = 25010301, pos = { x = 1097.296, y = 714.139, z = 442.749 }, rot = { x = 0.000, y = 99.770, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9004, area_id = 300 },
	{ config_id = 208006, monster_id = 25010201, pos = { x = 1110.790, y = 713.836, z = 455.209 }, rot = { x = 0.000, y = 212.664, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 208002, gadget_id = 70211002, pos = { x = 1103.167, y = 713.771, z = 451.074 }, rot = { x = 0.000, y = 146.954, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1208003, name = "ANY_MONSTER_DIE_208003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_208003", action = "action_EVENT_ANY_MONSTER_DIE_208003" }
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
		monsters = { 208001, 208004, 208005, 208006 },
		gadgets = { 208002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_208003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_208003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_208003(context, evt)
	-- 将configid为 208002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 208002, GadgetState.Default) then
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