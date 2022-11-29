-- 基础信息
local base_info = {
	group_id = 111101109
}

-- Trigger变量
local defs = {
	gadget_1 = 109001,
	gadget_2 = 109002,
	gadget_3 = 109003,
	RewardID = 109004,
	groupID = 111101109
}

-- DEFS_MISCS
gadgetInfo = {{index = 1,name = "gadget_1"},{index = 2,name = "gadget_2"},{index = 3,name = "gadget_3"}}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 109001, gadget_id = 70950056, pos = { x = 2646.689, y = 232.993, z = -1349.818 }, rot = { x = 0.000, y = 172.976, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, persistent = true },
	{ config_id = 109002, gadget_id = 70950056, pos = { x = 2646.696, y = 234.516, z = -1349.829 }, rot = { x = 0.000, y = 172.976, z = 0.000 }, level = 1, state = GadgetState.ChestTrap, persistent = true },
	{ config_id = 109003, gadget_id = 70950056, pos = { x = 2646.691, y = 236.039, z = -1349.821 }, rot = { x = 0.000, y = 172.976, z = 0.000 }, level = 1, state = GadgetState.ChestBramble, persistent = true },
	{ config_id = 109004, gadget_id = 70210004, pos = { x = 2644.673, y = 231.216, z = -1350.058 }, rot = { x = 0.000, y = 261.419, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 109006, gadget_id = 70220026, pos = { x = 2647.122, y = 231.904, z = -1353.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 109007, gadget_id = 70220026, pos = { x = 2647.209, y = 231.789, z = -1355.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 109008, gadget_id = 70220026, pos = { x = 2647.339, y = 231.639, z = -1357.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 109009, gadget_id = 70220026, pos = { x = 2647.478, y = 231.297, z = -1361.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 109010, gadget_id = 70220026, pos = { x = 2643.706, y = 230.915, z = -1361.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1109005, name = "GADGET_STATE_CHANGE_109005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_109005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "default", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { },
		gadgets = { 109001, 109002, 109003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_109005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 109001, 109002, 109003, 109004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109005(context, evt)
		
		if evt.param1 ~= 101 and evt.param1 ~= 102 and evt.param1 ~= 103 and evt.param1 ~= 104 then
			ScriptLib.PrintLog("Block Event ".." : Gadget state = ".. evt.param1)
			return 0
		end
	
		ScriptLib.PrintLog("Beging Execute ".." : Gadget state = ".. evt.param1)
		
		local state = {0, 0, 0}
		local allEquale = 1
	
		for k,v in pairs(gadgetInfo) do
	
			state[v.index] = ScriptLib.GetGadgetStateByConfigId(context, defs.groupID, defs[v.name])
		end
		ScriptLib.PrintLog("Gadget State = "..state[1].."_"..state[2].."_"..state[3])
	
		local haschange = {0,0,0}
	
		for i = 1, #state, 1 do 
			if i == #state then
				if state[i] == state[i-1] or state[i] == state[i-1] - 200 then 
					haschange[i] = 1
				end
			else
				if state[i] == state[i+1] or state[i] == state[i+1] - 200 then
					haschange[i] = 1
				elseif i ~= 1 and (state[i] == state[i-1] or state[i] == state[i-1] - 200) then
					haschange[i] = 1
				end
			end
		end
		ScriptLib.PrintLog("has change = "..haschange[1].."_"..haschange[2].."_"..haschange[3])
		for i = 1, #haschange, 1 do 
			local n = state[i]
			if haschange[i] == 1 then
				
				if n < 300 then 
					n = state[i] + 200
				end
			else
				if state[i] > 300 then
					n = state[i] - 200
				end
				allEquale = 0
			end
			ScriptLib.SetGadgetStateByConfigId(context, defs[gadgetInfo[i].name], n)
		end
	
		ScriptLib.PrintLog("Check Linked cube and change state ")
		
		if allEquale == 1 then
			ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
			for k,v in pairs(gadgetInfo) do
				ScriptLib.SetGadgetStateByConfigId(context, defs[v.name], 901)
			end
			ScriptLib.GoToGroupSuite(context, defs.groupID, 2)
		end
		ScriptLib.PrintLog("All equale = "..allEquale)
end