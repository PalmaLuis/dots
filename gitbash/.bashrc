eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fzf --bash)"

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias t='touch'

alias gs='git status -s'

# ytm - Play a random song from a YouTube Music playlist
# DESCRIPTION:
#   Fetches a random video from a specified YouTube Music playlist
#   and opens it in the default web browser.
# USAGE:
#   ytm
# NOTES:
#   - Playlist must be public for yt-dlp to access it
#   - Requires yt-dlp to be installed and in PATH
#   - Windows-specific (uses 'start' command)
ytm(){
  local PLAYLIST_ID="PLYs708nM2aGNcFuarPE3b8T7toiIm1hkp&si=cwAhydU1krwLuUxL"
  local URL_BASE="https://music.youtube.com/watch?v="

  echo "Buscando cancion aleatoria de la playlist..."
  RANDOM_VIDEO_ID=$(yt-dlp --flat-playlist --get-id "https://www.youtube.com/playlist?list=$PLAYLIST_ID" 2>/dev/null | shuf -n 1)
  if [ -z "$RANDOM_VIDEO_ID" ]; then
        echo "❌ Error: No se pudo obtener una canción. Asegúrate de que 'yt-dlp' esté instalado y que la playlist sea pública."
        echo '$random_video_id:' "$RANDOM_VIDEO_ID"
        return 1
  fi

  FINAL_URL="${URL_BASE}${RANDOM_VIDEO_ID}"
  echo "✅ Abriendo canción: $FINAL_URL"

  # El comando 'start' abre el URL en el navegador predeterminado de Windows
  start "$FINAL_URL"
}