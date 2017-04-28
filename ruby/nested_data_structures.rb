# Nested Data Structure Featuring NBA Cities+Teams

nba = {
	chicago: {
		team_name: 'Bulls',
		best_player: 'Jimmy Butler',
		key_features: [
			'Benny the Bull',
			'The Luvabulls',
			'Michael Jordan',
			numbers: {
				championships: 6,
				player_number: 23
			}
		]
	},
	los_angelas: {
		team_name: [
			'Lakers',
			'Clippers'
		],
		best_player: 'Chris Paul',
		key_features: {
			celebs: [
				'Jack Nicholson',
				'Matt Damon',
				'Kobe Bryant',
				'Steve Balmer'
			],
			place: 'Staples Center',
			numbers: {
				championships: 16,
				player_number: [
					24,
					32,
					44
				]
			}
		}
	},
	new_york: {
		team_name: [
			'Knicks',
			'Nets'
		],
		best_player: 'Carmelo Anthony',
		key_features: [
			'Spike Lee',
			'Madison Square Garden',
			'Jay-Z',
			numbers: {
				championships: 4,
				player_number: [
					5,
					33
				]
			}
		]
	}
}

# Calling a few pieces from the nested data

puts 'Here is a key icon/figure who is associated with Chicago:'
p nba[:chicago][:key_features][2]

puts 'Here is where the famous Lakers play:'
p nba[:los_angelas][:key_features][:place]

puts 'And the player-number of the new Lakers Head of Operations Magic Johnson:'
p nba[:los_angelas][:key_features][:numbers][:player_number][1]

puts 'Here is the reversed name of Nets part-owner Jay-Z:'
p nba[:new_york][:key_features][2].reverse