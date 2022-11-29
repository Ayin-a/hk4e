--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||	filename:	DrawOneLine_Dreamland
||	owner: 		weiwei.sun
||	description: 	一笔画 辛焱岛版本。 
||	LogName:	## [DrawOneLine]
||	Protection:	
=======================================]]
--[[
local defs = 
{
	--玩法完成时 这个gadget如果为GearStop则会被设为Default
	finish_gadget = ,
	--起点格configid
	starter = ,
	--终点格configid
	ender = ,
	--矩阵 用于踩格子时判断是否相邻
	matrix = 
	{
		{0,0,0,0,0},

		{0,0,0,0,0},

		{0,0,0,0,0},
	},
	--每个还原格控制哪些离散格
	reveal_tiles=
	{
		[还原格] = {被还原的格子1, 被还原的格子2},
	},
	--离散格拼入哪个位置，拼入位置需要布设普通格，初始状态为903
	reveal_match=
	{
		[离散格1] = 初始状态为903普通格configID1,
	},
	--移动格的目标位置和使用的点阵
	movable_pos = 
	{--[移动格子configID] = new_pos: 两位数字的矩阵坐标，x是十位，y是个位
       		 [10011] = { new_pos = 12}, 
	},
	lines=
	{
		[移动格] = 线,
	},
	
} 
]]
local cfg = {
	--玩法中，最多存在多少石板
	--tile_limit = 25,
	--矩阵在哪个suite中
	matrix_suite = 2,
}


local extraTriggers={
	
    { config_id = 8000001, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
    { config_id = 8000002,name = "Leave_Region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_Leave_Region", trigger_count = 0 },
    { config_id = 8000003, name = "Reach_Point", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_Reach_Point", trigger_count = 0 },
    { config_id = 8000004, name = "Group_Refresh", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_Group_Refresh", trigger_count = 0 },
    { config_id = 8000005, name = "Enter_Guide_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Guide_Region", trigger_count = 0 }
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables, { config_id = 50000001, name = "is_finish", value = 0 , no_refresh = true})
end

function SLC_DrawOneLine_Start(context)

	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	--SLC来源没有配置为起点 return
	if config_id ~= defs.starter then
		return 0	
	end
	local state = ScriptLib.GetGroupTempValue(context, "puzzle_state", {})
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] Get SLC_DrawOneLine_Start. state@"..state)

	if 0 == state then 
		ScriptLib.SetGadgetStateByConfigId(context, config_id, 201)
		LF_SetCurTileIndex(context, config_id)
		LF_InitMatrix(context)	
	elseif 1 == state then 
		ScriptLib.SetGadgetStateByConfigId(context, config_id, 201)
		LF_SetCurTileIndex(context, config_id)
		LF_RestartMatrix(context)
	else
		ScriptLib.PrintContextLog(context, "## [DrawOneLine] #WARN# Get SLC_DrawOneLine_Start at unexpected state!")
	end
	 --埋点
    ScriptLib.MarkGroupLuaAction(context, "NoteSlateStart", "", {["group_id"] = base_info.group_id, ["gadget_id"] = config_id})
	return 0
end
--5.26迭代 未失败时触发起点格重置
function SLC_DrawOneLine_Reset(context)
	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	--SLC来源没有配置为起点 return
	if config_id ~= defs.starter then
		return 0	
	end
	local state = ScriptLib.GetGroupTempValue(context, "puzzle_state", {})
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] Get SLC_DrawOneLine_Reset. state@"..state)
	if 1 ~= state then 
		return 0
	end
	--如果已经离开了起点 则重置
	local cur_tile = ScriptLib.GetGroupTempValue(context, "cur_tile", {})
	local x = math.floor(cur_tile/10)
	local y = cur_tile%10	
	if defs.matrix[x][y] ~= config_id then
		LF_SetCurTileIndex(context, config_id)
		LF_RestartMatrix(context)
	end
	return 0
end

function action_Group_Load(context, evt)
	--测试用
	--LF_CheckGadgetCount(context)
	if 1 == ScriptLib.GetGroupVariableValue(context, "is_finish") then
		return 0
	end

	--初始化tempVar：当前踩在哪个块
	ScriptLib.SetGroupTempValue(context, "cur_tile", 0, {})
	--初始化tempVar：矩阵是否加载 0-未加 1-加了 2-完成
	ScriptLib.SetGroupTempValue(context, "puzzle_state", 0, {})

	LF_SetStarterTile(context, 0)

	return 0 
end

function action_Group_Refresh(context, evt)
	if 1 ~= evt.param1 then
		return
	end
	--初始化tempVar：当前踩在哪个块
	ScriptLib.SetGroupTempValue(context, "cur_tile", 0, {})
	--初始化tempVar：矩阵是否加载 0-未加 1-加了 2-完成
	ScriptLib.SetGroupTempValue(context, "puzzle_state", 0, {})

	LF_SetStarterTile(context, 0)

	return 0
end

--移动格到达路点
function action_Reach_Point(context, evt)
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] Moving tile reach point. config_id@"..evt.param2)
	return 0
end

function action_Leave_Region(context, evt)
	if evt.param1 == defs.guide_region then
		return 0
	end
	if 1 == ScriptLib.GetGroupTempValue(context, "puzzle_state", {}) then 
		LF_FailProgress(context, 2)
	end
	return 0
end

function action_Enter_Guide_Region(context, evt)
	if evt.param1 ~= defs.guide_region then 
		return 0
	end
	LF_TryShowGuide(context)
	return 0
end

function SLC_DrawOneLine_Fail(context)
	
	if 1 == ScriptLib.GetGroupTempValue(context, "puzzle_state", {}) then 
		local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
		ScriptLib.PrintContextLog(context, "## [DrawOneLine] SLC_DrawOneLine_Fail. config_id@"..config_id)
		--检查是否是当前格
		local cur_tile = ScriptLib.GetGroupTempValue(context, "cur_tile", {})
		local is_adjust = LF_CheckTwoGadgetIsAdjacent(context, cur_tile, config_id)
		if 2 ~= is_adjust then
			if config_id == defs.starter then
				--如果是起点格 重开
				LF_SetStarterTile(context, 1)
			else
				LF_FailProgress(context, 0)
			end		
		end		

	end
	return 0
end
--非起点终点的格子被踩亮
--param1：格子类型 0-普通和离散 1-移动 2-还原
function SLC_DrawOneLine_LightOn(context, param1)

	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })

	--如果当前格，无事发生
	local cur_tile = ScriptLib.GetGroupTempValue(context, "cur_tile", {})
	local is_adjust = LF_CheckTwoGadgetIsAdjacent(context, cur_tile, config_id)
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] SLC_DrawOneLine_LightOn. config_id@"..config_id.." cur_tile@"..cur_tile.. " is_adjust@"..is_adjust)
	if 2 == is_adjust then
		return 0
	end			

	--是否是起点格
	if config_id == defs.starter then
		ScriptLib.SetGadgetStateByConfigId(context, config_id, 201)
		LF_SetCurTileIndex(context, config_id)
		LF_InitMatrix(context)		
	else	
		if 1 == ScriptLib.GetGroupTempValue(context, "is_fail", {}) then 
			return 0
		end
		--检测是否相邻
		if 0 == is_adjust then
			LF_FailProgress(context, 1)
			return 0
		end
		--点亮格子
		ScriptLib.SetGadgetStateByConfigId(context, config_id, 201)
		LF_SetCurTileIndex(context, config_id)
	end

	--处理功能性格
	if 1 == param1 then
		LF_HandleMoveTile(context, config_id)
	elseif 2 == param1 then
		LF_HandleRevealTile(context, config_id)
	end

	return 0
end
--终点格踩亮
function SLC_DrawOneLine_CheckSuccess(context)
	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] SLC_DrawOneLine_CheckSuccess. config_id@"..config_id)
	--是否相邻
	local cur_tile = ScriptLib.GetGroupTempValue(context, "cur_tile", {})
	local is_adjust = LF_CheckTwoGadgetIsAdjacent(context, cur_tile, config_id)
	if 0 == is_adjust then
		LF_FailProgress(context, 1)
		return 0
	end
	ScriptLib.SetGadgetStateByConfigId(context, config_id, 201)
	--是否已成功
	local ret = LF_CheckSuccess(context)
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] SLC_DrawOneLine_CheckSuccess called. ret@"..ret)
	if 1 == ret then
		LF_SuccessProgress(context)		
	else
		LF_FailProgress(context, 1)
	end
	return 0
end

function LF_HandleMoveTile(context, config_id)
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_HandleMoveTile called. config_id@".. config_id)
	--移除线
	if nil ~= defs.lines then 
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs.lines[config_id])
	end	
	--route
	local ret = ScriptLib.StartPlatform(context, config_id)
	if -1 == ret then
		ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_HandleMoveTile. StartPlatform failed!")
		return 0
	end
	--设置新cur_tile
	ScriptLib.SetGroupTempValue(context, "cur_tile", defs.movable_pos[config_id].new_pos, {})
	local cur_tile = ScriptLib.GetGroupTempValue(context, "cur_tile", {})
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_HandleMoveTile done. cur_tile@".. cur_tile)
	return 0
end

function LF_HandleRevealTile(context, config_id)
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_HandleRevealTile called. config_id@".. config_id)
	--找到对应的所有离散格子，以其configID查找对应的隐藏格
	for k, v in ipairs(defs.reveal_tiles[config_id]) do
		LF_CreateTileByMatchCfg(context, v)
	end
	return 0
end
--处理还原格 正向操作
function LF_CreateTileByMatchCfg(context, config_id)
	--先切换隐藏格
	ScriptLib.SetGadgetStateByConfigId(context, defs.reveal_match[config_id], 0)
	--再移除离散格
	ScriptLib.KillEntityByConfigId(context, { config_id = config_id })
	
	return 0
end
--处理还原格 逆向操作
function LF_RemoveTileByMatchCfg(context, config_id)
	--先切换隐藏格
	ScriptLib.SetGadgetStateByConfigId(context, defs.reveal_match[config_id], 903)
	--再添加离散格
	ScriptLib.CreateGadget(context, { config_id = config_id })
	
	return 0
end

--失败流程 所有格子置为202 起点格为0 踩起点格后重新开始
--reason: 0-踩了已经被踩亮的格子 1-踩了不相邻的格子 2-出圈
function LF_FailProgress(context, reason)
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_FailProgress called. reason@"..reason)
	--出圈，直接清掉矩阵重来
	if 2 == reason then
		LF_SetStarterTile(context, 1)
	else
	--其他情况切到错误态
		ScriptLib.SetGroupTempValue(context, "is_fail", 1, {})
		--矩阵内
		for k, v in pairs(defs.matrix) do
			for ik, iv in pairs(v) do
				--起点格切default
				if defs.starter == iv then
					ScriptLib.SetGadgetStateByConfigId(context, iv, 0)
				--其他格子如果未处于隐藏态，切GearStop
				elseif 0 ~= iv then
					if 903 ~= ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, iv) then
						ScriptLib.SetGadgetStateByConfigId(context, iv, 202)	
					end
				end
			end
		end
		--矩阵外
		for k, v in pairs(defs.reveal_tiles) do
			for ik,iv in pairs(v) do
				ScriptLib.SetGadgetStateByConfigId(context, iv, 202)
			end
		end
	end
	 --埋点
    ScriptLib.MarkGroupLuaAction(context, "NoteSlateEnd", "", {["group_id"] = base_info.group_id, ["result"] = 2})
	return 0
end

function LF_KillAllGadget(context)
	--用Kill 以播放onKill效果
	for k,v in pairs(suites[cfg.matrix_suite].gadgets) do
		ScriptLib.KillEntityByConfigId(context, { config_id = v })
	end

	return 0
end

function LF_SuccessProgress(context)
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_SuccessProgress called.")
	--2022.3.3迭代：玩法完成，所有板子消失
	local finish_gadget_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, defs.finish_gadget)
	if 202 == finish_gadget_state then
		ScriptLib.SetGadgetStateByConfigId(context, defs.finish_gadget, 0)
	end
	LF_KillAllGadget(context)
	--标记完成
	ScriptLib.SetGroupVariableValue(context, "is_finish", 1)
	 --埋点
    ScriptLib.MarkGroupLuaAction(context, "NoteSlateEnd", "", {["group_id"] = base_info.group_id, ["result"] = 1})
	return 0
end

--矩阵内所有板子都是201状态，则玩法成功, return 1
function LF_CheckSuccess(context)

	for k, v in pairs(defs.matrix) do
		for ik, iv in pairs(v) do  
			if 0 ~= iv and 201 ~= ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, iv) and 0 ~= iv then 
				ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_CheckSuccess ret 0. Found blank tile@"..iv)
				return 0
			end
		end
	end
	ScriptLib.SetGroupTempValue(context, "puzzle_state", 2 , {})
	return 1
end

--加载起点格
--type： 0-常规加载 1-处理重置，然后加载
function LF_SetStarterTile(context, type)

	if type == 0 then 
		ScriptLib.CreateGadget(context, { config_id = defs.starter })
	else
		LF_KillAllGadget(context)

		if 1 == ScriptLib.GetGroupTempValue(context, "puzzle_state", {}) then
			ScriptLib.SetGroupTempValue(context, "puzzle_state", 0, {})
		end
		
		ScriptLib.CreateGadget(context, { config_id = defs.starter })
	end

	return 0
end

--一笔画矩阵 加载
function LF_InitMatrix(context)
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_InitMatrix.")
	ScriptLib.AddExtraGroupSuite(context, base_info.group_id, cfg.matrix_suite)
	ScriptLib.SetGroupTempValue(context, "puzzle_state", 1, {})
	ScriptLib.SetGroupTempValue(context, "is_fail", 0, {})
	return 0
end
--一笔画矩阵 不销毁重开
function LF_RestartMatrix(context)
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_RestartMatrix called.")
	ScriptLib.SetGroupTempValue(context, "is_fail", 0, {})
	--遍历矩阵每个格子
	for k, v in pairs(defs.matrix) do
		for ik, iv in pairs(v) do
 			LF_ResetTile(context, iv)
		end
	end 
	--处理矩阵外
	for k, v in pairs(defs.reveal_tiles) do
		for ik, iv in pairs(v) do
 			ScriptLib.SetGadgetStateByConfigId(context, iv, 0)
		end
	end
	return 0
end

function LF_ResetTile(context, config_id)
	--处理还原格
	if nil ~= defs.reveal_tiles[config_id] then
		--对还原格控制的每个离散格，调下还原函数
		for k, v in ipairs(defs.reveal_tiles[config_id]) do
			LF_RemoveTileByMatchCfg(context, v)
		end
		--还原格恢复
		ScriptLib.SetGadgetStateByConfigId(context, config_id, 0)
	--处理移动格
	elseif nil ~= defs.movable_pos[config_id] then
		ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_ResetTile. MoveTile config_id@"..config_id)
		--移动格重置
		ScriptLib.KillEntityByConfigId(context, { config_id = config_id })
		ScriptLib.CreateGadget(context, { config_id = config_id })
		--移动格的连线
		if nil ~= defs.lines then
			ScriptLib.CreateGadget(context, {config_id = defs.lines[config_id]})
		end
	else
	--处理普通格(非起点 非初始隐藏格)
		if defs.starter ~= config_id and 0 ~= config_id and gadgets[config_id].state ~= GadgetState.Action03 then 
			ScriptLib.SetGadgetStateByConfigId(context, config_id, 0)	
		end
	end

	return 0
end

--设置当前在哪个方块
function LF_SetCurTileIndex(context, config_id)
	for i=1,#defs.matrix do
		for j=1,#defs.matrix[i] do								
			if defs.matrix[i][j] == config_id then
				ScriptLib.SetGroupTempValue(context, "cur_tile", i*10 + j, {})
			end		
		end
	end
	return 0
end

--检测两个方块是否是相邻方块
--返回值 0-不相邻 1-相邻 2-当前格
function LF_CheckTwoGadgetIsAdjacent(context, current_idx, config_step_in)

	local x = math.floor(current_idx/10)
	local y = current_idx%10
	ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_CheckTwoGadgetIsAdjacent. cur_x@"..x.." cur_y@"..y.." step_in@"..config_step_in)

	if defs.matrix[x][y] == config_step_in then
		ScriptLib.PrintContextLog(context, "## [DrawOneLine] LF_CheckTwoGadgetIsAdjacent. Step in a same tile.")
		return 2
	end
	if y > 1 then
		--上方
		if defs.matrix[x][y-1] == config_step_in then
			local new_idx = x*10+y-1
			ScriptLib.SetGroupTempValue(context, "cur_tile", new_idx, {})
			return 1
		end
	end
	if y < #defs.matrix[x] then
		--下方
		if defs.matrix[x][y+1] == config_step_in then
			local new_idx = x*10+y+1
			ScriptLib.SetGroupTempValue(context, "cur_tile", new_idx, {})
			return 1
		end
	end
	if x > 1 then
		--左侧
		if defs.matrix[x-1][y] == config_step_in then
			local new_idx = (x-1)*10+y
			ScriptLib.SetGroupTempValue(context, "cur_tile", new_idx, {})
			return 1
		end
	end
	if x < #defs.matrix then
		--右侧
		if defs.matrix[x+1][y] == config_step_in then
			local new_idx = (x+1)*10+y
			ScriptLib.SetGroupTempValue(context, "cur_tile", new_idx, {})		
			return 1
		end
	end

	return 0
end

function LF_CheckIsInTable(context, value, check_table)

	for i = 1, #check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end

--检查物件数量是否超标，超过数量则玩法逻辑不work。（锁dev后可以考虑不再调用）
function LF_CheckGadgetCount(context)
	local sum = 0
	for k, v in pairs(defs.matrix) do
		for ik, iv in pairs(v) do
			if iv ~= 0 then 
				sum = sum + 1
			end
		end
	end
	if sum > cfg.tile_limit then 
		ScriptLib.PrintContextLog(context, "## [DrawOneLine] #WARN# Gadget over use! Tell LD.")
		return 1
	end
	return 0
end

function LF_TryShowGuide(context)
	--在NewActivityPushTipsData配置中查找对应id, 并通过lua添加进活动中
	--重复添加已有push tips返回-1 成功添加返回0
	local ret = ScriptLib.TryRecordActivityPushTips(context, 2014011)
	if 0 == ret then
		local uid = ScriptLib.GetSceneOwnerUid(context)
		ScriptLib.ShowClientTutorial(context, 1182, {uid})
	end
	return 0
end

LF_Initialize_Group(triggers, suites)