-- 基础信息
local base_info = {
	group_id = 133210244
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 244001, monster_id = 25100101, pos = { x = -3665.781, y = 184.522, z = -582.720 }, rot = { x = 0.000, y = 121.371, z = 0.000 }, level = 32, drop_tag = "高阶武士", disableWander = true, pose_id = 1001, area_id = 17 },
	{ config_id = 244004, monster_id = 25100201, pos = { x = -3654.291, y = 184.388, z = -589.415 }, rot = { x = 0.000, y = 299.772, z = 0.000 }, level = 30, drop_tag = "高阶武士", disableWander = true, pose_id = 1001, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 244002, gadget_id = 70211012, pos = { x = -3657.864, y = 185.000, z = -582.445 }, rot = { x = 0.000, y = 213.766, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 244006, gadget_id = 70900014, pos = { x = -3657.940, y = 183.925, z = -582.527 }, rot = { x = 0.000, y = 34.851, z = 0.000 }, level = 30, arguments = { 1, 2, 3 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1244003, name = "ANY_MONSTER_DIE_244003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_244003", action = "action_EVENT_ANY_MONSTER_DIE_244003" }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 244001, 244004 }
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
		monsters = { 244001, 244004 },
		gadgets = { 244002, 244006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_244003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_244003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_244003(context, evt)
	-- 将configid为 244002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end