class GraphController < ApplicationController
  def index
  end

  def data

    data = {
      "stations":
        [
          # this is a kluge. Duration for the root node sets the diameter
          { "call": "AI4QR", "duration": 0, "mode": " ", "time": " "},
          { "call": "N2NLY", "duration": 6, "mode": "data", "time": "05/12/2016 13:12" },
          { "call": "N2NLY", "duration": 60, "mode": "voice", "time": "07/04/2016 14:00"},
          { "call": "N2NLY", "duration": 30, "mode": "data", "time": "06/27/2016 01:13"}
        ],
      "qsos":
        [
          { "source": 0, "target": 1},
          { "source": 0, "target": 2},
          { "source": 0, "target": 3}
        ]
    }

    # something needs to change here
    respond_to do |format|
      format.json {
        render json: data
      }
    end
  end
end
