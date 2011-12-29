require "rubygems"
require "bundler/setup"

require "logging"
require "test/unit"

$log = Logging::Logger["testlogger"]
$log.add_appenders(Logging::Appenders.stdout)

class AtExitConflictTest < Test::Unit::TestCase
  def test_at_exit_conflict
    $log.debug("test")
    assert(true)
  end
end
