defmodule FutApi.Fut.League do
  use Ecto.Schema

  schema "leagues" do
    field :name, :string
    field :image_url, :string
  end

  def changeset(league, attrs \\ %{}) do
    league
    |> Ecto.Changeset.cast(attrs, [:name, :image_url])
    |> Ecto.Changeset.validate_required([:name, :image_url])
  end
end
