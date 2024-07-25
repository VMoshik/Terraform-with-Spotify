terraform {
  required_providers {
    spotify = {
      source = "conradludgate/spotify"
      version = "0.2.7"
    }
  }
}

provider "spotify" {
  # Configuration options
  api_key = var.api_key
}
data "spotify_search_track" "Anirudh" {
  artist = "Anirudh"
}

resource "spotify_playlist" "Anirudh" {
 name = "Anirudh Ravichandran"
 tracks = [data.spotify_search_track.Anirudh.tracks[0].id,
   data.spotify_search_track.Anirudh.tracks[1].id,
  data.spotify_search_track.Anirudh.tracks[2].id,
  data.spotify_search_track.Anirudh.tracks[3].id,
  data.spotify_search_track.Anirudh.tracks[4].id,
  data.spotify_search_track.Anirudh.tracks[5].id,
  data.spotify_search_track.Anirudh.tracks[6].id]

}
