defmodule MyApp.Base.Model do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema

      import Ecto.Changeset
      import Ecto.Query

      # Set all datetimes to UTC by default
      @timestamp_opts [type: :utc_datetime]
    end
  end
end

# Usage
defmodule XYZ do
  use MyApp.Base.Model
  
  schema "xyz" do
    # ...
  end
end
