class Student

attr_accessor :coach_name, :team_name, :team_players, :team_points

  def initialize(input_student_name, input_cohort_number, input_student_talk, input_student_favourite)
    @student_name = input_student_name
    @cohort_number = input_cohort_number
    @student_talk = input_student_talk
    @student_favourite = input_student_favourite

  end

  #GETTERS

  def student_name()
    return @student_name
  end

  def get_cohort_number()
    return @cohort_number
  end

  #SETTERS

  def set_student_name(new_student_name)
    @student_name = new_student_name
  end

  def set_cohort_number(new_cohort_number)
    @cohort_number = new_cohort_number
  end

  def student_talk()
  return @student_talk
  end

  def student_favourite()
    return "I heart #{@student_favourite}"
  end


end

class SportsTeam

  attr_accessor :coach_name, :team_name, :team_players, :team_points

  def initialize(input_coach_name, input_team_roster, input_team_name, input_team_points)
    @coach_name = input_coach_name
    @team_name = input_team_name
    @team_players = input_team_roster
    @team_points = input_team_points

  end



#GETTERS

def get_team_roster()
  return @team_players
end

def get_team_name()
  return @team_name
end

def get_coach_name()
  return @coach_name
end


  #SETTERS
  #
  # def set_replace_coach(new_input_coach_name)
  #   @coach_name = new_input_coach_name
  # end

  def add_new_player
    @team_players.push(0)
  end

  def roster_check(player)
    for player in player(@team_players)
      if player == name
        return true
      end
    end

  end


  def update_points()
    case points
    when @team_points == 0
      p "You lost ye sasij's"
    when @team_points == 1
      p "YASSS YE WON"
    end
end

end
