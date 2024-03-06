require 'nokogiri'
require 'open-uri'

def obter_letras(artist_name, song_title)
  # Construa a URL do site de letras de músicas (substitua 'site.com' pelo site real)
  url = "https://www.letras.mus.br/#{artist_name}/#{song_title}"

  begin
    # Use Nokogiri para analisar o HTML da página
    html = URI.open(url)
    doc = Nokogiri::HTML(html)

    # Modifique o seletor CSS de acordo com a estrutura da página do site
    letras = doc.css('.lyric-original').text

    # puts "Letra da música #{song_title} de #{artist_name}:"
    frases = letras.split("\n").map(&:strip).reject(&:empty?)

  rescue OpenURI::HTTPError => e
    puts "Erro ao acessar a URL: #{e.message}"
  end
end

# Substitua 'NomeArtista' e 'TituloMusica' pelos valores reais
obter_letras('taylor-swift', 'anti-hero')
