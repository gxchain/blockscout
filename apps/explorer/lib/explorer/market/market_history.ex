defmodule Explorer.Market.MarketHistory do
  @moduledoc """
  Represents market history of configured coin to USD.
  """

  use Explorer.Schema

  schema "market_history" do
    field(:closing_price, :decimal)
    field(:date, :date)
    field(:opening_price, :decimal)
    field(:market_cap, :decimal)
    field(:tvl, :decimal)
  end

  @typedoc """
  The recorded values of the configured coin to USD for a single day.

   * `:closing_price` - Closing price in USD.
   * `:date` - The date in UTC.
   * `:opening_price` - Opening price in USD.
   * `:market_cap` - Market cap in USD.
   * `:market_cap` - TVL in USD.
  """
  @type t :: %__MODULE__{
          closing_price: Decimal.t() | nil,
          date: Date.t(),
          opening_price: Decimal.t() | nil,
          market_cap: Decimal.t() | nil,
          tvl: Decimal.t() | nil
        }
end
