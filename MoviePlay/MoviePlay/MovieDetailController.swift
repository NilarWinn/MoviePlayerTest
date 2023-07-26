//
//  MovieDetailController.swift
//  MoviePlay
//
//  Created by NilarWin on 26/07/2023.
//

import UIKit

class MovieDetailController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playMovie(_ sender: Any) {
        let vc = MoviePlayView()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
