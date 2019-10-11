defmodule MyApp.Base.Query do
  defmacro __using__(_) do
    quote do
      import Ecto.Query, warn: false
      alias MyApp.MyContext.{ModelOne, ModelTwo}
    end
  end
end

# Usage

defmodule ModelXRepository do
  use MyApp.Base.Query
  
  def all_model_on, do: ...
end
