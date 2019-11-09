//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Miko James on 10/21/19.
//  Copyright © 2019 Miko James. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleView.text = movie["title"] as? String
        titleView.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
            
        posterView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
            
        backdropView.af_setImage(withURL: backdropUrl!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trailerUrl = URL(string: "https://api.themoviedb.org/3/movie/now_playing/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed&language=en-US")!
        
        let trailerViewController = segue.destination as! TrailerViewController
        trailerViewController.trailerUrl = trailerUrl
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
