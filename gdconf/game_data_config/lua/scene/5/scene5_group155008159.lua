-- 基础信息
local base_info = {
	group_id = 155008159
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 159001, monster_id = 22010301, pos = { x = -295.679, y = 256.917, z = 311.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, area_id = 200 },
	{ config_id = 159005, monster_id = 22010201, pos = { x = -295.834, y = 256.986, z = 313.429 }, rot = { x = 0.000, y = 174.559, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 159002, gadget_id = 70211012, pos = { x = -295.144, y = 258.757, z = 308.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 159004, gadget_id = 70310004, pos = { x = -294.513, y = 256.920, z = 312.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1159003, name = "ANY_MONSTER_DIE_159003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_159003", action = "action_EVENT_ANY_MONSTER_DIE_159003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 159006, monster_id = 21010201, pos = { x = -289.277, y = 256.038, z = 311.712 }, rot = { x = 0.000, y = 156.374, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 200 }
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
		monsters = { 159001, 159005 },
		gadgets = { 159002, 159004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_159003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_159003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_159003(context, evt)
	-- 将configid为 159002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 159002, GadgetState.Default) then
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