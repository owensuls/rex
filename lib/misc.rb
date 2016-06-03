# Testing miscellaneous Ruby features
class Misc
  def compareStrings
    compareResult = 0

    if 'Test string'.to_s.match('Test string')
      compareResult = 0
    else
      compareResult = 1
    end

    return compareResult
  end

  def experimentPipe
    experiment ||= "My Experiment"
    return experiment
  end

  def experimentWithOr
    #unless "expirmentWithOr".to_s.match('experimentWithOr' or 'somethingElse')
    unless 'experimentWithOr'.to_s.match('experimentWithOr' || 'somethingElse')
      return 'Not matched'
    else
      return 'Matched'
    end
  end
end
