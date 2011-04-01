import Qt 4.7

MainView {
	id: welcomeView

	Rectangle {
		color: "white"
		opacity: 0.9
		width: parent.width - 10
		height: welcomeText.height + 10
		radius: 5
		DText {
			id: welcomeText
			font.pointSize: 14
			width: parent.width - 16
			wrapMode: "WordWrap"
			anchors.centerIn: parent
			text:
				"<b>Evolution RTS</b> was created by Ben Woods and is currently developed by Forboding Angel (Ben Woods) as well as the official development team members. In addition, various developers from the Spring Project community have contributed in many ways.<br/><br/>"
				+"The game revolves around fast thinking and micro-management as well as macro-management gameplay. Evolution RTS is free for download and play, boasting superb effects and visuals as well as very solid gameplay.<br/><br/>"
				+"EvoRTS as mentioned before was originated by Ben Woods in an attempt to create an entirely unique Real Time Strategy game, incorporating ideas of his own as well as the members of the development team, including ideas taken from past extremely popular RTS games (e.g. Command & Conquer, StarCraft, Total Annihilation, etc). It is designed to be friendly to newcomers, but is still a work in progress. There are test builds available via the download page. These test builds are quite stable and playable.<br/><br/>"
				+"At current there is a single faction called the “Outer Colonies”. This faction has various technologies available to it, including Hovercraft, Amphibious units, All-Terrain units, Aircraft and Base structures. The broad scheme of the gameplay is still in development, however the basis is entirely intact. At the moment, the main goals are continuing the development of the gameplay, whether that be adding new units, adding new game modes, or expanding visuals and effects.<br/><br/>"
				+"Evolution RTS also has some very powerful tools available for mappers, with a huge repository of map features (trees, buildings, wreaks, etc) that can be placed on a map simply by clicking on them. The documentation for the game is largely incomplete, but a user manual is being created, and seeks to help with basic understanding of how the game works.<br/><br/>"
				+"Our source material is public (Open Source), and there is a link in the right hand sidebar to view our repository. Please be mindful of the license terms. When a final release of Evolution RTS is reached, the development team intends to make ALL of the source available to use in other projects.<br/><br/>"
				+"For more information, you may feel free to either post in our forums, or join the #evolution channel in the multiplayer lobby.<br/>"
				+"Thanks, and we hope that you enjoy our game,<br/><br/>"
				+"-The Evolution RTS Development Team"
		}
	}

	state: "Onscreen"
}
