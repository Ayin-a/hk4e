-- 基础信息
local base_info = {
	group_id = 133104477
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 477001, monster_id = 21010201, pos = { x = 1.896, y = 298.545, z = 905.060 }, rot = { x = 348.437, y = 133.401, z = 4.900 }, level = 32, drop_tag = "丘丘人", disableWander = true, area_id = 8 },
	{ config_id = 477004, monster_id = 21010201, pos = { x = 5.086, y = 298.044, z = 908.924 }, rot = { x = 348.437, y = 86.421, z = 4.900 }, level = 32, drop_tag = "丘丘人", disableWander = true, area_id = 8 },
	{ config_id = 477005, monster_id = 21030401, pos = { x = 0.289, y = 296.665, z = 910.991 }, rot = { x = 339.766, y = 139.900, z = 5.409 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 477002, gadget_id = 70211012, pos = { x = 1.260, y = 297.721, z = 908.397 }, rot = { x = 18.911, y = 1.519, z = 9.104 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1477003, name = "ANY_MONSTER_DIE_477003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_477003", action = "action_EVENT_ANY_MONSTER_DIE_477003" }
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
		monsters = { 477001 },
		gadgets = { 477002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_477003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_477003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_477003(context, evt)
	-- 将configid为 477002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 477002, GadgetState.Default) then
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