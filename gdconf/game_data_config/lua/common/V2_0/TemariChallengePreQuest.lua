--2.0奥博伦派对-前置WQ，用于启动奥博伦的方向指示gallery

local Tri = {
    [1] = { name = "quest_start", config_id = 8000001, event = EventType.EVENT_QUEST_START, source = "7217604", condition = "", action = "action_quest_start", trigger_count = 0},
    [2] = { name = "challenge_success", config_id = 8000002, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "",condition = "",action = "action_challenge_success",trigger_count= 0},
	[3] = { name = "challenge_fail", config_id = 8000003, event = EventType.EVENT_CHALLENGE_FAIL, source = "",condition = "",action = "action_challenge_fail",trigger_count= 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

--------------------------------------------------------------------
--奥博伦前置任务启动的时候，起一个gallery
function action_quest_start(context,evt)
    ScriptLib.PrintContextLog(context,"TMRPre: Quest start!")
    LF_Start_Temari_Gallery(context)
    return 0
end

--奥博伦前置任务启动的时候，起一个gallery
function action_challenge_success(context,evt)
    
    ScriptLib.PrintContextLog(context,"TMRPre: challenge stops!")
    LF_Stop_Temari_Gallery(context)
    return 0
end

--奥博伦前置任务启动的时候，起一个gallery
function action_challenge_fail(context,evt)
    ScriptLib.PrintContextLog(context,"TMRPre: challenge stops!")
    LF_Stop_Temari_Gallery(context)
    return 0
end

--------------------------------------------------------------------
--启动藏球的方向指示gallery
function LF_Start_Temari_Gallery(context)
	local temari_pos = LF_Get_Temari_Pos(context)
    ScriptLib.SetPlayerStartGallery(context, 9001, {context.uid})
    ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=temari_pos.x,y=temari_pos.y,z=temari_pos.z}, {x=0,y=0,z=0})
end

--关闭藏球的方向指示gallery
function LF_Stop_Temari_Gallery(context)
    ScriptLib.StopGallery(context, 9001, true)
end

--返回当前关卡的手鞠球位置
function LF_Get_Temari_Pos(context)
    local temari_entity_id = ScriptLib.GetEntityIdByConfigId(context,defs.temari_id)
	local temari_pos = ScriptLib.GetPosByEntityId(context, temari_entity_id)
    ScriptLib.PrintContextLog(context,"TMR: Temari pos: "..temari_pos.x..","..temari_pos.y..","..temari_pos.z)
    return temari_pos
end


--server lua call---------------------------------------------------

--找球胜利，通过球自身的ability调用（调用时需要判定当前玩家主客机，如果是主机则无事发生）
function SLC_Find_Ball(context)
    ScriptLib.PrintContextLog(context,"TMR: Player has found the ball!")
    --不管任务是否成功，都要手动kill一次球确保特效触发正确
    ScriptLib.KillEntityByConfigId(context,{config_id = defs.temari_id})
    ScriptLib.StopChallenge(context,235,1)
    return 0
end
--------------------------------------------------------------------
Initialize()