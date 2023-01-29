-- 基础信息
local base_info = {
	group_id = 133313246
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 246001, monster_id = 24030101, pos = { x = -411.960, y = 119.573, z = 5603.705 }, rot = { x = 0.000, y = 333.340, z = 0.000 }, level = 32, drop_tag = "遗迹龙兽", disableWander = true, pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 246002, gadget_id = 70211002, pos = { x = -410.029, y = 120.741, z = 5600.804 }, rot = { x = 350.950, y = 332.155, z = 353.865 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 246004, gadget_id = 70310007, pos = { x = -412.086, y = 118.957, z = 5602.521 }, rot = { x = 333.612, y = 8.654, z = 1.751 }, level = 32, area_id = 32 },
	{ config_id = 246005, gadget_id = 70330432, pos = { x = -409.623, y = 119.338, z = 5603.466 }, rot = { x = 324.284, y = 18.350, z = 314.750 }, level = 32, area_id = 32 },
	{ config_id = 246006, gadget_id = 70210101, pos = { x = -409.916, y = 119.903, z = 5603.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 },
	{ config_id = 246007, gadget_id = 70210101, pos = { x = -412.040, y = 120.489, z = 5601.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1246003, name = "ANY_MONSTER_DIE_246003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_246003", action = "action_EVENT_ANY_MONSTER_DIE_246003" }
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
		monsters = { 246001 },
		gadgets = { 246002, 246004, 246005, 246006, 246007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_246003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_246003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_246003(context, evt)
	-- 将configid为 246002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.Default) then
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