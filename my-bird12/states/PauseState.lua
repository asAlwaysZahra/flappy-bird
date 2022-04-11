CountdownState = Class{__includes = BaseState}

function PauseState:init() end

function PauseState:update(dt)
    if love.keyboard.wasPressed('p') then
        gStateMachine:change('pause')
    end
end

function PauseState:enter()
    scrolling = false
end

function PauseState:exit()
    scrolling = true
end

function PauseState:render()
    love.graphics.setFont(flappyFont)
    love.graphics.print('Stop', 0, 64, VIRTUAL_WIDTH, 'center')
end
