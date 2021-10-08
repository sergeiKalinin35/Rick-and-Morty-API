//
//  ViewController.swift
//  Rick and Morty API
//
//  Created by Sergey on 07.10.2021.
//

import UIKit

class ViewController: UIViewController {
    

@IBOutlet  var collectionView: UICollectionView!
    
    
    
    
    
    
    
    
    
    
    let images  = [
        UIImage(named: "image1"),
        UIImage(named: "image2"),
        UIImage(named: "image3"),
        UIImage(named: "image4"),
        UIImage(named: "image5"),
        UIImage(named: "image6"),
        UIImage(named: "image7"),
        UIImage(named: "image2"),
        UIImage(named: "image3"),
        UIImage(named: "image4"),
        UIImage(named: "image5"),
        UIImage(named: "image6"),
        UIImage(named: "image7"),
        UIImage(named: "image1"),
        UIImage(named: "image2"),
        UIImage(named: "image3"),
        UIImage(named: "image4"),
        UIImage(named: "image5"),
        UIImage(named: "image6"),
        UIImage(named: "image7"),
        UIImage(named: "image2"),
        UIImage(named: "image3"),
        UIImage(named: "image4"),
        UIImage(named: "image5"),
        UIImage(named: "image6"),
        UIImage(named: "image7")
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(collectionView)
        
        
        
        
        collectionView.frame = view.bounds
        collectionView.dataSource = self
        collectionView.delegate = self
        
    
       
        setupNavigationBar()
        
    }
    
    func setupNavigationBar() {


     //   navigationController?.navigationBar.barStyle = .black// темный фон бара
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]//заголовок белый все темное часы и тд
        
        
        
        
        navigationController?.navigationBar.tintColor = .white // кнопка назад белая
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)// убираем фон бара он берет фон вью
        navigationController?.navigationBar.shadowImage = UIImage() //убираем полоску в баре серую
        
        
        
        
        
        
        
       // MARK: - Logo Nav.Bar
        
                let navController = navigationController!

                let image = UIImage(named: "Rick") //Your logo url here
                let imageView = UIImageView(image: image)

                let bannerWidth = navController.navigationBar.frame.size.width
                let bannerHeight = navController.navigationBar.frame.size.height

                let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
                let bannerY = bannerHeight / 2 - (image?.size.height)! / 2

                imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
                imageView.contentMode = .scaleAspectFit

                navigationItem.titleView = imageView

       

    }
    
 }






extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = images[indexPath.item]
        
        
        
        
        return cell
        
    }
    
    
    // MARK: -  Size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: (view.frame.size.width/3)-3,
            height: (view.frame.size.width/3)-3
        )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
    }
    

}
    



