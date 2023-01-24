class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "We tie!"
    elsif @comp_move == "paper"
      @outcome = "We lost!"
    else
      @outcome = "We won!"
    end

    render({ :template => "game_templates/user_rock.html.erb" })
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "paper"
      @outcome = "We tie!"
    elsif @comp_move == "scissors"
      @outcome = "We lost!"
    else
      @outcome = "We won!"
    end

    render({ :template => "game_templates/user_paper.html.erb" })
  end

  def play_scissors
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "scissors"
      @outcome = "We tie!"
    elsif @comp_move == "rock"
      @outcome = "We lost!"
    else
      @outcome = "We won!"
    end

    render({ :template => "game_templates/user_scissors.html.erb" })
  end

  def home_page
    render({ :template => "game_templates/home_page.html.erb" })
  end
end
