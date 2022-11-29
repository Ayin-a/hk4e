-- 基础信息
local base_info = {
	group_id = 133210516
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 516001, monster_id = 25100201, pos = { x = -3671.174, y = 123.689, z = -759.993 }, rot = { x = 0.000, y = 48.864, z = 0.000 }, level = 32, drop_tag = "高阶武士", disableWander = true, pose_id = 1001, area_id = 17 },
	{ config_id = 516005, monster_id = 25100101, pos = { x = -3647.899, y = 121.286, z = -740.666 }, rot = { x = 0.000, y = 230.085, z = 0.000 }, level = 30, drop_tag = "高阶武士", disableWander = true, pose_id = 1001, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 516002, gadget_id = 70211012, pos = { x = -3655.083, y = 121.588, z = -755.150 }, rot = { x = 12.014, y = 342.750, z = 0.761 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1516003, name = "ANY_MONSTER_DIE_516003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_516003", action = "action_EVENT_ANY_MONSTER_DIE_516003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 516004, monster_id = 25100201, pos = { x = -3666.206, y = 121.574, z = -730.574 }, rot = { x = 0.000, y = 154.182, z = 0.000 }, level = 30, drop_tag = "高阶武士", disableWander = true, pose_id = 1001, area_id = 17 }
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
		monsters = { 516001, 516005 },
		gadgets = { 516002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_516003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_516003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_516003(context, evt)
	-- 将configid为 516002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 516002, GadgetState.Default) then
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