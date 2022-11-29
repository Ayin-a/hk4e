-- 基础信息
local base_info = {
	group_id = 133104363
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363001, monster_id = 21020301, pos = { x = 632.775, y = 215.907, z = 688.499 }, rot = { x = 0.000, y = 216.882, z = 0.000 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 },
	{ config_id = 363005, monster_id = 21010401, pos = { x = 636.123, y = 215.032, z = 678.122 }, rot = { x = 11.554, y = 175.796, z = 348.749 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 363006, monster_id = 21010401, pos = { x = 628.840, y = 213.305, z = 677.872 }, rot = { x = 5.769, y = 265.529, z = 16.089 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 363002, gadget_id = 70211012, pos = { x = 632.091, y = 214.972, z = 682.856 }, rot = { x = 346.954, y = 358.418, z = 5.575 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1363003, name = "ANY_MONSTER_DIE_363003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_363003", action = "action_EVENT_ANY_MONSTER_DIE_363003" }
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
		monsters = { 363001, 363005, 363006 },
		gadgets = { 363002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_363003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_363003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_363003(context, evt)
	-- 将configid为 363002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 363002, GadgetState.Default) then
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