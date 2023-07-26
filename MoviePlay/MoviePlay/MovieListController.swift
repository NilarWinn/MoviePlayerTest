//
//  MovieListController.swift
//  MoviePlay
//
//  Created by NilarWin on 26/07/2023.
//

import Foundation
import UIKit

class MovieListController: UIViewController {
    @IBOutlet weak var horizontallyScrollableStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for _ in 0...10 {
            if let dayView = Bundle.main.loadNibNamed("MovieItemView", owner: nil, options: nil)!.first as? MovieItemView {
                horizontallyScrollableStackView.addArrangedSubview(dayView)
                let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.clickAction(sender:)))
                dayView.addGestureRecognizer(gesture)

            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func clickAction(sender : UITapGestureRecognizer) {
        let vc = MovieDetailController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
