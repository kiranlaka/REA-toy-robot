# frozen_string_literal: true

# Which direction the Robot is facing.
class Direction
  X_MOVE = 0
  Y_MOVE = 0

  def self.right; end

  def self.left; end
end

# Robot is facing north.
class North < Direction
  Y_MOVE = 1

  def self.right
    East
  end

  def self.left
    West
  end
end

# Robot is facing south.
class South < Direction
  Y_MOVE = -1

  def self.right
    West
  end

  def self.left
    East
  end
end

# Robot is facing east.
class East < Direction
  X_MOVE = 1

  def self.right
    South
  end

  def self.left
    North
  end
end

# Robot is facing west.
class West < Direction
  X_MOVE = -1

  def self.right
    North
  end

  def self.left
    South
  end
end
