-- 基础信息
local base_info = {
	group_id = 133107066
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66001, monster_id = 21010501, pos = { x = -419.379, y = 285.647, z = 654.748 }, rot = { x = 0.000, y = 240.387, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 66004, monster_id = 21010501, pos = { x = -428.166, y = 288.630, z = 653.192 }, rot = { x = 0.000, y = 180.012, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 66005, monster_id = 21010501, pos = { x = -430.486, y = 285.656, z = 649.954 }, rot = { x = 0.000, y = 154.615, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 66006, monster_id = 21010501, pos = { x = -428.444, y = 285.693, z = 642.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66002, gadget_id = 70211012, pos = { x = -425.944, y = 285.656, z = 650.596 }, rot = { x = 0.000, y = 218.105, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 66007, gadget_id = 70220014, pos = { x = -427.880, y = 285.656, z = 650.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 66010, gadget_id = 70220014, pos = { x = -426.836, y = 288.630, z = 659.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 66011, gadget_id = 70310004, pos = { x = -427.314, y = 285.656, z = 649.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 66015, gadget_id = 70310001, pos = { x = -431.619, y = 285.656, z = 650.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066003, name = "ANY_MONSTER_DIE_66003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66003", action = "action_EVENT_ANY_MONSTER_DIE_66003" }
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
		monsters = { 66001, 66004, 66005, 66006 },
		gadgets = { 66002, 66007, 66010, 66011, 66015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_66003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66003(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.Default) then
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