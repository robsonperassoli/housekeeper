defmodule FutApi.Fut.Player do
  use Ecto.Schema

  schema "players" do
    field :name, :string
    field :rating, :integer
  end

  def changeset(player, params \\ %{}) do
    player
    |> Ecto.Changeset.cast(params, [:id, :name, :rating])
    |> Ecto.Changeset.validate_required([:id, :name, :rating])
  end
end
