require 'sinatra'
require 'puma'
require 'sinatra/reloader'

get('/') do
  "
  <p><a href=\"/rock\">Play Rock</a></p>
  <p><a href=\"/paper\">Play Paper</a></p>
  <p><a href=\"/scissors\">Play Scissors</a></p>
  <p><h1>Welcome to Rock-Paper-Scissors!</h1></p>
  <p>from <a href=\"https://en.wikipedia.org/wiki/Rock_paper_scissors\" target=\"_blank\">wikipedia</a></p>
  <p>Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.</p>
  <p>These shapes are:<p>
  <ul>
    <li>\"rock\" (a closed fist)</li>
    <li>\"paper\" (a flat hand)</li>
    <li>\"scissors\" (a fist with the index and middle fingers extended, forming a V)</li>
  </ul>
  <p>A player who decides to play rock will beat another player who has chosen scissors (\"rock crushes scissors\" or sometimes \"blunts scissors\"), but will lose to one who has played paper (\"paper covers rock\"); a play of paper will lose to a play of scissors (\"scissors cut[s] paper\"). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie.</p>

  <table border=\"1\">
  <tbody><tr>
    <td rowspan=\"2\" colspan=\"2\"></td>
    <td colspan=\"3\">and they play...</td>
  </tr>

  <tr>
    <td>Rock</td>
    <td>Paper</td>
    <td>Scissors</td>
  </tr>

  <tr>
    <td rowspan=\"3\">If we play...</td>
    <td>Rock</td>
    <td>We tie</td>
    <td>We lose</td>
    <td>We win</td>
  </tr>

  <tr>
    <td>Paper</td>
    <td>We win</td>
    <td>We tie</td>
    <td>We lose</td>
  </tr>

  <tr>
    <td>Scissors</td>
    <td>We lose</td>
    <td>We win</td>
    <td>We tie</td>
  </tr>
</tbody></table>

  <p>Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with \"rock\" sometimes being called \"stone\".</p>
  <img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png\">
  <p>A chart showing how the three game elements interact</p>
  <img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg\">
  <p>Kitsune-ken was a popular Japanese rock–paper–scissors variant.</p>
  <img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg\">
  <p>Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi).</p>

  "
end

get("/rock") do
  options = ["rock", "paper", "scissors"]
  hand = options.sample
  if hand == "rock"
    outcome = "tied"
  elsif hand == "paper"
    outcome = "lost"
  else
    outcome = "won"
  end

  "
  <p><a href=\"/rock\">Play Rock</a></p>
  <p><a href=\"/paper\">Play Paper</a></p>
  <p><a href=\"/scissors\">Play Scissors</a></p>
  <h1>We played rock!<h1>
  <h1>They played #{hand}!</h1>
  <h1>We #{outcome}!</h1>
  <p><a href=\"/\">Rules</a></p>
  "
end

get('/paper') do
  options = ["rock", "paper", "scissors"]
  hand = options.sample
  if hand == "rock"
    outcome = "won"
  elsif hand == "paper"
    outcome = "tied"
  else
    outcome = "lost"
  end

  "
  <p><a href=\"/rock\">Play Rock</a></p>
  <p><a href=\"/paper\">Play Paper</a></p>
  <p><a href=\"/scissors\">Play Scissors</a></p>
  <h1>We played rock!<h1>
  <h1>They played #{hand}!</h1>
  <h1>We #{outcome}!</h1>
  <p><a href=\"/\">Rules</a></p>
  "
end

get('/scissors') do
  options = ["rock", "paper", "scissors"]
  hand = options.sample
  if hand == "rock"
    outcome = "lost"
  elsif hand == "paper"
    outcome = "won"
  else
    outcome = "tied"
  end

  "
  <p><a href=\"/rock\">Play Rock</a></p>
  <p><a href=\"/paper\">Play Paper</a></p>
  <p><a href=\"/scissors\">Play Scissors</a></p>
  <h1>We played rock!<h1>
  <h1>They played #{hand}!</h1>
  <h1>We #{outcome}!</h1>
  <p><a href=\"/\">Rules</a></p>
  "
end
