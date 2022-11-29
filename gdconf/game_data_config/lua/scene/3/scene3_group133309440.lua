-- 基础信息
local base_info = {
	group_id = 133309440
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 440001, monster_id = 24040201, pos = { x = -2303.855, y = 162.281, z = 5234.990 }, rot = { x = 0.000, y = 291.663, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1001, area_id = 27 },
	{ config_id = 440004, monster_id = 24040201, pos = { x = -2320.464, y = 159.785, z = 5237.340 }, rot = { x = 0.000, y = 275.343, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 440002, gadget_id = 70211151, pos = { x = -2307.724, y = 161.239, z = 5233.314 }, rot = { x = 1.949, y = 180.680, z = 346.837 }, level = 26, chest_drop_id = 21910092, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 440005, gadget_id = 70330432, pos = { x = -2307.221, y = 161.413, z = 5241.025 }, rot = { x = 10.841, y = 160.547, z = 350.758 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1440003, name = "ANY_MONSTER_DIE_440003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_440003", action = "action_EVENT_ANY_MONSTER_DIE_440003" }
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
		monsters = { 440001, 440004 },
		gadgets = { 440002, 440005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_440003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_440003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_440003(context, evt)
	-- 将configid为 440002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 440002, GadgetState.Default) then
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