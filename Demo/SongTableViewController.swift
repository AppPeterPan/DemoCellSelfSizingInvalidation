//
//  SongTableViewController.swift
//  Demo
//
//  Created by Peter Pan on 2022/12/16.
//

import UIKit

class SongTableViewController: UITableViewController {
    
    var songs = Song.loveSongs

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        tableView.selfSizingInvalidation = .enabledIncludingConstraints
    }
    
    // MARK: - Table view delegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! SongTableViewCell
        songs[indexPath.item].showLyrics = true
        cell.label.text = songs[indexPath.item].lyrics
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(SongTableViewCell.self)", for: indexPath) as! SongTableViewCell

        let song = songs[indexPath.row]
        cell.label.text = song.showLyrics ? song.lyrics : song.name
        return cell
    }
    
}
