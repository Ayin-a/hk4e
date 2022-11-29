-- 基础信息
local base_info = {
	group_id = 133308277
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 277001, monster_id = 24040201, pos = { x = -1905.894, y = 123.868, z = 5320.944 }, rot = { x = 0.000, y = 157.100, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5246 }, pose_id = 1004, area_id = 27 },
	{ config_id = 277004, monster_id = 24040201, pos = { x = -1903.065, y = 123.827, z = 5323.165 }, rot = { x = 0.000, y = 221.147, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5246 }, pose_id = 1004, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 277002, gadget_id = 70211012, pos = { x = -1905.667, y = 124.786, z = 5324.633 }, rot = { x = 16.626, y = 179.360, z = 8.336 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1277003, name = "ANY_MONSTER_DIE_277003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_277003", action = "action_EVENT_ANY_MONSTER_DIE_277003" }
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
		monsters = { 277001, 277004 },
		gadgets = { 277002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_277003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_277003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_277003(context, evt)
	-- 将configid为 277002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277002, GadgetState.Default) then
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