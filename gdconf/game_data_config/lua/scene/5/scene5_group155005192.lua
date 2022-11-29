-- 基础信息
local base_info = {
	group_id = 155005192
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 192004, monster_id = 24010101, pos = { x = 271.226, y = 336.961, z = 278.997 }, rot = { x = 0.000, y = 48.060, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 192005, monster_id = 24010101, pos = { x = 284.179, y = 336.973, z = 284.112 }, rot = { x = 0.000, y = 269.411, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 192002, gadget_id = 70211012, pos = { x = 276.493, y = 336.844, z = 275.839 }, rot = { x = 0.000, y = 5.260, z = 0.000 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1192003, name = "ANY_MONSTER_DIE_192003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192003", action = "action_EVENT_ANY_MONSTER_DIE_192003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 192001, monster_id = 24010101, pos = { x = 265.522, y = 337.012, z = 282.740 }, rot = { x = 0.000, y = 40.068, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 }
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
		monsters = { 192004, 192005 },
		gadgets = { 192002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_192003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_192003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192003(context, evt)
	-- 将configid为 192002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192002, GadgetState.Default) then
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